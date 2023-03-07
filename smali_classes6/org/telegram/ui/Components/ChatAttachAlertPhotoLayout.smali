.class public Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.source "ChatAttachAlertPhotoLayout.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;
    }
.end annotation


# static fields
.field private static cameraPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static lastImageId:I

.field private static mediaFromExternalCamera:Z

.field private static selectedPhotos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static selectedPhotosOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

.field additionCloseCameraY:F

.field private alertOnlyOnce:I

.field private animateCameraValues:[I

.field animationClipBottom:F

.field animationClipLeft:F

.field animationClipRight:F

.field animationClipTop:F

.field private animationIndex:I

.field private cameraAnimationInProgress:Z

.field private cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

.field protected cameraCell:Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

.field private cameraDrawable:Landroid/graphics/drawable/Drawable;

.field cameraExpanded:Z

.field protected cameraIcon:Landroid/widget/FrameLayout;

.field private cameraInitAnimation:Landroid/animation/AnimatorSet;

.field private cameraOpenProgress:F

.field private cameraOpened:Z

.field private cameraPanel:Landroid/widget/FrameLayout;

.field private cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field private cameraPhotoRecyclerViewIgnoreLayout:Z

.field protected cameraView:Lorg/telegram/messenger/camera/CameraView;

.field private cameraViewLocation:[F

.field private cameraViewOffsetBottomY:F

.field private cameraViewOffsetX:F

.field private cameraViewOffsetY:F

.field private cameraZoom:F

.field private canSaveCameraPreview:Z

.field private cancelTakingPhotos:Z

.field private checkCameraWhenShown:Z

.field private compressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private counterTextView:Landroid/widget/TextView;

.field private currentPanTranslationY:F

.field private currentSelectedCount:I

.field private deviceHasGoodCamera:Z

.field private documentsEnabled:Z

.field private dragging:Z

.field public dropDown:Landroid/widget/TextView;

.field private dropDownAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field private dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private dropDownDrawable:Landroid/graphics/drawable/Drawable;

.field private flashAnimationInProgress:Z

.field private flashModeButton:[Landroid/widget/ImageView;

.field forceDarkTheme:Z

.field private galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field private gridExtraSpace:I

.field public gridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private headerAnimator:Landroid/view/ViewPropertyAnimator;

.field private hitRect:Landroid/graphics/Rect;

.field private ignoreLayout:Z

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private isHidden:Z

.field private itemRangeSelector:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

.field private itemSize:I

.field private itemsPerRow:I

.field private lastItemSize:I

.field private lastNotifyWidth:I

.field private lastY:F

.field private layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private loading:Z

.field private maybeStartDraging:Z

.field private mediaEnabled:Z

.field private noCameraPermissions:Z

.field private noGalleryPermissions:Z

.field private photoEnabled:Z

.field private photoViewerProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private pinchStartDistance:F

.field private pressed:Z

.field protected previewItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private recordTime:Landroid/widget/TextView;

.field private requestingPermissions:Z

.field private selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field private shouldSelect:Z

.field private showAvatarConstructor:Z

.field private shutterButton:Lorg/telegram/ui/Components/ShutterButton;

.field private spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private switchCameraButton:Landroid/widget/ImageView;

.field private takingPhoto:Z

.field private tooltipTextView:Landroid/widget/TextView;

.field private videoEnabled:Z

.field private videoRecordRunnable:Ljava/lang/Runnable;

.field private videoRecordTime:I

.field private viewPosition:[I

.field private zoomControlAnimation:Landroid/animation/AnimatorSet;

.field private zoomControlHideRunnable:Ljava/lang/Runnable;

.field private zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

.field private zoomWas:Z

.field private zooming:Z


# direct methods
.method public static synthetic $r8$lambda$5YubpqtbylvruTqri_WVp2PH3N4(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C5Arv4_yUMUuUml-OtvUZnHjmiM(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$hideCamera$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$CDIVz_eT-UCkCR1_lDx9B7aMPww(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onShow$21(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GNgav5HkVzKqDDR6GswPpIhEWls(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Ljava/util/ArrayList;IILorg/telegram/ui/ChatActivity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$2(Ljava/util/ArrayList;IILorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ICuOMKeaB36GZJIhthaClKzDw7w(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onMenuItemClick$17(ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JMY5KhmimlOWlu2sV116e3q63O8(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JY37shHNTb7jdOOLgYTymR3nUmA(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$6(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$LfZF_0w2X_SXONJz4KyRfQV8crE(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$applyCameraViewPosition$16(Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M5Sqt27QWlOX2ir9cp4qb41IrDA(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MMLTn2gHFHn84KzA9y8kP2X4gwA(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onMenuItemClick$18(ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MyRe_ssDrsH1EmOvpkyDKwIV5BI(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$applyCameraViewPosition$15(Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Px2Cx28Oigjny00UfxQKcP2gL6c(Lorg/telegram/messenger/MediaController$PhotoEntry;ZLandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$setCurrentSpoilerVisible$0(Lorg/telegram/messenger/MediaController$PhotoEntry;ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UdO3q9u3pPwlmAA4O3bIEVRTx7M(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onHide$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$VIgesG-p5jxeGixsEUX6lTtr1GU(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$showZoomControls$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$W7UTu96du_wj0fyw5Yj1CEyVCzQ(Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$updateAlbumsDropDown$11(Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$b3QeGsyBaJc_TdBXKB4qOB3ZHX8(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$showZoomControls$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$dTqv2nE_9tw40d0ZC2KTx_VH14g(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;JLorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$showAvatarConstructorFragment$10(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;JLorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e7agy51n-rYdVpTqJmFyWacud5M(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$3(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$eZtjtWMV4vBfp6W8ZQcmAgggIS8(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onMenuItemClick$19(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$jnnm5U3lMx6yO6CWFJQpXQOGKWo(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$4(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$onnyExbnWLBveykSMbjDdknj6jA(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onPreMeasure$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$vwFxJTbghhCf9k5rDJkvt2NaVYE(Ljava/util/List;ZLandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onMenuItemClick$20(Ljava/util/List;ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zRX8sBuZrIA_7lu0uLzavVw6M2s(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$9(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zo5V8e0I0LfrzSK1G5dzkXZWaVs(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 182
    sput v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 26

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v0, p1

    move-object/from16 v9, p4

    .line 567
    invoke-direct {v7, v0, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v10, 0x2

    new-array v1, v10, [Landroid/widget/ImageView;

    .line 154
    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    new-array v1, v10, [F

    .line 156
    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    new-array v1, v10, [I

    .line 157
    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->viewPosition:[I

    const/4 v11, 0x5

    new-array v1, v11, [I

    .line 165
    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animateCameraValues:[I

    .line 168
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 195
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hitRect:Landroid/graphics/Rect;

    const/16 v12, 0x50

    .line 204
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    .line 205
    iput v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastItemSize:I

    const/4 v13, 0x3

    .line 206
    iput v13, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    const/4 v14, 0x1

    .line 221
    iput-boolean v14, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loading:Z

    const/4 v15, -0x1

    .line 235
    iput v15, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationIndex:I

    .line 350
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->photoViewerProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move/from16 v1, p3

    .line 568
    iput-boolean v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->forceDarkTheme:Z

    .line 569
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    invoke-virtual {v1, v7, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 570
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    invoke-virtual {v1, v7, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 571
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v6

    .line 572
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showAvatarConstructor:Z

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->instant_camera:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    .line 576
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    .line 577
    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$2;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v12, v4

    move/from16 v4, v16

    const/4 v15, 0x0

    move/from16 v5, v17

    move-object/from16 v18, v6

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v12, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 584
    invoke-virtual {v12, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 585
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v19, -0x2

    const/16 v20, -0x1

    const/16 v21, 0x33

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x40

    const/16 v22, 0x40

    goto :goto_1

    :cond_1
    const/16 v2, 0x38

    const/16 v22, 0x38

    :goto_1
    const/16 v23, 0x0

    const/16 v24, 0x28

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v15, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 586
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    .line 589
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 590
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 591
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 592
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setLines(I)V

    .line 593
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 594
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 595
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    const-string v1, "dialogTextBlack"

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 596
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ChatGallery:I

    const-string v3, "ChatGallery"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_arrow_drop_down:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    .line 599
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 600
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 601
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    const/16 v3, 0xa

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v15, v15, v4, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 602
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v4, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x10

    const/16 v22, 0x10

    const/16 v24, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 604
    invoke-virtual {v7, v15}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    .line 606
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_filehq:I

    sget v5, Lorg/telegram/messenger/R$string;->SendWithoutCompression:I

    const-string v6, "SendWithoutCompression"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v14, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->compressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 607
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_ungroup:I

    sget v5, Lorg/telegram/messenger/R$string;->SendWithoutGrouping:I

    const-string v6, "SendWithoutGrouping"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v15, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 608
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_spoiler:I

    sget v5, Lorg/telegram/messenger/R$string;->EnablePhotoSpoiler:I

    const-string v6, "EnablePhotoSpoiler"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v10, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 609
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_openin:I

    sget v5, Lorg/telegram/messenger/R$string;->OpenInExternalApp:I

    const-string v6, "OpenInExternalApp"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v13, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 610
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addGap(I)Landroid/view/View;

    .line 611
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_view_file:I

    sget v5, Lorg/telegram/messenger/R$string;->AttachMediaPreviewButton:I

    const-string v6, "AttachMediaPreviewButton"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v11, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->previewItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 612
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setFitSubItems(Z)V

    .line 614
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$3;

    invoke-direct {v0, v7, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 637
    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-direct {v4, v7, v8, v14}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;Z)V

    iput-object v4, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 638
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->createCache()V

    .line 639
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 640
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 641
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 642
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 643
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string v5, "dialogScrollGlow"

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 644
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, -0x1

    invoke-static {v5, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v7, v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$4;

    invoke-direct {v5, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 673
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$5;

    iget v5, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    invoke-direct {v0, v7, v8, v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;I)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 698
    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$6;

    invoke-direct {v5, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 707
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 708
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda21;

    invoke-direct {v5, v7, v9}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 815
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda22;

    invoke-direct {v5, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 827
    new-instance v0, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$7;

    invoke-direct {v5, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;-><init>(Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$RecyclerViewItemRangeSelectorDelegate;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemRangeSelector:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    .line 859
    iget-object v5, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 861
    new-instance v0, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v0, v8, v4, v9}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 862
    sget v5, Lorg/telegram/messenger/R$string;->NoPhotos:I

    const-string v6, "NoPhotos"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 863
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 864
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextSize(I)V

    .line 865
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v6, -0x2

    const/4 v12, -0x1

    invoke-static {v12, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v7, v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 867
    iget-boolean v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loading:Z

    if-eqz v0, :cond_2

    .line 868
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    goto :goto_2

    .line 870
    :cond_2
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 873
    :goto_2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v14}, Landroid/graphics/Paint;-><init>(I)V

    const v6, -0x25a9b3

    .line 874
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 875
    new-instance v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$8;

    invoke-direct {v6, v7, v8, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;Landroid/graphics/Paint;)V

    iput-object v6, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 903
    invoke-static {v6, v15, v0, v15}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 904
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$drawable;->system:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 905
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v12, 0x66000000

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v12, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 906
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v0, v14, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 907
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 908
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setAlpha(F)V

    .line 909
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    const/4 v13, -0x1

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 910
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    const/16 v13, 0x18

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v0, v13, v4, v3, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 911
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x31

    const/16 v22, 0x0

    const/16 v23, 0x10

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v4, v18

    invoke-virtual {v4, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 913
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$9;

    invoke-direct {v0, v7, v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    .line 950
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 951
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 952
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    const/16 v11, 0x7e

    const/16 v13, 0x53

    const/4 v6, -0x1

    invoke-static {v6, v11, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v0, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 954
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    .line 955
    sget v11, Lorg/telegram/messenger/R$drawable;->photos_rounded:I

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 956
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 957
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 958
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 959
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setPivotX(F)V

    .line 960
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setPivotY(F)V

    .line 961
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 962
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$drawable;->photos_arrow:I

    invoke-virtual {v0, v15, v15, v2, v15}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 963
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 964
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v2, v15, v5, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 965
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    const/16 v18, -0x2

    const/16 v19, 0x26

    const/16 v20, 0x33

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x74

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 966
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda1;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 974
    new-instance v0, Lorg/telegram/ui/Components/ZoomControlView;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/ZoomControlView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    .line 975
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 976
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setAlpha(F)V

    .line 977
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    const/16 v19, 0x32

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 978
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda23;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ZoomControlView;->setDelegate(Lorg/telegram/ui/Components/ZoomControlView$ZoomControlViewDelegate;)V

    .line 985
    new-instance v0, Lorg/telegram/ui/Components/ShutterButton;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/ShutterButton;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    .line 986
    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    const/16 v5, 0x54

    invoke-static {v5, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 987
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;

    invoke-direct {v2, v7, v9, v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ShutterButton;->setDelegate(Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;)V

    .line 1146
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    invoke-virtual {v0, v14}, Landroid/view/View;->setFocusable(Z)V

    .line 1147
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrShutter:I

    const-string v5, "AccDescrShutter"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1149
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    .line 1150
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1151
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    const/16 v5, 0x15

    const/16 v6, 0x30

    invoke-static {v6, v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1152
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda0;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1170
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrSwitchCamera:I

    const-string v5, "AccDescrSwitchCamera"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v10, :cond_3

    .line 1173
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v5

    .line 1174
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1175
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1176
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v5

    const/16 v11, 0x33

    invoke-static {v6, v6, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v2, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1177
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda3;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1209
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "flash mode "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1212
    :cond_3
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    .line 1213
    invoke-virtual {v0, v14, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1214
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1215
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->TapForVideo:I

    const-string v5, "TapForVideo"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1216
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    const v2, 0x40555547

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const v5, 0x3f2a7efa    # 0.666f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4c000000    # 3.3554432E7f

    invoke-virtual {v0, v2, v12, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1217
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v5, v15, v2, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1218
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    const/16 v18, -0x2

    const/16 v19, -0x2

    const/16 v20, 0x51

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x10

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1220
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$13;

    invoke-direct {v0, v7, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$13;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1229
    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1230
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-direct {v2, v7, v8, v15}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;Z)V

    iput-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1231
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->createCache()V

    .line 1232
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1233
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v15, v3, v15}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1234
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1235
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1236
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 1237
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1238
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1239
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x50

    const/4 v2, -0x1

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1240
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$14;

    invoke-direct {v0, v7, v8, v15, v15}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$14;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;IZ)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1246
    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1247
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda20;->INSTANCE:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda20;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)Lorg/telegram/messenger/MediaController$PhotoEntry;
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getPhotoEntryAtPosition(I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .line 103
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I
    .locals 0

    .line 103
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I
    .locals 0

    .line 103
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shouldSelect:Z

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I
    .locals 0

    .line 103
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->alertOnlyOnce:I

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)I
    .locals 0

    .line 103
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->alertOnlyOnce:I

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/messenger/MediaController$PhotoEntry;)Z
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkSendMediaEnabled(Lorg/telegram/messenger/MediaController$PhotoEntry;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ShutterButton;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)[Landroid/widget/ImageView;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->takingPhoto:Z

    return p0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->takingPhoto:Z

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoEnabled:Z

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->requestingPermissions:Z

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I
    .locals 0

    .line 103
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordTime:I

    return p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)I
    .locals 0

    .line 103
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordTime:I

    return p1
.end method

.method static synthetic access$2708(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I
    .locals 2

    .line 103
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordTime:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Ljava/lang/Runnable;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->resetRecordState()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/messenger/MediaController$PhotoEntry;I)I
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->addToSelectedPhotos(Lorg/telegram/messenger/MediaController$PhotoEntry;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->photoEnabled:Z

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ZoomControlView;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ZZ)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showZoomControls(ZZ)V

    return-void
.end method

.method static synthetic access$3300()Z
    .locals 1

    .line 103
    sget-boolean v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaFromExternalCamera:Z

    return v0
.end method

.method static synthetic access$3302(Z)Z
    .locals 0

    .line 103
    sput-boolean p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaFromExternalCamera:Z

    return p0
.end method

.method static synthetic access$3410()I
    .locals 2

    .line 103
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    return v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerViewIgnoreLayout:Z

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    return p0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    return p1
.end method

.method static synthetic access$3702(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;F)F
    .locals 0

    .line 103
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    return p1
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cancelTakingPhotos:Z

    return p0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cancelTakingPhotos:Z

    return p1
.end method

.method static synthetic access$3900()Ljava/util/ArrayList;
    .locals 1

    .line 103
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/ArrayList;
    .locals 1

    .line 103
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openCamera(Z)V

    return-void
.end method

.method static synthetic access$4302(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I
    .locals 0

    .line 103
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationIndex:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAnimationInProgress:Z

    return p0
.end method

.method static synthetic access$4502(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F
    .locals 0

    .line 103
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetX:F

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F
    .locals 0

    .line 103
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpenProgress:F

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F
    .locals 0

    .line 103
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCameraFlashModeIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraInitAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraInitAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$5102(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->canSaveCameraPreview:Z

    return p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isHidden:Z

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return-object p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showAvatarConstructor:Z

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I
    .locals 0

    .line 103
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridExtraSpace:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    return p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noGalleryPermissions:Z

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object p0
.end method

.method static synthetic access$6502(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pauseCameraPreview()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;IZ)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCurrentSpoilerVisible(IZ)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->resumeCameraPreview()V

    return-void
.end method

.method private addToSelectedPhotos(Lorg/telegram/messenger/MediaController$PhotoEntry;I)I
    .locals 2

    .line 1438
    iget v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1439
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1440
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1443
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    .line 1445
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updatePhotosCounter(Z)V

    .line 1446
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateCheckedPhotoIndices()V

    if-ltz p2, :cond_1

    .line 1448
    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController$PhotoEntry;->reset()V

    .line 1449
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->photoViewerProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-interface {p1, p2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->updatePhotoAtIndex(I)V

    :cond_1
    return v0

    .line 1453
    :cond_2
    sget-object p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 1455
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updatePhotosCounter(Z)V

    const/4 p1, -0x1

    return p1
.end method

.method private applyCameraViewPosition()V
    .locals 5

    .line 2734
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_4

    .line 2735
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 2736
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2737
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aget v1, v1, v2

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentPanTranslationY:F

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2739
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2740
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aget v1, v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    add-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentPanTranslationY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2741
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    .line 2745
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-nez v1, :cond_2

    .line 2746
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraView;->setClipTop(I)V

    .line 2747
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetBottomY:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraView;->setClipBottom(I)V

    .line 2748
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2749
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v2, v0, :cond_1

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v2, v0, :cond_2

    .line 2750
    :cond_1
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2751
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2752
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2754
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2762
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    int-to-float v1, v0

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v0, v0

    .line 2763
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    sub-float/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetBottomY:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 2765
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2766
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v3, v0, :cond_3

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v3, v1, :cond_4

    .line 2767
    :cond_3
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2768
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2769
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2771
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method private checkSendMediaEnabled(Lorg/telegram/messenger/MediaController$PhotoEntry;)Z
    .locals 3

    .line 1423
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v0, :cond_0

    .line 1424
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->GlobalAttachVideoRestricted:I

    const-string v2, "GlobalAttachVideoRestricted"

    .line 1425
    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1424
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1426
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return v1

    .line 1428
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->photoEnabled:Z

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez p1, :cond_1

    .line 1429
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->GlobalAttachPhotoRestricted:I

    const-string v2, "GlobalAttachPhotoRestricted"

    .line 1430
    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1429
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1431
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private clearSelectedPhotos()V
    .locals 5

    .line 1461
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->EnablePhotoSpoiler:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 1462
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$raw;->photo_spoiler:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setAnimatedIcon(I)V

    .line 1463
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 1464
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1465
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1466
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1467
    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController$PhotoEntry;->reset()V

    goto :goto_0

    .line 1469
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1470
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1472
    :cond_1
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 1473
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_4

    .line 1474
    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1475
    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1476
    iget-object v3, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1477
    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1479
    :cond_2
    iget-object v3, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1480
    new-instance v3, Ljava/io/File;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1483
    :cond_4
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1485
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 1486
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .locals 6

    .line 1919
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1921
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1922
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->getClipLayoutBottom()F

    move-result v5

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    goto :goto_1

    .line 1925
    :cond_0
    instance-of v3, v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v3, :cond_1

    .line 1926
    check-cast v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 1927
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getOpenInSubItemId()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method private getPhotoEntryAtPosition(I)Lorg/telegram/messenger/MediaController$PhotoEntry;
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 536
    :cond_0
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 538
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    return-object p1

    :cond_1
    sub-int/2addr p1, v1

    .line 541
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 542
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public static getSendWithoutGroupingSubItemId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$applyCameraViewPosition$15(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    .line 2755
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_0

    .line 2756
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$applyCameraViewPosition$16(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    .line 2772
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2773
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$hideCamera$14()V
    .locals 2

    .line 2280
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2281
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2282
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    .line 2283
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 586
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/util/ArrayList;IILorg/telegram/ui/ChatActivity;)V
    .locals 7

    .line 798
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->photoViewerProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    .line 800
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer;->setAvatarFor(Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;)V

    .line 801
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->captionForAllMedia()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 802
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentTextView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer;->setCaption(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;IFF)V
    .locals 8

    .line 709
    iget-boolean p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    if-eqz p4, :cond_16

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p4, p4, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p4, :cond_16

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p4

    if-nez p4, :cond_0

    goto/16 :goto_5

    .line 712
    :cond_0
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x17

    const/4 v0, 0x4

    if-lt p4, p5, :cond_2

    .line 713
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->access$5500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object p5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne p4, p5, :cond_1

    if-nez p3, :cond_1

    iget-boolean p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    if-eqz p4, :cond_1

    .line 715
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "android.permission.CAMERA"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x12

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 720
    :cond_1
    iget-boolean p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noGalleryPermissions:Z

    if-eqz p4, :cond_2

    .line 722
    :try_start_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    :cond_2
    const/4 p4, 0x1

    if-nez p3, :cond_5

    .line 729
    iget-object p5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eq p5, v1, :cond_3

    goto :goto_0

    .line 806
    :cond_3
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->inappCamera:Z

    if-eqz p1, :cond_4

    .line 807
    invoke-direct {p0, p4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openCamera(Z)V

    goto/16 :goto_5

    .line 809
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 810
    invoke-interface/range {v0 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIZLjava/lang/String;Z)V

    goto/16 :goto_5

    .line 730
    :cond_5
    :goto_0
    iget-object p5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne p5, v1, :cond_6

    add-int/lit8 p3, p3, -0x1

    .line 733
    :cond_6
    iget-boolean p5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showAvatarConstructor:Z

    const/4 v1, 0x0

    if-eqz p5, :cond_9

    if-nez p3, :cond_8

    .line 735
    instance-of p5, p2, Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;

    if-nez p5, :cond_7

    return-void

    .line 738
    :cond_7
    check-cast p2, Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;

    invoke-virtual {p0, p2, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showAvatarConstructorFragment(Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;Lorg/telegram/tgnet/TLRPC$VideoSize;)V

    .line 739
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_8
    add-int/lit8 p3, p3, -0x1

    :cond_9
    move v5, p3

    .line 743
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getAllPhotosArray()Ljava/util/ArrayList;

    move-result-object v4

    if-ltz v5, :cond_16

    .line 744
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt v5, p2, :cond_a

    goto/16 :goto_5

    .line 747
    :cond_a
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p3, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 748
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer;->setParentAlert(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 749
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p3, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    iget-boolean p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/PhotoViewer;->setMaxSelectedPhotos(IZ)V

    .line 752
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 p3, 0x0

    if-eqz p2, :cond_b

    move-object v7, v1

    const/4 v6, 0x1

    goto :goto_1

    .line 755
    :cond_b
    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p5, p2, Lorg/telegram/ui/ChatActivity;

    if-eqz p5, :cond_c

    .line 756
    move-object v1, p2

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    move-object v7, v1

    const/4 v6, 0x0

    goto :goto_1

    :cond_c
    move-object v7, v1

    const/4 v6, 0x4

    .line 762
    :goto_1
    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->needEnterComment()Z

    move-result p1

    if-nez p1, :cond_d

    .line 763
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 764
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 766
    :cond_d
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_f

    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_f

    .line 767
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    sget-object p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 768
    instance-of p2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz p2, :cond_e

    .line 769
    move-object p2, p1

    check-cast p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 770
    iget-object p5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p5}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentTextView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p5

    invoke-virtual {p5}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object p5

    iput-object p5, p2, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    .line 772
    :cond_e
    instance-of p2, p1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz p2, :cond_f

    .line 773
    check-cast p1, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 774
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentTextView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    .line 777
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 779
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz p1, :cond_10

    .line 780
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    goto :goto_2

    :cond_10
    const/4 p1, 0x0

    .line 782
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object p2

    iput-boolean p1, p2, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;->isVideo:Z

    .line 785
    :cond_11
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz p1, :cond_12

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    if-eqz p1, :cond_12

    goto :goto_3

    :cond_12
    const/4 p4, 0x0

    .line 786
    :goto_3
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 787
    instance-of p2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz p2, :cond_13

    .line 788
    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 789
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkSendMediaEnabled(Lorg/telegram/messenger/MediaController$PhotoEntry;)Z

    move-result p1

    if-eqz p1, :cond_13

    return-void

    :cond_13
    if-eqz p4, :cond_14

    .line 794
    invoke-direct {p0, v5, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCurrentSpoilerVisible(IZ)V

    .line 797
    :cond_14
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda13;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Ljava/util/ArrayList;IILorg/telegram/ui/ChatActivity;)V

    if-eqz p4, :cond_15

    const-wide/16 p2, 0xfa

    goto :goto_4

    :cond_15
    const-wide/16 p2, 0x0

    :goto_4
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_16
    :goto_5
    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;I)Z
    .locals 9

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 816
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v1, v2, :cond_1

    .line 817
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 818
    invoke-interface/range {v1 .. v8}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIZLjava/lang/String;Z)V

    :cond_0
    return v0

    .line 821
    :cond_1
    instance-of v1, p1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v1, :cond_2

    .line 822
    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 823
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemRangeSelector:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shouldSelect:Z

    invoke-virtual {v2, p1, v0, p2, v1}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;->setIsActive(Landroid/view/View;ZIZ)Z

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 1

    .line 967
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 970
    invoke-virtual {p0, p1, v0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openPhotoViewer(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V

    .line 971
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraController;->stopPreview(Lorg/telegram/messenger/camera/CameraSession;)V

    return-void
.end method

.method private synthetic lambda$new$6(F)V
    .locals 1

    .line 979
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_0

    .line 980
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraView;->setZoom(F)V

    :cond_0
    const/4 p1, 0x1

    .line 982
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showZoomControls(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 4

    .line 1153
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->takingPhoto:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1156
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->canSaveCameraPreview:Z

    .line 1157
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->switchCamera()V

    .line 1158
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->startSwitchingAnimation()V

    .line 1159
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, p1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1160
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$11;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1167
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 11

    .line 1178
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashAnimationInProgress:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1181
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 1182
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraSession;->getNextFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 1183
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1186
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraSession;->setCurrentFlashMode(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1187
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashAnimationInProgress:Z

    .line 1188
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    if-ne v4, p1, :cond_2

    aget-object v2, v2, v0

    goto :goto_0

    :cond_2
    aget-object v2, v2, v3

    .line 1189
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1190
    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCameraFlashModeIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1191
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/Animator;

    .line 1192
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v8, v7, v3

    const/16 v9, 0x30

    .line 1193
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    aput v10, v7, v0

    invoke-static {p1, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v3

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v6, [F

    .line 1194
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v7, v3

    aput v8, v7, v0

    invoke-static {v2, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v4, v0

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    .line 1195
    invoke-static {p1, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v0, 0x3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    .line 1196
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v4, v0

    .line 1192
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v3, 0xdc

    .line 1197
    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1198
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1199
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$12;

    invoke-direct {v0, p0, p1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$12;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1207
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static synthetic lambda$new$9(Landroid/view/View;I)V
    .locals 0

    .line 1248
    instance-of p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz p1, :cond_0

    .line 1249
    check-cast p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->callDelegate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onHide$22()V
    .locals 2

    .line 3371
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onMenuItemClick$17(ZILjava/lang/String;)V
    .locals 9

    .line 2863
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCaption()V

    .line 2864
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v4, p1

    move v5, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v8}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIZLjava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$onMenuItemClick$18(ZILjava/lang/String;)V
    .locals 9

    .line 2873
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCaption()V

    .line 2874
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v4, p1

    move v5, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v8}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIZLjava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$onMenuItemClick$19(Z)V
    .locals 2

    .line 2896
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->DisablePhotoSpoiler:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->EnablePhotoSpoiler:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 2898
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_spoiler_off:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(I)V

    goto :goto_1

    .line 2900
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$raw;->photo_spoiler:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setAnimatedIcon(I)V

    :goto_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 2903
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_2

    .line 2905
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    :goto_2
    return-void
.end method

.method private static synthetic lambda$onMenuItemClick$20(Ljava/util/List;ZLandroid/view/View;)V
    .locals 1

    .line 2921
    instance-of v0, p2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v0, :cond_1

    .line 2922
    check-cast p2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2923
    iget v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHasSpoiler(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onPreMeasure$23()V
    .locals 1

    .line 3447
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$onShow$21(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 3

    .line 3297
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getCurrentItemTop()I

    move-result v0

    .line 3298
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getListTopPadding()I

    move-result p1

    .line 3299
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-le v0, v2, :cond_0

    sub-int/2addr p1, v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void
.end method

.method private static synthetic lambda$setCurrentSpoilerVisible$0(Lorg/telegram/messenger/MediaController$PhotoEntry;ZLandroid/view/View;)V
    .locals 1

    .line 340
    instance-of v0, p2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v0, :cond_0

    .line 341
    check-cast p2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 342
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/high16 p0, 0x437a0000    # 250.0f

    .line 343
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHasSpoiler(ZLjava/lang/Float;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showAvatarConstructorFragment$10(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;JLorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;)V
    .locals 28

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    .line 1265
    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1266
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v3, 0x320

    invoke-static {v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1267
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1268
    new-instance v4, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v4}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    .line 1270
    iget v5, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    iget v6, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    iget v7, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    iget v0, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    invoke-virtual {v4, v5, v6, v7, v0}, Lorg/telegram/ui/Components/GradientTools;->setColors(IIII)V

    goto :goto_0

    .line 1272
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->defaultColors:[[I

    aget-object v5, v0, v12

    aget v5, v5, v12

    aget-object v6, v0, v12

    aget v6, v6, v11

    aget-object v7, v0, v12

    const/4 v8, 0x2

    aget v7, v7, v8

    aget-object v0, v0, v12

    const/4 v8, 0x3

    aget v0, v0, v8

    invoke-virtual {v4, v5, v6, v7, v0}, Lorg/telegram/ui/Components/GradientTools;->setColors(IIII)V

    :goto_0
    const/4 v0, 0x0

    const/high16 v5, 0x44480000    # 800.0f

    .line 1274
    invoke-virtual {v4, v0, v0, v5, v5}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x44480000    # 800.0f

    const/high16 v8, 0x44480000    # 800.0f

    .line 1275
    iget-object v9, v4, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    move-object v4, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1277
    new-instance v4, Ljava/io/File;

    const/4 v5, 0x4

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "avatar_background.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1279
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 1281
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1282
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v6, v12, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1283
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1285
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1286
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1287
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 1288
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1290
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const v0, 0x42f00001    # 120.00001f

    float-to-int v0, v0

    const/high16 v8, 0x440c0000    # 560.0f

    float-to-int v8, v8

    .line 1298
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    .line 1299
    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v13

    const/4 v14, 0x0

    const v15, 0x3e051eb8    # 0.13f

    if-eqz v13, :cond_1

    .line 1300
    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v9

    invoke-virtual {v9, v14}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFirstFrame(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1301
    new-instance v13, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v13}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    .line 1302
    invoke-virtual {v13, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    int-to-float v0, v0

    int-to-float v14, v8

    .line 1303
    invoke-virtual {v13, v0, v0, v14, v14}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    mul-float v14, v14, v15

    float-to-int v0, v14

    .line 1304
    invoke-virtual {v13, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 1305
    invoke-virtual {v13, v10}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1306
    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 1307
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 1309
    :cond_1
    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 1310
    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v13

    invoke-virtual {v13, v12, v12, v11}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    :cond_2
    int-to-float v0, v0

    int-to-float v13, v8

    .line 1312
    invoke-virtual {v9, v0, v0, v13, v13}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    mul-float v13, v13, v15

    float-to-int v0, v13

    .line 1313
    invoke-virtual {v9, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 1314
    invoke-virtual {v9, v10}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1317
    :goto_2
    new-instance v9, Ljava/io/File;

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1319
    :try_start_1
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 1321
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1322
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v7, v12, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1323
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1325
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1326
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1327
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1328
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 1330
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1334
    :goto_3
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->hasAnimation()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_10

    .line 1335
    new-instance v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v27}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    .line 1336
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    .line 1338
    iget-wide v9, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->documentId:J

    const-wide/16 v13, 0x0

    cmp-long v7, v9, v13

    if-eqz v7, :cond_6

    .line 1339
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;-><init>()V

    .line 1340
    iget-wide v9, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->documentId:J

    iput-wide v9, v7, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;->emoji_id:J

    .line 1341
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    iget-object v10, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v10, v10, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1342
    iget-object v9, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v9, v9, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    if-eqz v9, :cond_3

    .line 1343
    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    :cond_3
    iget-object v9, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v9, v9, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    if-eqz v9, :cond_4

    .line 1346
    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    :cond_4
    iget-object v9, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v9, v9, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    if-eqz v9, :cond_5

    .line 1349
    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    :cond_5
    iput-object v7, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    goto :goto_4

    .line 1352
    :cond_6
    iget-object v7, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_a

    .line 1353
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;-><init>()V

    .line 1354
    iget-object v9, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v5, v9, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v5, v7, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;->sticker_id:J

    .line 1355
    invoke-static {v9}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v5

    iput-object v5, v7, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1356
    iget-object v5, v7, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    iget-object v6, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v6, v6, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1357
    iget-object v5, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v5, v5, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    if-eqz v5, :cond_7

    .line 1358
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1360
    :cond_7
    iget-object v5, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v5, v5, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    if-eqz v5, :cond_8

    .line 1361
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    :cond_8
    iget-object v5, v1, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v5, v5, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    if-eqz v5, :cond_9

    .line 1364
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    :cond_9
    iput-object v7, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 1369
    :cond_a
    :goto_4
    new-instance v5, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v5}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    iput-object v5, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 1370
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 1371
    iget-object v4, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput v3, v4, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 1372
    iput v3, v4, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 1373
    iput v3, v4, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 1374
    iput v3, v4, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 1375
    iput-boolean v11, v4, Lorg/telegram/messenger/VideoEditedInfo;->isPhoto:Z

    .line 1376
    iput v2, v4, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 1377
    iput-boolean v11, v4, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    .line 1379
    iput-wide v13, v4, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    long-to-float v3, v13

    iput v3, v4, Lorg/telegram/messenger/VideoEditedInfo;->start:F

    .line 1380
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getDuration()J

    move-result-wide v5

    iput-wide v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 1381
    iget-object v1, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const/16 v3, 0x1e

    iput v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    .line 1383
    iput-wide v13, v1, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    .line 1384
    iget-wide v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    long-to-float v5, v3

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x47e10000    # 115200.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-long v5, v5

    iput-wide v5, v1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 1385
    iput-wide v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 1387
    new-instance v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v1}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    .line 1388
    iput-byte v12, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-nez p4, :cond_b

    .line 1391
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    move-wide/from16 v4, p2

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    goto :goto_5

    :cond_b
    move-object/from16 v3, p4

    :goto_5
    if-nez v3, :cond_c

    return-void

    .line 1396
    :cond_c
    iput v8, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    .line 1397
    iput v8, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    const v4, 0x3f333333    # 0.7f

    .line 1398
    iput v4, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 1399
    iput v4, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    const v4, 0x3e19999a    # 0.15f

    .line 1400
    iput v4, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    .line 1401
    iput v4, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 1402
    iput-object v3, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v4, 0x0

    .line 1403
    iput-object v4, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->parentObject:Ljava/lang/Object;

    .line 1404
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v3, v11}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 1405
    iput v15, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadius:F

    .line 1406
    invoke-static {v3, v11}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1407
    :cond_d
    invoke-static {v3, v11}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v3

    .line 1408
    iget-byte v4, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    if-eqz v3, :cond_e

    goto :goto_6

    :cond_e
    const/4 v11, 0x4

    :goto_6
    or-int v3, v4, v11

    int-to-byte v3, v3

    iput-byte v3, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 1411
    :cond_f
    iget-object v3, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    .line 1412
    iget-object v3, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v3, v3, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1414
    :cond_10
    new-instance v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v15}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    .line 1416
    :goto_7
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    .line 1418
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    const/4 v3, 0x7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIZLjava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$showZoomControls$12()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1852
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showZoomControls(ZZ)V

    const/4 v0, 0x0

    .line 1853
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$showZoomControls$13()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1874
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showZoomControls(ZZ)V

    const/4 v0, 0x0

    .line 1875
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static synthetic lambda$updateAlbumsDropDown$11(Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;)I
    .locals 3

    .line 1500
    iget v0, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v2, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1502
    iget v0, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    if-nez v0, :cond_1

    return v2

    .line 1505
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1506
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-le p1, p0, :cond_2

    return v2

    :cond_2
    if-ge p1, p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private openCamera(Z)V
    .locals 8

    .line 1994
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraInitAnimation:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    .line 1997
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2000
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1998
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2002
    :goto_1
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_3

    .line 2003
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2004
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto :goto_2

    .line 2006
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2007
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2009
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2010
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->closeKeyboard()V

    .line 2012
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2013
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2014
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2015
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 2016
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animateCameraValues:[I

    aput v4, v0, v4

    .line 2017
    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    const/4 v7, 0x1

    aput v6, v0, v7

    .line 2018
    aput v6, v0, v3

    .line 2019
    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->additionCloseCameraY:F

    .line 2020
    iput-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraExpanded:Z

    .line 2021
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/camera/CameraView;->setFpsLimit(I)V

    .line 2022
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2023
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v4}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_7

    .line 2025
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCameraOpenProgress(F)V

    .line 2026
    iput-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAnimationInProgress:Z

    .line 2027
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationIndex:I

    invoke-virtual {p1, v2, v5}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationIndex:I

    .line 2028
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-array v2, v3, [F

    .line 2029
    fill-array-data v2, :array_0

    const-string v5, "cameraOpenProgress"

    invoke-static {p0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2030
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    aput v0, v6, v4

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2031
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    aput v0, v6, v4

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2032
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    aput v0, v6, v4

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_6

    .line 2034
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    .line 2035
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v5, v2

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    aput v0, v6, v4

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2039
    :cond_6
    :goto_4
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2040
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v4, 0x15e

    .line 2041
    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2042
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2043
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$17;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$17;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2061
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_7

    .line 2063
    :cond_7
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCameraOpenProgress(F)V

    .line 2064
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2065
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2066
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_5
    if-ge v4, v3, :cond_9

    .line 2068
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object p1, p1, v4

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    .line 2069
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object p1, p1, v4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_6

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 2073
    :cond_9
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->onCameraOpened()V

    .line 2074
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_a

    .line 2075
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/16 v0, 0x404

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 2078
    :cond_a
    :goto_7
    iput-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    .line 2079
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 2080
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_b

    .line 2081
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_b
    :goto_8
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private pauseCameraPreview()V
    .locals 2

    .line 3379
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_0

    .line 3380
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3382
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/camera/CameraController;->stopPreview(Lorg/telegram/messenger/camera/CameraSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3386
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1533
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pressed:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_5

    .line 1534
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hitRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1535
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hitRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 1538
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->takingPhoto:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dragging:Z

    if-nez v1, :cond_10

    .line 1539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 1540
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float p1, v1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pinchStartDistance:F

    .line 1541
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zooming:Z

    goto :goto_0

    .line 1543
    :cond_4
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->maybeStartDraging:Z

    .line 1544
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastY:F

    .line 1545
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zooming:Z

    .line 1547
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomWas:Z

    .line 1548
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pressed:Z

    goto/16 :goto_2

    .line 1550
    :cond_5
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pressed:Z

    if-eqz v1, :cond_10

    .line 1551
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x3

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    if-ne v1, v2, :cond_c

    .line 1552
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zooming:Z

    const v11, 0x3ecccccd    # 0.4f

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v2, :cond_9

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dragging:Z

    if-nez v1, :cond_9

    .line 1553
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float p1, v1

    .line 1554
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomWas:Z

    if-nez v1, :cond_6

    .line 1555
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pinchStartDistance:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v11, v0}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_10

    .line 1556
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pinchStartDistance:F

    .line 1557
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomWas:Z

    goto/16 :goto_2

    .line 1560
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v1, :cond_10

    .line 1561
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pinchStartDistance:F

    sub-float v1, p1, v1

    const/16 v2, 0x64

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1562
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pinchStartDistance:F

    .line 1563
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    add-float/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    cmpg-float v1, p1, v10

    if-gez v1, :cond_7

    .line 1565
    iput v10, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    goto :goto_1

    :cond_7
    cmpl-float p1, p1, v9

    if-lez p1, :cond_8

    .line 1567
    iput v9, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    .line 1569
    :cond_8
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    .line 1570
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 1571
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraView;->setZoom(F)V

    .line 1572
    invoke-direct {p0, v3, v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showZoomControls(ZZ)V

    goto/16 :goto_2

    .line 1576
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1577
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastY:F

    sub-float v1, p1, v1

    .line 1578
    iget-boolean v9, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->maybeStartDraging:Z

    if-eqz v9, :cond_a

    .line 1579
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v11, v0}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_10

    .line 1580
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->maybeStartDraging:Z

    .line 1581
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dragging:Z

    goto/16 :goto_2

    .line 1583
    :cond_a
    iget-boolean v9, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dragging:Z

    if-eqz v9, :cond_10

    .line 1584
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v9, :cond_10

    .line 1585
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v11

    add-float/2addr v11, v1

    invoke-virtual {v9, v11}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1586
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastY:F

    .line 1587
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1588
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_b

    .line 1589
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1590
    iput-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    .line 1592
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_10

    .line 1593
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1594
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v7, [Landroid/animation/Animator;

    .line 1595
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v3, [F

    aput v10, v9, v0

    .line 1596
    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v1, v0

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v3, [F

    aput v10, v9, v0

    .line 1597
    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v1, v3

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v3, [F

    aput v10, v9, v0

    .line 1598
    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v3, [F

    aput v10, v7, v0

    .line 1599
    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v3

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v3, [F

    aput v10, v7, v0

    .line 1600
    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v3, [F

    aput v10, v6, v0

    .line 1601
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v4

    .line 1595
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0xdc

    .line 1602
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1603
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1604
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .line 1609
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v8, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v3, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v7, :cond_10

    .line 1610
    :cond_d
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pressed:Z

    .line 1611
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zooming:Z

    .line 1614
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dragging:Z

    if-eqz v1, :cond_f

    .line 1615
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dragging:Z

    .line 1616
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz p1, :cond_10

    .line 1617
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v11, 0x40c00000    # 6.0f

    div-float/2addr v1, v11

    cmpl-float p1, p1, v1

    if-lez p1, :cond_e

    .line 1618
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->closeCamera(Z)V

    goto/16 :goto_2

    .line 1620
    :cond_e
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v7, [Landroid/animation/Animator;

    .line 1621
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v12, v3, [F

    aput v10, v12, v0

    .line 1622
    invoke-static {v7, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v1, v0

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v3, [F

    aput v9, v11, v0

    .line 1623
    invoke-static {v7, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v1, v3

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v3, [F

    aput v9, v11, v0

    .line 1624
    invoke-static {v7, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v3, [F

    aput v9, v10, v0

    .line 1625
    invoke-static {v2, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v3

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v3, [F

    aput v9, v8, v0

    .line 1626
    invoke-static {v2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v3, [F

    aput v9, v7, v0

    .line 1627
    invoke-static {v2, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v4

    .line 1621
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0xfa

    .line 1628
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1629
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1630
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1631
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 1634
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v1, :cond_10

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomWas:Z

    if-nez v2, :cond_10

    .line 1635
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->viewPosition:[I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 1636
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->viewPosition:[I

    aget v0, v2, v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    .line 1637
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->viewPosition:[I

    aget v0, v0, v3

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 1638
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    float-to-int v1, v1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/camera/CameraView;->focusToPoint(II)V

    :cond_10
    :goto_2
    return v3
.end method

.method private resetRecordState()V
    .locals 7

    .line 1646
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    const-wide/16 v4, 0x96

    const/high16 v6, 0x3f800000    # 1.0f

    if-ge v1, v2, :cond_1

    .line 1651
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1653
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1654
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1655
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    .line 1657
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1658
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordRunnable:Ljava/lang/Runnable;

    .line 1659
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    return-void
.end method

.method private resumeCameraPreview()V
    .locals 2

    const/4 v0, 0x0

    .line 3392
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    .line 3393
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_0

    .line 3394
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3396
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/camera/CameraController;->startPreview(Lorg/telegram/messenger/camera/CameraSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3400
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private saveLastCameraBitmap()V
    .locals 10

    .line 2289
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->canSaveCameraPreview:Z

    if-nez v0, :cond_0

    return-void

    .line 2293
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    .line 2294
    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2296
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2297
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v0, 0x50

    .line 2299
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42a00000    # 80.0f

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    .line 2302
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v5, 0x7

    const/4 v6, 0x1

    .line 2304
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    move-object v4, v0

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 2305
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-string v3, "cthumb.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2306
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2307
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x57

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2308
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2309
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method private setCameraFlashModeIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .line 1936
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "auto"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1946
    :pswitch_0
    sget p2, Lorg/telegram/messenger/R$drawable;->flash_auto:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1947
    sget p2, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashAuto:I

    const-string v0, "AccDescrCameraFlashAuto"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1938
    :pswitch_1
    sget p2, Lorg/telegram/messenger/R$drawable;->flash_off:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1939
    sget p2, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashOff:I

    const-string v0, "AccDescrCameraFlashOff"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1942
    :pswitch_2
    sget p2, Lorg/telegram/messenger/R$drawable;->flash_on:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1943
    sget p2, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashOn:I

    const-string v0, "AccDescrCameraFlashOn"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xddf -> :sswitch_2
        0x1ad6f -> :sswitch_1
        0x2dddaf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setCurrentSpoilerVisible(IZ)V
    .locals 2

    .line 331
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 332
    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getCurrentIndex()I

    move-result p1

    .line 333
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getImagesArrLocals()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 334
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 337
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->forAllChild(Landroidx/core/util/Consumer;)V

    :cond_2
    return-void
.end method

.method private showZoomControls(ZZ)V
    .locals 8

    .line 1846
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-wide/16 v0, 0x7d0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    if-nez p1, :cond_4

    :cond_1
    if-eqz p1, :cond_3

    .line 1848
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 1849
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1851
    :cond_2
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    return-void

    .line 1858
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_5

    .line 1859
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1861
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1862
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xb4

    .line 1863
    invoke-virtual {p2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1864
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v2, [Landroid/animation/Animator;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    if-eqz p1, :cond_7

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x0

    aput v6, v2, v7

    invoke-static {v4, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-virtual {p2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1865
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$16;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$16;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1871
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    if-eqz p1, :cond_8

    .line 1873
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_8
    return-void
.end method

.method private updateAlbumsDropDown()V
    .locals 5

    .line 1490
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->removeAllSubItems()V

    .line 1491
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    if-eqz v0, :cond_2

    .line 1493
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v1, Lorg/telegram/ui/ChatActivity;

    if-nez v1, :cond_1

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1496
    :cond_0
    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotoAlbums:Ljava/util/ArrayList;

    goto :goto_1

    .line 1494
    :cond_1
    :goto_0
    sget-object v0, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    .line 1498
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownAlbums:Ljava/util/ArrayList;

    .line 1499
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda16;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda16;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 1517
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownAlbums:Ljava/util/ArrayList;

    .line 1519
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1520
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 1522
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 1523
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    if-ge v0, v1, :cond_4

    .line 1524
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    add-int/lit8 v3, v0, 0xa

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method


# virtual methods
.method applyCaption(Ljava/lang/CharSequence;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3023
    :goto_0
    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-nez v1, :cond_1

    .line 3025
    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3026
    instance-of v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 3027
    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3028
    iput-object p1, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    .line 3029
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object p1, v4, v0

    invoke-virtual {v3, v4, v0}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    goto :goto_1

    .line 3030
    :cond_0
    instance-of v3, v2, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v3, :cond_1

    .line 3031
    check-cast v2, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 3032
    iput-object p1, v2, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    .line 3033
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object p1, v4, v0

    invoke-virtual {v3, v4, v0}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method canDismissWithTouchOutside()Z
    .locals 1

    .line 3477
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method canScheduleMessages()Z
    .locals 5

    .line 3217
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3218
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3219
    instance-of v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v4, :cond_1

    .line 3220
    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3221
    iget v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    if-eqz v1, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 3225
    :cond_1
    instance-of v4, v1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v4, :cond_0

    .line 3226
    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 3227
    iget v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v3
.end method

.method public captionForAllMedia()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3041
    :goto_0
    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 3042
    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    sget-object v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    .line 3044
    instance-of v5, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v5, :cond_0

    .line 3045
    check-cast v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3046
    iget-object v4, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    goto :goto_1

    .line 3047
    :cond_0
    instance-of v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v5, :cond_1

    .line 3048
    check-cast v3, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 3049
    iget-object v4, v3, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    .line 3051
    :cond_1
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-gt v2, v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public checkCamera(Z)V
    .locals 6

    .line 1953
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1956
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    .line 1957
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    .line 1958
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->inappCamera:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 1959
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    goto :goto_1

    .line 1961
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/4 v5, 0x0

    if-lt v2, v4, :cond_7

    .line 1962
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "android.permission.CAMERA"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    .line 1965
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x11

    invoke-virtual {p1, v2, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1970
    :catch_0
    :cond_3
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    .line 1972
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->hasCameraCache:Z

    if-eqz p1, :cond_6

    .line 1973
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    invoke-virtual {p1, v5}, Lorg/telegram/messenger/camera/CameraController;->initCamera(Ljava/lang/Runnable;)V

    .line 1975
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraController;->isCameraInitied()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    goto :goto_1

    :cond_7
    if-nez p1, :cond_8

    .line 1978
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->hasCameraCache:Z

    if-eqz p1, :cond_9

    .line 1979
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    invoke-virtual {p1, v5}, Lorg/telegram/messenger/camera/CameraController;->initCamera(Ljava/lang/Runnable;)V

    .line 1981
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraController;->isCameraInitied()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    .line 1984
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    if-ne v0, p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    if-eq v1, p1, :cond_b

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    if-eqz p1, :cond_b

    .line 1985
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 1987
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBackDrawable()Landroid/graphics/drawable/ColorDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-nez p1, :cond_c

    .line 1988
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showCamera()V

    :cond_c
    :goto_2
    return-void
.end method

.method protected checkCameraViewPosition()V
    .locals 11

    .line 2629
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v0, v2, :cond_3

    .line 2630
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v4, :cond_0

    .line 2631
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 2633
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2635
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidateOutline()V

    .line 2637
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->access$5500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eq v4, v5, :cond_3

    .line 2638
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2640
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidateOutline()V

    .line 2644
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v4, :cond_4

    .line 2645
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_4
    const/16 v4, 0x17

    if-lt v0, v4, :cond_6

    .line 2648
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 2649
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2650
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    if-nez v5, :cond_5

    const/16 v5, 0x10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v5, v6

    :goto_0
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2653
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    if-nez v0, :cond_7

    return-void

    .line 2656
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    if-ge v5, v0, :cond_11

    .line 2658
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2659
    instance-of v8, v7, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz v8, :cond_10

    .line 2660
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v0, v5, :cond_8

    .line 2661
    invoke-virtual {v7}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_6

    .line 2666
    :cond_8
    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getY()F

    move-result v8

    add-float/2addr v5, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v8

    add-float/2addr v5, v8

    .line 2667
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getY()F

    move-result v8

    add-float/2addr v8, v5

    .line 2668
    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getX()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v10

    add-float/2addr v9, v10

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getX()F

    move-result v10

    add-float/2addr v9, v10

    if-lt v0, v4, :cond_9

    .line 2670
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v9, v4

    :cond_9
    if-lt v0, v2, :cond_a

    .line 2673
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->inBubbleMode:Z

    if-nez v4, :cond_a

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_2

    :cond_a
    const/4 v4, 0x0

    :goto_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v10

    add-int/2addr v4, v10

    int-to-float v4, v4

    cmpg-float v10, v5, v4

    if-gez v10, :cond_b

    sub-float/2addr v4, v5

    goto :goto_3

    :cond_b
    const/4 v4, 0x0

    .line 2681
    :goto_3
    iget v10, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    cmpl-float v10, v4, v10

    if-eqz v10, :cond_e

    .line 2682
    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    .line 2683
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v4, :cond_d

    if-lt v0, v2, :cond_c

    .line 2685
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->invalidateOutline()V

    goto :goto_4

    .line 2687
    :cond_c
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2690
    :cond_d
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_e

    .line 2691
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2695
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 2696
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    .line 2698
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v5

    cmpl-float v2, v2, v0

    if-lez v2, :cond_f

    .line 2699
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v5, v2

    sub-float/2addr v5, v0

    iput v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetBottomY:F

    goto :goto_5

    .line 2701
    :cond_f
    iput v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetBottomY:F

    .line 2704
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aput v9, v0, v3

    .line 2705
    aput v8, v0, v1

    .line 2706
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->applyCameraViewPosition()V

    return-void

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 2712
    :cond_11
    :goto_6
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_12

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetX:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_15

    .line 2713
    :cond_12
    iput v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetX:F

    .line 2714
    iput v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    .line 2715
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_14

    .line 2716
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_13

    .line 2717
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    goto :goto_7

    .line 2719
    :cond_13
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2722
    :cond_14
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_15

    .line 2723
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2727
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    const/16 v2, -0x190

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v3

    .line 2728
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aput v6, v0, v1

    .line 2730
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->applyCameraViewPosition()V

    return-void
.end method

.method checkColors()V
    .locals 7

    .line 3132
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 3133
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 3135
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->forceDarkTheme:Z

    const-string v1, "voipgroup_actionBarItems"

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "dialogTextBlack"

    .line 3136
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    const-string v3, "dialogCameraIcon"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 3137
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string v4, "emptyListPlaceholder"

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextColor(I)V

    .line 3138
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string v4, "dialogScrollGlow"

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 3139
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3140
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v5, v2, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz v5, :cond_2

    .line 3141
    check-cast v2, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v3, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3144
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3145
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->forceDarkTheme:Z

    const-string v5, "actionBarDefaultSubmenuItem"

    if-eqz v3, :cond_3

    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v3, v5

    :goto_1
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 3146
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->forceDarkTheme:Z

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v5

    :goto_2
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 3147
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->forceDarkTheme:Z

    if-eqz v2, :cond_5

    const-string v2, "voipgroup_actionBarUnscrolled"

    goto :goto_3

    :cond_5
    const-string v2, "actionBarDefaultSubmenuBackground"

    :goto_3
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 3148
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public checkStorage()V
    .locals 2

    .line 2825
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noGalleryPermissions:Z

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 2826
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noGalleryPermissions:Z

    if-nez v0, :cond_1

    .line 2828
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loadGalleryPhotos()V

    .line 2830
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 2831
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public closeCamera(Z)V
    .locals 10

    .line 2434
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->takingPhoto:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 2437
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animateCameraValues:[I

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v3, 0x2

    .line 2438
    aput v1, v0, v3

    .line 2439
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2440
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2441
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    .line 2443
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v4, "windowBackgroundGray"

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3fe7126e978d4fdfL    # 0.721

    const/4 v8, 0x0

    cmpl-double v9, v4, v6

    if-lez v9, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-static {v0, v4}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 2445
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->additionCloseCameraY:F

    .line 2447
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAnimationInProgress:Z

    .line 2448
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-array v4, v2, [F

    aput v0, v4, v8

    const-string v5, "cameraOpenProgress"

    .line 2449
    invoke-static {p0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2450
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v2, [F

    aput v0, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2451
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v2, [F

    aput v0, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2452
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v2, [F

    aput v0, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2453
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v2, [F

    aput v0, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    .line 2455
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 2456
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v3, v3, v4

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    aput v0, v2, v8

    invoke-static {v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2461
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationIndex:I

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationIndex:I

    .line 2462
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2463
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v1, 0xdc

    .line 2464
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2465
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2466
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$22;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$22;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2498
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_5

    .line 2500
    :cond_5
    iput-boolean v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraExpanded:Z

    .line 2501
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCameraOpenProgress(F)V

    .line 2502
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animateCameraValues:[I

    aput v8, p1, v8

    .line 2503
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCameraOpenProgress(F)V

    .line 2504
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2505
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2506
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2507
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2508
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2509
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2510
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2511
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    const/4 p1, 0x0

    :goto_3
    if-ge p1, v3, :cond_7

    .line 2513
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 2514
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_4

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 2518
    :cond_7
    :goto_4
    iput-boolean v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    .line 2519
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraView;->setFpsLimit(I)V

    .line 2520
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_8

    .line 2521
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 2524
    :cond_8
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 2525
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_9

    .line 2526
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_9
    :goto_6
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    .line 3648
    sget p2, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    const/4 p3, 0x0

    if-ne p1, p2, :cond_8

    .line 3649
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    if-eqz p1, :cond_9

    .line 3650
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p2, p2, Lorg/telegram/ui/ChatActivity;

    if-nez p2, :cond_1

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 3653
    :cond_0
    sget-object p1, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_1

    .line 3651
    :cond_1
    :goto_0
    sget-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 3655
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez p1, :cond_2

    .line 3656
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    .line 3658
    :goto_2
    sget-object p2, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 3659
    sget-object p2, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 3660
    iget v0, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget v2, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    if-ne v0, v2, :cond_3

    iget-boolean v0, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->videoOnly:Z

    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->videoOnly:Z

    if-ne v0, v1, :cond_3

    .line 3661
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 3666
    :cond_4
    :goto_3
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loading:Z

    .line 3667
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 3668
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 3669
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 3670
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz p1, :cond_7

    .line 3671
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_4
    if-ge p3, p1, :cond_7

    .line 3672
    sget-object p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 3673
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3674
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photosByIds:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_6

    .line 3676
    instance-of v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_5

    .line 3677
    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3678
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MediaController$PhotoEntry;->copyFrom(Lorg/telegram/messenger/MediaController$MediaEditState;)V

    .line 3680
    :cond_5
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 3684
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateAlbumsDropDown()V

    goto :goto_5

    .line 3686
    :cond_8
    sget p2, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    if-ne p1, p2, :cond_9

    .line 3687
    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    :cond_9
    :goto_5
    return-void
.end method

.method protected getAllPhotosArray()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v0, :cond_1

    .line 551
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 553
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 554
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 556
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    goto :goto_0

    .line 558
    :cond_1
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 559
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    goto :goto_0

    .line 561
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method public getCameraOpenProgress()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2625
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpenProgress:F

    return v0
.end method

.method public getCurrentItemTop()I
    .locals 4

    .line 3107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 3108
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 3109
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const v0, 0x7fffffff

    return v0

    .line 3112
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3113
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 3114
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/4 v2, 0x7

    .line 3115
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 3116
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-lt v0, v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 3119
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v0

    const/16 v3, 0x32

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3120
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    return v0
.end method

.method public getFirstOffset()I
    .locals 2

    .line 3127
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getListTopPadding()I

    move-result v0

    const/16 v1, 0x38

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getListTopPadding()I
    .locals 1

    .line 3099
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method getSelectedItemsCount()I
    .locals 1

    .line 2981
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedPhotos()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2781
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSelectedPhotosOrder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2785
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hideCamera(Z)V
    .locals 5

    .line 2261
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v0, :cond_0

    goto :goto_2

    .line 2264
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->saveLastCameraBitmap()V

    .line 2265
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2267
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2268
    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz v4, :cond_1

    .line 2269
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2270
    check-cast v3, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;->updateBitmap()V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2274
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lorg/telegram/messenger/camera/CameraView;->destroy(ZLjava/lang/Runnable;)V

    .line 2275
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraInitAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_3

    .line 2276
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2277
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraInitAnimation:Landroid/animation/AnimatorSet;

    .line 2279
    :cond_3
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    const-wide/16 v2, 0x12c

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2285
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->canSaveCameraPreview:Z

    :cond_4
    :goto_2
    return-void
.end method

.method public loadGalleryPhotos()V
    .locals 2

    .line 2087
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v1, Lorg/telegram/ui/ChatActivity;

    if-nez v1, :cond_1

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2090
    :cond_0
    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_1

    .line 2088
    :cond_1
    :goto_0
    sget-object v0, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    :goto_1
    if-nez v0, :cond_2

    .line 2092
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 2093
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    :cond_2
    return-void
.end method

.method public needsActionBar()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResultFragment(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 28

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v7, p3

    .line 2318
    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_b

    :cond_0
    const/4 v14, 0x1

    .line 2321
    sput-boolean v14, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaFromExternalCamera:Z

    const/4 v15, 0x0

    if-nez v0, :cond_4

    .line 2323
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2324
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/PhotoViewer;->setMaxSelectedPhotos(IZ)V

    .line 2325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2328
    :try_start_0
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v0, v7}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "Orientation"

    .line 2329
    invoke-virtual {v0, v2, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x10e

    goto :goto_0

    :cond_2
    const/16 v0, 0x5a

    goto :goto_0

    :cond_3
    const/16 v0, 0xb4

    :goto_0
    move v8, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2342
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v8, 0x0

    .line 2346
    :goto_1
    :try_start_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2347
    iput-boolean v14, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2348
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2349
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2350
    :try_start_2
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v11, v0

    move v10, v2

    goto :goto_2

    :catch_1
    const/4 v2, 0x0

    :catch_2
    move v10, v2

    const/4 v11, 0x0

    .line 2352
    :goto_2
    new-instance v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v3, 0x0

    sget v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    add-int/lit8 v2, v4, -0x1

    sput v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    move-object v2, v0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v13}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    .line 2353
    iput-boolean v14, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->canDeleteAfter:Z

    .line 2354
    invoke-virtual {v1, v0, v15, v14}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openPhotoViewer(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V

    goto/16 :goto_b

    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_12

    .line 2357
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_5

    .line 2358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pic path "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_5
    const/4 v2, 0x0

    if-eqz p2, :cond_6

    if-eqz v7, :cond_6

    .line 2361
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v2

    goto :goto_3

    :cond_6
    move-object/from16 v0, p2

    :goto_3
    if-eqz v0, :cond_d

    .line 2366
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2368
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_7

    .line 2369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video record uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2371
    :cond_7
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2372
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_8

    .line 2373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolved path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_8
    if-eqz v0, :cond_9

    .line 2375
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    move-object v0, v7

    .line 2381
    :cond_a
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v3, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_b

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2382
    :cond_b
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    :cond_c
    move-object v7, v2

    goto :goto_4

    :cond_d
    move-object v0, v2

    :goto_4
    if-nez v0, :cond_e

    if-eqz v7, :cond_e

    .line 2387
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2388
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_e
    move-object v7, v0

    :goto_5
    const-wide/16 v3, 0x0

    .line 2396
    :try_start_3
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2397
    :try_start_4
    invoke-virtual {v5, v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 2398
    invoke-virtual {v5, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2400
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-float v0, v8

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    double-to-int v0, v2

    int-to-long v3, v0

    .line 2407
    :cond_f
    :try_start_5
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 2410
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v2, v5

    goto/16 :goto_9

    :catch_4
    move-exception v0

    move-object v2, v5

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_9

    :catch_5
    move-exception v0

    .line 2403
    :goto_6
    :try_start_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_10

    .line 2407
    :try_start_7
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 2413
    :cond_10
    :goto_7
    invoke-static {v7, v14}, Lorg/telegram/messenger/SendMessagesHelper;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-2147483648_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".jpg"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2415
    new-instance v5, Ljava/io/File;

    const/4 v6, 0x4

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2417
    :try_start_8
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2418
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x37

    invoke-virtual {v2, v6, v8, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    .line 2420
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2422
    :goto_8
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 2424
    new-instance v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/16 v17, 0x0

    sget v18, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    add-int/lit8 v6, v18, -0x1

    sput v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    const-wide/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    const-wide/16 v26, 0x0

    move-object/from16 v16, v0

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v27}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    long-to-int v2, v3

    .line 2425
    iput v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    .line 2426
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    .line 2427
    invoke-virtual {v1, v0, v15, v14}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openPhotoViewer(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V

    goto :goto_b

    :goto_9
    if-eqz v2, :cond_11

    .line 2407
    :try_start_9
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 2410
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2412
    :cond_11
    :goto_a
    throw v3

    :cond_12
    :goto_b
    return-void
.end method

.method onButtonsTranslationYUpdated()V
    .locals 0

    .line 3241
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    .line 3242
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onContainerTranslationUpdated(F)V
    .locals 0

    .line 3483
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentPanTranslationY:F

    .line 3484
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    .line 3485
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onContainerViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 3522
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAnimationInProgress:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3524
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-eqz v0, :cond_1

    .line 3525
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onCustomLayout(Landroid/view/View;IIII)Z
    .locals 7

    sub-int v0, p4, p2

    sub-int p3, p5, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3583
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    const/16 v5, 0x60

    const/16 v6, 0x7e

    if-ne p1, v4, :cond_4

    const/16 p1, 0xde

    if-eqz v3, :cond_2

    .line 3585
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 3586
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int p1, p5, p1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p2, v2, p1, v0, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_1

    .line 3588
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int p2, p5, p2

    invoke-virtual {p1, v2, p2, v0, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_1

    .line 3591
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    .line 3592
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int p1, p4, p1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    sub-int/2addr p4, p5

    invoke-virtual {p2, p1, v2, p4, p3}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_1

    .line 3594
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int p2, p4, p2

    invoke-virtual {p1, p2, v2, p4, p3}, Landroid/widget/FrameLayout;->layout(IIII)V

    :goto_1
    return v1

    .line 3598
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    if-ne p1, v4, :cond_8

    const/16 p1, 0x104

    const/16 p2, 0x136

    const/16 v4, 0xb0

    if-eqz v3, :cond_6

    .line 3600
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p3

    if-nez p3, :cond_5

    .line 3601
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int p2, p5, p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr p5, p1

    invoke-virtual {p3, v2, p2, v0, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 3603
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int p2, p5, p2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p1, v2, p2, v0, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 3606
    :cond_6
    iget-object p5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p5

    if-nez p5, :cond_7

    .line 3607
    iget-object p5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int p2, p4, p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr p4, p1

    invoke-virtual {p5, p2, v2, p4, p3}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 3609
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int p2, p4, p2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    sub-int/2addr p4, p5

    invoke-virtual {p1, p2, v2, p4, p3}, Landroid/view/View;->layout(IIII)V

    :goto_2
    return v1

    .line 3613
    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    if-ne p1, v4, :cond_b

    const/16 p1, 0xa7

    if-eqz v3, :cond_9

    .line 3617
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    .line 3618
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr p5, p1

    .line 3619
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setRotation(F)V

    .line 3620
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a

    .line 3621
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr p5, p1

    goto :goto_3

    .line 3624
    :cond_9
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int v0, p4, p1

    .line 3625
    div-int/lit8 p3, p3, 0x2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int p5, p3, p1

    .line 3626
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    const/high16 p2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setRotation(F)V

    .line 3627
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a

    .line 3628
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr v0, p1

    .line 3631
    :cond_a
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, v0

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p5

    invoke-virtual {p1, v0, p5, p2, p3}, Landroid/widget/TextView;->layout(IIII)V

    return v1

    .line 3633
    :cond_b
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne p1, p4, :cond_d

    const/16 p4, 0x58

    if-eqz v3, :cond_c

    .line 3635
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p3, p2

    .line 3636
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p3

    invoke-virtual {p1, v2, p3, p2, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    :cond_c
    add-int/2addr p2, v0

    .line 3638
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    sub-int/2addr p2, p3

    .line 3639
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/view/View;->layout(IIII)V

    :goto_4
    return v1

    :cond_d
    return v2
.end method

.method public onCustomMeasure(Landroid/view/View;II)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3533
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    const/high16 v4, 0x40000000    # 2.0f

    if-ne p1, v3, :cond_1

    .line 3534
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    int-to-float p2, p2

    iget p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetBottomY:F

    sub-float/2addr p2, p3

    iget p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    sub-float/2addr p2, p3

    float-to-int p2, p2

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v3, p1, p2}, Landroid/widget/FrameLayout;->measure(II)V

    return v1

    .line 3536
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-ne p1, v3, :cond_2

    .line 3537
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAnimationInProgress:Z

    if-nez p1, :cond_9

    .line 3538
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result p2

    add-int/2addr p3, p2

    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v3, p1, p2}, Landroid/widget/FrameLayout;->measure(II)V

    return v1

    .line 3541
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    if-ne p1, v3, :cond_4

    const/16 p1, 0x7e

    if-eqz v2, :cond_3

    .line 3543
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {v3, p2, p1}, Landroid/widget/FrameLayout;->measure(II)V

    goto :goto_1

    .line 3545
    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v3, p1, p2}, Landroid/widget/FrameLayout;->measure(II)V

    :goto_1
    return v1

    .line 3548
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    if-ne p1, v3, :cond_6

    const/16 p1, 0x32

    if-eqz v2, :cond_5

    .line 3550
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {v3, p2, p1}, Landroid/view/View;->measure(II)V

    goto :goto_2

    .line 3552
    :cond_5
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    :goto_2
    return v1

    .line 3555
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne p1, v3, :cond_9

    .line 3556
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerViewIgnoreLayout:Z

    const/16 p1, 0x50

    const/16 v5, 0x8

    if-eqz v2, :cond_7

    .line 3558
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {v3, p2, p1}, Landroid/view/ViewGroup;->measure(II)V

    .line 3559
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    if-eqz p1, :cond_8

    .line 3560
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-virtual {p1, p2, v0, p3, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 3561
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 3562
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 3565
    :cond_7
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v3, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 3566
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    if-eq p1, v1, :cond_8

    .line 3567
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-virtual {p1, v0, p2, v0, p3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 3568
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 3569
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 3572
    :cond_8
    :goto_3
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerViewIgnoreLayout:Z

    return v1

    :cond_9
    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 3061
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3062
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onDismiss()Z
    .locals 2

    .line 3500
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAnimationInProgress:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3503
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-eqz v0, :cond_1

    .line 3504
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->closeCamera(Z)V

    return v1

    .line 3507
    :cond_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hideCamera(Z)V

    const/4 v0, 0x0

    return v0
.end method

.method onDismissWithButtonClick(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3495
    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hideCamera(Z)V

    return-void
.end method

.method onHidden()V
    .locals 3

    .line 3406
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 3407
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3408
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3410
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3411
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_1

    .line 3412
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isAttachSpoilerRevealed:Z

    goto :goto_0

    .line 3415
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onHide()V
    .locals 5

    const/4 v0, 0x1

    .line 3355
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isHidden:Z

    .line 3356
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3358
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3359
    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz v4, :cond_0

    .line 3360
    move-object v0, v3

    check-cast v0, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    .line 3361
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3362
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->saveLastCameraBitmap()V

    .line 3363
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;->updateBitmap()V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3368
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->headerAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_2

    .line 3369
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3371
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->headerAnimator:Landroid/view/ViewPropertyAnimator;

    .line 3372
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3374
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pauseCameraPreview()V

    return-void
.end method

.method onHideShowProgress(F)V
    .locals 1

    .line 3340
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_1

    .line 3341
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3342
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    .line 3343
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3344
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3345
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 3346
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 3347
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3348
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method onInit(ZZZ)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 3153
    :goto_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    .line 3154
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoEnabled:Z

    .line 3155
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->photoEnabled:Z

    .line 3156
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->documentsEnabled:Z

    .line 3157
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/high16 p2, 0x3f800000    # 1.0f

    const p3, 0x3e4ccccd    # 0.2f

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const v2, 0x3e4ccccd    # 0.2f

    .line 3158
    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3159
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 3161
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    .line 3162
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const p2, 0x3e4ccccd    # 0.2f

    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3163
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 3165
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p3, p2, Lorg/telegram/ui/ChatActivity;

    if-eqz p3, :cond_9

    iget p3, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez p3, :cond_9

    .line 3166
    sget-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 3167
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    if-eqz p1, :cond_6

    .line 3168
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget p2, Lorg/telegram/messenger/R$string;->NoPhotos:I

    const-string p3, "NoPhotos"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 3169
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {p1, v1, v1, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setLottie(III)V

    goto :goto_4

    .line 3171
    :cond_6
    check-cast p2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 3172
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget p3, Lorg/telegram/messenger/R$raw;->media_forbidden:I

    const/16 v2, 0x96

    invoke-virtual {p2, p3, v2, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setLottie(III)V

    const/4 p2, 0x7

    .line 3173
    invoke-static {p1, p2}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 3174
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget p2, Lorg/telegram/messenger/R$string;->GlobalAttachMediaRestricted:I

    const-string p3, "GlobalAttachMediaRestricted"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto :goto_4

    .line 3175
    :cond_7
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 3176
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget p2, Lorg/telegram/messenger/R$string;->AttachMediaRestrictedForever:I

    new-array p3, v1, [Ljava/lang/Object;

    const-string v2, "AttachMediaRestrictedForever"

    invoke-static {v2, p2, p3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto :goto_4

    .line 3178
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget p3, Lorg/telegram/messenger/R$string;->AttachMediaRestricted:I

    new-array v2, v0, [Ljava/lang/Object;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v3, p1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "AttachMediaRestricted"

    invoke-static {p1, p3, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto :goto_4

    .line 3182
    :cond_9
    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_a

    .line 3183
    sget-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_4

    .line 3185
    :cond_a
    sget-object p1, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 3188
    :goto_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_c

    .line 3189
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noGalleryPermissions:Z

    .line 3191
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    :goto_6
    const/16 p2, 0x64

    .line 3192
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object p3, p3, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ge p1, p2, :cond_d

    .line 3193
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object p2, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3194
    invoke-virtual {p2}, Lorg/telegram/messenger/MediaController$PhotoEntry;->reset()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 3197
    :cond_d
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->clearSelectedPhotos()V

    .line 3198
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updatePhotosCounter(Z)V

    .line 3199
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const p2, 0xf4240

    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 3200
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 3202
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->ChatGallery:I

    const-string p3, "ChatGallery"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3204
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz p1, :cond_e

    .line 3206
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loading:Z

    .line 3207
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz p1, :cond_e

    .line 3208
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 3211
    :cond_e
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateAlbumsDropDown()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 3420
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastNotifyWidth:I

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_0

    .line 3421
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastNotifyWidth:I

    .line 3422
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    if-eqz v0, :cond_0

    .line 3423
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 3426
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 3427
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    return-void
.end method

.method public onMenuItemClick(I)V
    .locals 9

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 2851
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    if-lez v1, :cond_1

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_1

    .line 2852
    check-cast v1, Lorg/telegram/ui/ChatActivity;

    .line 2853
    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2854
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->slowmode_enabled:Z

    if-eqz v1, :cond_1

    .line 2855
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->Slowmode:I

    const-string v1, "Slowmode"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->SlowmodeSendError:I

    const-string v2, "SlowmodeSendError"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/Components/AlertsCreator;->createSimpleAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    :cond_1
    if-nez p1, :cond_5

    .line 2861
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_2

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_2

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_4

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_4

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2862
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v5, p1

    check-cast v5, Lorg/telegram/ui/ChatActivity;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto/16 :goto_6

    .line 2867
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCaption()V

    .line 2868
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIZLjava/lang/String;Z)V

    goto/16 :goto_6

    :cond_5
    if-ne p1, v0, :cond_9

    .line 2871
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_6

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_6

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_8

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_8

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2872
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v5, p1

    check-cast v5, Lorg/telegram/ui/ChatActivity;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto/16 :goto_6

    .line 2877
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCaption()V

    .line 2878
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIZLjava/lang/String;Z)V

    goto/16 :goto_6

    :cond_9
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_10

    .line 2881
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 2882
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->startMediaCrossfade()V

    .line 2886
    :cond_a
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2887
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 2888
    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    if-eqz v1, :cond_b

    const/4 p1, 0x1

    goto :goto_0

    :cond_c
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    .line 2895
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V

    const-wide/16 v3, 0xc8

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2909
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2910
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2911
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v4, :cond_d

    .line 2912
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 2913
    iput-boolean p1, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    .line 2914
    iput-boolean v2, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->isChatPreviewSpoilerRevealed:Z

    .line 2915
    iput-boolean v2, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->isAttachSpoilerRevealed:Z

    .line 2916
    iget v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2920
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->forAllChild(Landroidx/core/util/Consumer;)V

    .line 2926
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCurrentAttachLayout()Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    if-eq p1, p0, :cond_f

    .line 2927
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 2930
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 2931
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->invalidateGroupsView()V

    goto/16 :goto_6

    :cond_10
    const/4 v3, 0x3

    if-ne p1, v3, :cond_15

    .line 2935
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v3, Lorg/telegram/ui/ChatActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0xe

    const-string v5, "image/*"

    const-string v6, "android.intent.action.PICK"

    if-nez v3, :cond_13

    :try_start_1
    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-ne p1, v1, :cond_11

    goto :goto_2

    .line 2952
    :cond_11
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2953
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2954
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v2, :cond_12

    .line 2955
    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, p1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 2957
    :cond_12
    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 2936
    :cond_13
    :goto_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "video/*"

    .line 2937
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    .line 2938
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.sizeLimit"

    const-wide/32 v7, 0x7d000000

    .line 2939
    invoke-virtual {p1, v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2941
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2942
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    .line 2943
    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.extra.INITIAL_INTENTS"

    new-array v5, v0, [Landroid/content/Intent;

    aput-object p1, v5, v2

    .line 2944
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2946
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v2, :cond_14

    .line 2947
    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 2949
    :cond_14
    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2960
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 2962
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_15
    const/4 v1, 0x5

    if-ne p1, v1, :cond_17

    .line 2965
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCurrentAttachLayout()Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object v3

    if-eq v1, v3, :cond_16

    goto :goto_4

    :cond_16
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatePhotoPreview(Z)V

    goto :goto_6

    :cond_17
    const/16 v0, 0xa

    if-lt p1, v0, :cond_19

    .line 2967
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownAlbums:Ljava/util/ArrayList;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 2968
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne p1, v0, :cond_18

    .line 2969
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->ChatGallery:I

    const-string v1, "ChatGallery"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 2971
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    iget-object p1, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2973
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 2974
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 2975
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_19
    :goto_6
    return-void
.end method

.method onOpenAnimationEnd()V
    .locals 1

    .line 3490
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    return-void
.end method

.method onPause()V
    .locals 4

    .line 3067
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    if-nez v0, :cond_0

    return-void

    .line 3070
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->requestingPermissions:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 3071
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShutterButton;->getState()Lorg/telegram/ui/Components/ShutterButton$State;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-ne v0, v1, :cond_1

    .line 3072
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->resetRecordState()V

    .line 3073
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;Z)V

    .line 3074
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->DEFAULT:Lorg/telegram/ui/Components/ShutterButton$State;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ShutterButton;->setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V

    .line 3076
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-eqz v0, :cond_2

    .line 3077
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->closeCamera(Z)V

    .line 3079
    :cond_2
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hideCamera(Z)V

    goto :goto_0

    .line 3081
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShutterButton;->getState()Lorg/telegram/ui/Components/ShutterButton$State;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-ne v0, v1, :cond_4

    .line 3082
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->DEFAULT:Lorg/telegram/ui/Components/ShutterButton$State;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ShutterButton;->setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V

    .line 3084
    :cond_4
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->requestingPermissions:Z

    :goto_0
    return-void
.end method

.method public onPreMeasure(II)V
    .locals 5

    const/4 v0, 0x1

    .line 3432
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->ignoreLayout:Z

    .line 3433
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    .line 3434
    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    goto :goto_0

    .line 3435
    :cond_0
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v3, v1, :cond_1

    .line 3436
    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 3438
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    .line 3440
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3441
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v1, 0xc

    .line 3443
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr p1, v1

    const/16 v1, 0xa

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    div-int/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    .line 3445
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastItemSize:I

    if-eq v1, p1, :cond_2

    .line 3446
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastItemSize:I

    .line 3447
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3450
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    mul-int v1, v1, v2

    const/4 v2, 0x5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    sub-int/2addr v4, v0

    mul-int v3, v3, v4

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 3451
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    .line 3452
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    mul-int v1, v1, p1

    sub-int/2addr p1, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    mul-int p1, p1, v0

    add-int/2addr v1, p1

    sub-int p1, p2, v1

    .line 3453
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sub-int/2addr p1, v0

    const/16 v0, 0x3c

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3454
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridExtraSpace:I

    if-eq v1, p1, :cond_3

    .line 3455
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridExtraSpace:I

    .line 3456
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 3459
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v1, p1, :cond_4

    int-to-float p1, p2

    const/high16 p2, 0x40600000    # 3.5f

    div-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_1

    .line 3462
    :cond_4
    div-int/2addr p2, v2

    mul-int/lit8 p1, p2, 0x2

    :goto_1
    const/16 p2, 0x34

    .line 3464
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_5

    const/4 p1, 0x0

    .line 3468
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    if-eq p2, p1, :cond_6

    .line 3469
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v3, 0x30

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {p2, v2, p1, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 3471
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-nez p2, :cond_7

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-le v1, p2, :cond_7

    const/high16 p2, 0x41900000    # 18.0f

    goto :goto_2

    :cond_7
    const/high16 p2, 0x41a00000    # 20.0f

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3472
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->ignoreLayout:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 3091
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3092
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    :cond_0
    return-void
.end method

.method onSelectedItemsCountChanged(I)V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    .line 2986
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v4, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_0

    goto :goto_0

    .line 2995
    :cond_0
    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto :goto_1

    .line 2987
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    if-nez p1, :cond_2

    .line 2989
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2990
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_1

    .line 2992
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    :goto_1
    if-eqz p1, :cond_3

    .line 2998
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3000
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->compressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->documentsEnabled:Z

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    if-le p1, v2, :cond_5

    .line 3002
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3003
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3004
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->compressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->SendAsFiles:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 3006
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3007
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    if-eqz p1, :cond_6

    .line 3009
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->compressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->SendAsFile:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    const/4 v0, 0x2

    if-eqz p1, :cond_8

    .line 3012
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_7

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    .line 3017
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto :goto_5

    .line 3013
    :cond_8
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->EnablePhotoSpoiler:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 3014
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$raw;->photo_spoiler:I

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setAnimatedIcon(I)V

    .line 3015
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    :goto_5
    return-void
.end method

.method public onSheetKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 3513
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-eqz p2, :cond_1

    const/16 p2, 0x18

    if-eq p1, p2, :cond_0

    const/16 p2, 0x19

    if-eq p1, p2, :cond_0

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_0

    const/16 p2, 0x55

    if-ne p1, p2, :cond_1

    .line 3514
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ShutterButton;->getDelegate()Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;->shutterReleased()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 5

    .line 3280
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->headerAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3281
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3283
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3284
    instance-of v0, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    .line 3285
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onSelectedItemsCountChanged(I)V

    .line 3286
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->clearSelectedPhotos()V

    .line 3287
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 3289
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->headerAnimator:Landroid/view/ViewPropertyAnimator;

    .line 3290
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3292
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3294
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    if-eqz v0, :cond_2

    .line 3296
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    .line 3301
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3304
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    .line 3306
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->resumeCameraPreview()V

    return-void
.end method

.method onShown()V
    .locals 5

    const/4 v0, 0x0

    .line 3311
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isHidden:Z

    .line 3312
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v1, :cond_0

    .line 3313
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3315
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 3316
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3318
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v1, :cond_3

    .line 3319
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 3321
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3322
    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz v4, :cond_2

    const/4 v1, 0x4

    .line 3323
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3328
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraWhenShown:Z

    if-eqz v1, :cond_4

    .line 3329
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraWhenShown:Z

    const/4 v0, 0x1

    .line 3330
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    :cond_4
    return-void
.end method

.method protected openPhotoViewer(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1664
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1665
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    iget v2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1667
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCountButton(I)V

    .line 1668
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 1669
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-nez p3, :cond_2

    .line 1671
    sget-object p3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p3, v1, :cond_2

    .line 1672
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updatePhotosCounter(Z)V

    .line 1673
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz p1, :cond_1

    .line 1674
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    .line 1675
    iput p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    .line 1676
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/camera/CameraView;->setZoom(F)V

    .line 1677
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {p2}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/camera/CameraController;->startPreview(Lorg/telegram/messenger/camera/CameraSession;)V

    :cond_1
    return-void

    .line 1681
    :cond_2
    sget-object p3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    .line 1684
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cancelTakingPhotos:Z

    .line 1685
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p3

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p3, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1686
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p3

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p3, v2}, Lorg/telegram/ui/PhotoViewer;->setParentAlert(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 1687
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p3

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    invoke-virtual {p3, v3, v2}, Lorg/telegram/ui/PhotoViewer;->setMaxSelectedPhotos(IZ)V

    .line 1691
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v2, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    move-object v10, v3

    const/4 v7, 0x1

    goto :goto_0

    .line 1694
    :cond_4
    iget-object p3, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, p3, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_5

    .line 1695
    move-object v3, p3

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    const/4 p3, 0x2

    move-object v10, v3

    const/4 v7, 0x2

    goto :goto_0

    :cond_5
    const/4 p3, 0x5

    move-object v10, v3

    const/4 v7, 0x5

    :goto_0
    if-eqz v2, :cond_6

    .line 1704
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1705
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, p3

    const/4 v6, 0x0

    goto :goto_1

    .line 1708
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getAllPhotosArray()Ljava/util/ArrayList;

    move-result-object p3

    .line 1709
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    move-object v5, p3

    move v6, v0

    .line 1711
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object p3

    if-eqz p3, :cond_7

    if-eqz p1, :cond_7

    .line 1712
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object p3

    iget-boolean p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    iput-boolean p1, p3, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;->isVideo:Z

    .line 1714
    :cond_7
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    const/4 v8, 0x0

    new-instance v9, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;

    invoke-direct {v9, p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    .line 1842
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer;->setAvatarFor(Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 3269
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 3272
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 2838
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public setCameraOpenProgress(F)V
    .locals 19
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2537
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v2, :cond_0

    return-void

    .line 2540
    :cond_0
    iput v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpenProgress:F

    .line 2541
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animateCameraValues:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    int-to-float v4, v4

    const/4 v5, 0x2

    .line 2542
    aget v2, v2, v5

    int-to-float v2, v2

    .line 2543
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 2544
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getLeftInset()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getRightInset()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 2545
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    .line 2547
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    const/4 v8, 0x0

    aget v9, v7, v8

    .line 2548
    aget v10, v7, v3

    .line 2550
    iget v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->additionCloseCameraY:F

    const/4 v12, 0x0

    cmpl-float v13, v1, v12

    if-nez v13, :cond_1

    .line 2553
    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    aget v7, v7, v8

    invoke-virtual {v13, v7}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2554
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aget v3, v8, v3

    iget v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    add-float/2addr v3, v8

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2559
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 2561
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v7, v4, v2}, Lorg/telegram/messenger/camera/CameraView;->getTextureHeight(FF)F

    move-result v7

    .line 2562
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v8, v5, v6}, Lorg/telegram/messenger/camera/CameraView;->getTextureHeight(FF)F

    move-result v8

    div-float/2addr v7, v8

    div-float v8, v2, v6

    div-float v13, v4, v5

    .line 2571
    iget-boolean v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraExpanded:Z

    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v14, :cond_2

    float-to-int v14, v5

    float-to-int v12, v6

    sub-float v17, v15, v1

    mul-float v7, v7, v17

    add-float/2addr v7, v1

    .line 2575
    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v15}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/view/TextureView;->setScaleX(F)V

    .line 2576
    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v15}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/view/TextureView;->setScaleY(F)V

    mul-float v13, v13, v17

    add-float/2addr v13, v1

    mul-float v8, v8, v17

    add-float/2addr v8, v1

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v15, v7, v8

    mul-float v15, v15, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v15, v8

    sub-float v13, v7, v13

    mul-float v13, v13, v5

    div-float/2addr v13, v8

    .line 2584
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    mul-float v8, v9, v17

    const/16 v16, 0x0

    mul-float v18, v1, v16

    add-float v18, v8, v18

    sub-float v13, v18, v13

    invoke-virtual {v7, v13}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2585
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    mul-float v13, v10, v17

    mul-float v11, v11, v1

    add-float/2addr v11, v13

    sub-float/2addr v11, v15

    invoke-virtual {v7, v11}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2586
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v7

    sub-float/2addr v13, v7

    iput v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipTop:F

    add-float/2addr v10, v2

    mul-float v10, v10, v17

    .line 2587
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    sub-float/2addr v10, v2

    mul-float v6, v6, v1

    add-float/2addr v10, v6

    iput v10, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipBottom:F

    .line 2589
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v2

    sub-float/2addr v8, v2

    iput v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipLeft:F

    add-float/2addr v9, v4

    mul-float v9, v9, v17

    .line 2590
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v2

    sub-float/2addr v9, v2

    mul-float v5, v5, v1

    add-float/2addr v9, v5

    iput v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipRight:F

    goto :goto_0

    :cond_2
    float-to-int v14, v4

    float-to-int v12, v2

    .line 2594
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/view/TextureView;->setScaleX(F)V

    .line 2595
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/TextureView;->setScaleY(F)V

    const/4 v2, 0x0

    .line 2596
    iput v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipTop:F

    .line 2597
    iput v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipBottom:F

    .line 2598
    iput v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipLeft:F

    .line 2599
    iput v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipRight:F

    .line 2601
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2602
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :goto_0
    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v4, v1, v2

    if-gtz v4, :cond_3

    .line 2606
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v15, v2, v1

    invoke-virtual {v4, v15}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_1

    .line 2608
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2611
    :goto_1
    iget v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v1, v14, :cond_4

    iget v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v1, v12, :cond_5

    .line 2612
    :cond_4
    iput v14, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2613
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2614
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 2616
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_6

    .line 2617
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidateOutline()V

    goto :goto_2

    .line 2619
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_2
    return-void
.end method

.method public setCheckCameraWhenShown(Z)V
    .locals 0

    .line 3335
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraWhenShown:Z

    return-void
.end method

.method public setTranslationY(F)V
    .locals 6

    .line 3247
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetAnimationType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const v0, -0x42333333    # -0.1f

    const/high16 v1, 0x42200000    # 40.0f

    div-float v1, p1, v1

    mul-float v1, v1, v0

    const/4 v0, 0x0

    .line 3249
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    .line 3250
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3251
    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_0

    .line 3252
    check-cast v3, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    .line 3253
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    add-float/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 3254
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_1

    .line 3255
    :cond_0
    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v4, :cond_1

    .line 3256
    check-cast v3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 3257
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v4

    add-float/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    .line 3258
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3262
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3263
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 3264
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public showAvatarConstructorFragment(Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;Lorg/telegram/tgnet/TLRPC$VideoSize;)V
    .locals 3

    .line 1255
    new-instance v0, Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->parentImageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;-><init>(Lorg/telegram/ui/Components/ImageUpdater;Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;)V

    .line 1256
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->finishOnDone:Z

    .line 1257
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    if-eqz p1, :cond_2

    .line 1259
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->startFrom(Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 1262
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->startFrom(Lorg/telegram/tgnet/TLRPC$VideoSize;)V

    .line 1264
    :cond_3
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda19;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->setDelegate(Lorg/telegram/ui/Components/AvatarConstructorFragment$Delegate;)V

    return-void
.end method

.method public showCamera()V
    .locals 7

    .line 2098
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->paused:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2101
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_7

    .line 2102
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$18;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->openWithFrontFaceCamera:Z

    invoke-direct {v1, p0, v0, v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$18;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;Z)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    .line 2141
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_1

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->generateVideoPath(Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/camera/CameraView;->setRecordFile(Ljava/io/File;)V

    .line 2142
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2143
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->setFpsLimit(I)V

    .line 2144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 2145
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 2159
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 2161
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrInstantCamera:I

    const-string v4, "AccDescrInstantCamera"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2162
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2163
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$20;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$20;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->setDelegate(Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;)V

    .line 2219
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    if-nez v0, :cond_3

    .line 2220
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    .line 2234
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 2235
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 2237
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    const/4 v4, 0x2

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2239
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e4ccccd    # 0.2f

    if-eqz v1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    const v1, 0x3e4ccccd    # 0.2f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2240
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2241
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const v4, 0x3e4ccccd    # 0.2f

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2242
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2243
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isHidden:Z

    if-eqz v0, :cond_6

    .line 2244
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2245
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2247
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    .line 2248
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2250
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 2251
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    .line 2252
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    .line 2254
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2255
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aget v1, v1, v3

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentPanTranslationY:F

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2256
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2257
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aget v1, v1, v3

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    add-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentPanTranslationY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_9
    :goto_3
    return-void
.end method

.method public updateAvatarPicker()V
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showAvatarConstructor:Z

    return-void
.end method

.method protected updateCheckedPhotoIndices()V
    .locals 6

    .line 505
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 510
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 511
    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v4, :cond_1

    .line 512
    check-cast v3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 513
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getPhotoEntryAtPosition(I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 515
    sget-object v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v4, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setNum(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 519
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 521
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 522
    instance-of v3, v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v3, :cond_3

    .line 523
    check-cast v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 524
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getPhotoEntryAtPosition(I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 526
    sget-object v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setNum(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected updatePhotosCounter(Z)V
    .locals 7

    .line 1881
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1886
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1887
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1888
    iget-boolean v4, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 1897
    :cond_3
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 1899
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v6, "Media"

    invoke-static {v6, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1900
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentSelectedCount:I

    if-ne v0, v2, :cond_4

    if-eqz p1, :cond_9

    .line 1901
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MediaSelected"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_7

    .line 1904
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v6, "Videos"

    invoke-static {v6, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1905
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentSelectedCount:I

    if-ne v0, v2, :cond_6

    if-eqz p1, :cond_9

    .line 1906
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VideosSelected"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1909
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v6, "Photos"

    invoke-static {v6, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1910
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentSelectedCount:I

    if-ne v0, v2, :cond_8

    if-eqz p1, :cond_9

    .line 1911
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PhotosSelected"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1914
    :cond_9
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-le v0, v5, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCanOpenPreview(Z)V

    .line 1915
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentSelectedCount:I

    :cond_b
    :goto_2
    return-void
.end method

.method public updateSelected(Ljava/util/HashMap;Ljava/util/ArrayList;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 2789
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2790
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2791
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2792
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_6

    const/4 p1, 0x0

    .line 2794
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updatePhotosCounter(Z)V

    .line 2795
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateCheckedPhotoIndices()V

    .line 2797
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_6

    .line 2799
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2800
    instance-of v1, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v1, :cond_5

    .line 2801
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 2802
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->access$5500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 2806
    :cond_0
    check-cast v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 2807
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v2, :cond_1

    .line 2808
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2810
    :cond_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getPhotoEntryAtPosition(I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2812
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->access$5500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v3, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne v1, v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V

    .line 2813
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v3, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_4

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    if-eqz v1, :cond_4

    .line 2814
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    iget v2, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    goto :goto_3

    .line 2816
    :cond_4
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    iget v2, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1, p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    :cond_5
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method
