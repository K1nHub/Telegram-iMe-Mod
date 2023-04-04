.class public Lorg/telegram/ui/Components/ProfileGalleryView;
.super Lorg/telegram/ui/Components/CircularViewPager;
.source "ProfileGalleryView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ProfileGalleryView$TextureStubView;,
        Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;,
        Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;,
        Lorg/telegram/ui/Components/ProfileGalleryView$Callback;,
        Lorg/telegram/ui/Components/ProfileGalleryView$Item;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

.field private final callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

.field private chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private createThumbFromParent:Z

.field curreantUploadingThumbLocation:Lorg/telegram/messenger/ImageLocation;

.field private currentAccount:I

.field currentUploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

.field private customAvatarIndex:I

.field private dialogId:J

.field private final downPoint:Landroid/graphics/PointF;

.field private fallbackPhotoIndex:I

.field private forceResetPosition:Z

.field private hasActiveVideo:Z

.field private imagesLayerNum:I

.field private imagesLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/ImageLocation;",
            ">;"
        }
    .end annotation
.end field

.field private imagesLocationsSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private imagesUploadProgress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private invalidateWithParent:Z

.field private isDownReleased:Z

.field private final isProfileFragment:Z

.field private isScrollingListView:Z

.field private isSwipingViewPager:Z

.field private final parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private final parentClassGuid:I

.field private final parentListView:Lorg/telegram/ui/Components/RecyclerListView;

.field path:Landroid/graphics/Path;

.field private photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Photo;",
            ">;"
        }
    .end annotation
.end field

.field pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

.field private prevImageLocation:Lorg/telegram/messenger/ImageLocation;

.field prevPage:I

.field private prevThumbLocation:Lorg/telegram/messenger/ImageLocation;

.field private prevVectorAvatarThumbDrawable:Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

.field private final radialProgresses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/ui/Components/RadialProgress2;",
            ">;"
        }
    .end annotation
.end field

.field radii:[F

.field rect:Landroid/graphics/RectF;

.field private roundBottomRadius:I

.field private roundTopRadius:I

.field public scrolledByUser:Z

.field selectedPage:I

.field private settingMainPhoto:I

.field private thumbsFileNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private thumbsLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/ImageLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final touchSlop:I

.field private uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

.field private vectorAvatars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private videoFileNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/ImageLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;JLorg/telegram/ui/ActionBar/ActionBar;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ProfileActivity$AvatarImageView;ILorg/telegram/ui/Components/ProfileGalleryView$Callback;)V
    .locals 7

    .line 258
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CircularViewPager;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->downPoint:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    .line 50
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    .line 63
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    .line 65
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->path:Landroid/graphics/Path;

    .line 66
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->rect:Landroid/graphics/RectF;

    const/16 v1, 0x8

    new-array v2, v1, [F

    .line 67
    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radii:[F

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    .line 84
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    .line 86
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->createThumbFromParent:Z

    const/4 v2, -0x1

    .line 92
    iput v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->customAvatarIndex:I

    .line 93
    iput v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->fallbackPhotoIndex:I

    .line 259
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v1, 0x2

    .line 260
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 261
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 263
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isProfileFragment:Z

    .line 264
    iput-wide p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    .line 265
    iput-object p5, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 266
    iput p7, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentClassGuid:I

    .line 267
    iput-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 268
    new-instance p5, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p5, p0, v0, p6, p4}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView;Landroid/content/Context;Lorg/telegram/ui/ProfileActivity$AvatarImageView;Lorg/telegram/ui/ActionBar/ActionBar;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {p0, p5}, Lorg/telegram/ui/Components/CircularViewPager;->setAdapter(Lorg/telegram/ui/Components/CircularViewPager$Adapter;)V

    .line 269
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->touchSlop:I

    .line 270
    iput-object p8, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    .line 272
    new-instance p1, Lorg/telegram/ui/Components/ProfileGalleryView$2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ProfileGalleryView$2;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView;)V

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 330
    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p4, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    invoke-virtual {p1, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 331
    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p4, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p1, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 332
    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p4, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {p1, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 333
    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p4, Lorg/telegram/messenger/NotificationCenter;->reloadDialogPhotos:I

    invoke-virtual {p1, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 334
    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-wide v1, p2

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(JIIZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Components/ProfileGalleryView$Callback;)V
    .locals 2

    .line 141
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CircularViewPager;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->downPoint:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    .line 50
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    .line 63
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    .line 65
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->path:Landroid/graphics/Path;

    .line 66
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->rect:Landroid/graphics/RectF;

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 67
    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radii:[F

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    .line 84
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    .line 86
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->createThumbFromParent:Z

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->customAvatarIndex:I

    .line 93
    iput v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->fallbackPhotoIndex:I

    const/4 v0, 0x2

    .line 142
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isProfileFragment:Z

    .line 145
    iput-object p3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 146
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentClassGuid:I

    .line 147
    iput-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 148
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->touchSlop:I

    .line 149
    iput-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    .line 151
    new-instance p1, Lorg/telegram/ui/Components/ProfileGalleryView$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ProfileGalleryView$1;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView;)V

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 216
    new-instance p1, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p1, p0, p3, p4, p2}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView;Landroid/content/Context;Lorg/telegram/ui/ProfileActivity$AvatarImageView;Lorg/telegram/ui/ActionBar/ActionBar;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CircularViewPager;->setAdapter(Lorg/telegram/ui/Components/CircularViewPager$Adapter;)V

    .line 218
    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 219
    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 220
    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 221
    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->reloadDialogPhotos:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ProfileGalleryView;IF)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ProfileGalleryView;->checkCustomAvatar(IF)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ProfileGalleryView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isProfileFragment:Z

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ProfileGalleryView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->createThumbFromParent:Z

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ProfileGalleryView;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/messenger/ImageLocation;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ProfileGalleryView;)Landroid/util/SparseArray;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ProfileGalleryView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->hasActiveVideo:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ProfileGalleryView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->invalidateWithParent:Z

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/ui/Components/ProfileGalleryView$Callback;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ProfileGalleryView;)I
    .locals 0

    .line 44
    iget p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->roundTopRadius:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ProfileGalleryView;)I
    .locals 0

    .line 44
    iget p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->roundBottomRadius:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ProfileGalleryView;)I
    .locals 0

    .line 44
    iget p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLayerNum:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ProfileGalleryView;)I
    .locals 0

    .line 44
    iget p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    return-object p0
.end method

.method private checkCustomAvatar(IF)V
    .locals 5

    .line 226
    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->customAvatarIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->fallbackPhotoIndex:I

    if-ltz v2, :cond_7

    :cond_0
    if-ltz v0, :cond_1

    goto :goto_0

    .line 227
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->fallbackPhotoIndex:I

    .line 228
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;->getRealPosition(I)I

    move-result p1

    .line 229
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->hasActiveVideo:Z

    if-eqz v2, :cond_2

    add-int/lit8 p1, p1, -0x1

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_3

    sub-float p1, v2, p2

    goto :goto_1

    :cond_3
    add-int/lit8 v3, p1, -0x1

    .line 234
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealCount()I

    move-result v4

    rem-int/2addr v3, v4

    if-ne v3, v0, :cond_4

    sub-float p1, v2, p2

    sub-float/2addr p1, v2

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 236
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealCount()I

    move-result v3

    rem-int/2addr p1, v3

    if-ne p1, v0, :cond_5

    sub-float p1, v2, p2

    add-float/2addr p1, v2

    goto :goto_1

    :cond_5
    move p1, v1

    :goto_1
    cmpl-float p2, p1, v2

    if-lez p2, :cond_6

    const/high16 p2, 0x40000000    # 2.0f

    sub-float p1, p2, p1

    .line 244
    :cond_6
    invoke-static {p1, v2, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    .line 246
    :cond_7
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ProfileGalleryView;->setCustomAvatarProgress(F)V

    return-void
.end method

.method private loadNeighboringThumbs()V
    .locals 11

    .line 796
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-ge v2, v3, :cond_2

    if-nez v2, :cond_1

    move v3, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v0, -0x1

    .line 800
    :goto_2
    iget v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    iget-object v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lorg/telegram/messenger/ImageLocation;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private reset()V
    .locals 1

    .line 1263
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1264
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1265
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1266
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1267
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1268
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1269
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1270
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1271
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 1272
    invoke-virtual {p0, v0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 1273
    iput v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->selectedPage:I

    const/4 v0, 0x0

    .line 1274
    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 1275
    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    return-void
.end method


# virtual methods
.method public addUploadingImage(Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;)V
    .locals 3

    .line 555
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 556
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 557
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 558
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 559
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 560
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 561
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 562
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 565
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->notifyDataSetChanged()V

    .line 566
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    .line 568
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentUploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 569
    iput-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->curreantUploadingThumbLocation:Lorg/telegram/messenger/ImageLocation;

    return-void
.end method

.method public commitMoveToBegin()V
    .locals 1

    .line 757
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->notifyDataSetChanged()V

    .line 758
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 808
    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_25

    const/4 v1, 0x3

    .line 809
    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 810
    aget-object v2, p3, v5

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 811
    iget-wide v9, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    cmp-long v2, v7, v9

    if-nez v2, :cond_2d

    iget v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentClassGuid:I

    if-ne v2, v1, :cond_2d

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    if-eqz v1, :cond_2d

    .line 812
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 813
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x4

    aget-object v6, p3, v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 814
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v6, -0x1

    .line 818
    iput v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->customAvatarIndex:I

    .line 819
    iput v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->fallbackPhotoIndex:I

    .line 820
    iget v9, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    .line 821
    iget v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 822
    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v11, :cond_1

    .line 823
    invoke-virtual {v2, v5, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 824
    iput v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->customAvatarIndex:I

    :cond_1
    if-eqz v9, :cond_2

    .line 826
    iget-boolean v11, v9, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v11, :cond_2

    .line 827
    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->hasFallbackPhoto(Lorg/telegram/tgnet/TLRPC$UserFull;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 828
    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v4

    iput v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->fallbackPhotoIndex:I

    .line 832
    :cond_2
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 833
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 834
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 835
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 836
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 837
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 838
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 839
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 840
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 842
    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v10

    const/16 v11, 0x3e8

    const/4 v12, 0x0

    if-eqz v10, :cond_5

    .line 843
    iget v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    neg-long v13, v7

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    .line 844
    invoke-static {v10, v5}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 846
    iget-object v14, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    iget-object v14, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-static {v10, v4}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v10, :cond_4

    iget-object v14, v13, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v14, v10}, Lorg/telegram/messenger/FileLoader;->isSamePhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$Photo;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 851
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    iget-object v14, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 853
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-static {v10, v11}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v10

    .line 854
    iget-object v14, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    iget-object v15, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v10, v15}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    iget-object v14, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 857
    :cond_3
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 861
    :cond_4
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    :goto_0
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v13, v12

    :cond_6
    :goto_1
    move v10, v5

    .line 869
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v10, v14, :cond_1d

    .line 870
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v14, :cond_1c

    .line 871
    instance-of v15, v14, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-nez v15, :cond_1c

    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-nez v15, :cond_7

    goto/16 :goto_e

    :cond_7
    const/16 v4, 0x32

    .line 874
    invoke-static {v15, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    .line 875
    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move v6, v5

    :goto_3
    if-ge v6, v15, :cond_9

    .line 876
    iget-object v3, v14, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 877
    instance-of v12, v3, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v12, :cond_8

    move-object v4, v3

    goto :goto_4

    :cond_8
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x2

    const/4 v12, 0x0

    goto :goto_3

    :cond_9
    :goto_4
    if-eqz v13, :cond_e

    .line 884
    iget-object v3, v14, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v5

    :goto_5
    if-ge v6, v3, :cond_d

    .line 885
    iget-object v12, v14, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 886
    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v12, :cond_b

    iget v15, v12, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget-object v11, v13, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget v5, v11, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v15, v5, :cond_b

    move-object v5, v2

    move v15, v3

    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v2, v2, v11

    if-nez v2, :cond_c

    .line 887
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 888
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 889
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    iget-object v6, v14, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    const/16 v11, 0x3e8

    invoke-static {v6, v11}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v6

    invoke-static {v6, v14}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    move-object v5, v2

    move v15, v3

    :cond_c
    add-int/lit8 v6, v6, 0x1

    move-object v2, v5

    move v3, v15

    const/4 v5, 0x0

    const/16 v11, 0x3e8

    goto :goto_5

    :cond_d
    move-object v5, v2

    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_f

    goto/16 :goto_d

    :cond_e
    move-object v5, v2

    .line 899
    :cond_f
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v3, 0x280

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 901
    iget v3, v14, Lorg/telegram/tgnet/TLRPC$Photo;->dc_id:I

    if-eqz v3, :cond_10

    .line 902
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput v3, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 903
    iget-object v3, v14, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    iput-object v3, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->file_reference:[B

    .line 905
    :cond_10
    invoke-static {v2, v14}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 907
    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    if-eqz v6, :cond_15

    iget-wide v11, v6, Lorg/telegram/messenger/ImageLocation;->photoId:J

    move-object v15, v5

    iget-wide v5, v3, Lorg/telegram/messenger/ImageLocation;->photoId:J

    cmp-long v5, v11, v5

    if-nez v5, :cond_16

    iget-boolean v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->isProfileFragment:Z

    if-nez v5, :cond_16

    iget-wide v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    iget v11, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    cmp-long v5, v5, v11

    if-eqz v5, :cond_16

    .line 908
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevThumbLocation:Lorg/telegram/messenger/ImageLocation;

    if-nez v2, :cond_11

    .line 913
    invoke-static {v4, v14}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    .line 915
    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 918
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v2

    .line 919
    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->getVectorMarkupVideoSize(Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 921
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    if-eqz v9, :cond_12

    iget-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    goto :goto_7

    :cond_12
    const/4 v5, 0x0

    :goto_7
    const/4 v6, 0x2

    invoke-direct {v4, v3, v5, v6}, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$VideoSize;ZI)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_13
    const/4 v3, 0x0

    .line 925
    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    iget-object v3, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-static {v2, v14}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    iget-object v3, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    const/4 v3, 0x0

    goto :goto_9

    .line 930
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevVectorAvatarThumbDrawable:Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v3

    goto/16 :goto_f

    :cond_15
    move-object v15, v5

    :cond_16
    const/4 v5, -0x1

    .line 938
    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    iget-object v3, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v6, :cond_17

    move-object v6, v2

    goto :goto_a

    :cond_17
    move-object v6, v4

    :goto_a
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    iget-object v3, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-static {v4, v14}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    iget-object v3, v14, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 943
    iget-object v3, v14, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    const/16 v4, 0x3e8

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v3

    .line 944
    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->getVectorMarkupVideoSize(Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 946
    iget-object v3, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    if-eqz v9, :cond_18

    iget-boolean v12, v9, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    if-eqz v12, :cond_18

    const/4 v4, 0x2

    const/4 v12, 0x1

    goto :goto_b

    :cond_18
    const/4 v4, 0x2

    const/4 v12, 0x0

    :goto_b
    invoke-direct {v11, v6, v12, v4}, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$VideoSize;ZI)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    iget-object v3, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    iget-object v3, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_19
    const/4 v4, 0x0

    .line 950
    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-static {v3, v14}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1a
    const/4 v4, 0x0

    .line 955
    iget-object v3, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    iget-object v3, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    iget-object v3, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    :goto_c
    iget-object v3, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    iget-object v3, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1b
    :goto_d
    move-object v15, v5

    const/4 v4, 0x0

    const/4 v5, -0x1

    goto :goto_f

    :cond_1c
    :goto_e
    move-object v15, v2

    move v5, v6

    move-object v4, v12

    :goto_f
    add-int/lit8 v10, v10, 0x1

    move-object v12, v4

    move v6, v5

    move-object v2, v15

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v11, 0x3e8

    goto/16 :goto_2

    .line 966
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->loadNeighboringThumbs()V

    .line 967
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 968
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->isProfileFragment:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    .line 969
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->scrolledByUser:Z

    if-eqz v2, :cond_1e

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->forceResetPosition:Z

    if-eqz v2, :cond_21

    .line 970
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    goto :goto_10

    .line 973
    :cond_1f
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->scrolledByUser:Z

    if-eqz v2, :cond_20

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->forceResetPosition:Z

    if-eqz v2, :cond_21

    .line 974
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    .line 975
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 976
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealPosition()I

    move-result v2

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/ProfileGalleryView;->checkCustomAvatar(IF)V

    .line 980
    :cond_21
    :goto_10
    iget v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->fallbackPhotoIndex:I

    if-gez v2, :cond_22

    iget v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->customAvatarIndex:I

    if-gez v2, :cond_22

    const/4 v2, 0x0

    .line 981
    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/ProfileGalleryView;->checkCustomAvatar(IF)V

    goto :goto_11

    :cond_22
    const/4 v2, 0x0

    .line 984
    :goto_11
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->forceResetPosition:Z

    if-eqz v1, :cond_23

    .line 987
    iget v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    const/16 v9, 0x50

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentClassGuid:I

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(JIIZI)V

    .line 989
    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    if-eqz v1, :cond_24

    .line 990
    invoke-interface {v1}, Lorg/telegram/ui/Components/ProfileGalleryView$Callback;->onPhotosLoaded()V

    .line 992
    :cond_24
    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentUploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    if-eqz v1, :cond_2d

    .line 993
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->curreantUploadingThumbLocation:Lorg/telegram/messenger/ImageLocation;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->addUploadingImage(Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;)V

    goto/16 :goto_15

    .line 996
    :cond_25
    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v1, v2, :cond_28

    const/4 v2, 0x0

    .line 997
    aget-object v1, p3, v2

    check-cast v1, Ljava/lang/String;

    const/4 v5, 0x0

    .line 998
    :goto_12
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_2d

    .line 999
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_26

    .line 1001
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_26
    if-eqz v2, :cond_27

    .line 1003
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1004
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RadialProgress2;

    if-eqz v2, :cond_27

    const/4 v4, 0x1

    .line 1006
    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 1010
    :cond_28
    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    if-ne v1, v2, :cond_2b

    const/4 v2, 0x0

    .line 1011
    aget-object v1, p3, v2

    check-cast v1, Ljava/lang/String;

    move v5, v2

    .line 1012
    :goto_13
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_2d

    .line 1013
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_29

    .line 1015
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_29
    if-eqz v2, :cond_2a

    .line 1017
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1018
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RadialProgress2;

    if-eqz v2, :cond_2a

    const/4 v4, 0x1

    .line 1020
    aget-object v6, p3, v4

    check-cast v6, Ljava/lang/Long;

    const/4 v7, 0x2

    .line 1021
    aget-object v8, p3, v7

    check-cast v8, Ljava/lang/Long;

    .line 1022
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    long-to-float v6, v9

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v8, v8

    div-float/2addr v6, v8

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1023
    invoke-virtual {v2, v6, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto :goto_14

    :cond_2a
    const/4 v4, 0x1

    const/4 v7, 0x2

    :goto_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 1027
    :cond_2b
    sget v2, Lorg/telegram/messenger/NotificationCenter;->reloadDialogPhotos:I

    if-ne v1, v2, :cond_2d

    .line 1028
    iget v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->settingMainPhoto:I

    if-eqz v1, :cond_2c

    return-void

    .line 1031
    :cond_2c
    iget v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    const/16 v5, 0x50

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget v8, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentClassGuid:I

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(JIIZI)V

    :cond_2d
    :goto_15
    return-void
.end method

.method public findVideoActiveView()Landroid/view/View;
    .locals 4

    .line 103
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->hasActiveVideo:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 107
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 108
    instance-of v3, v2, Lorg/telegram/ui/Components/ProfileGalleryView$TextureStubView;

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public finishSettingMainPhoto()V
    .locals 1

    .line 711
    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->settingMainPhoto:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->settingMainPhoto:I

    return-void
.end method

.method public getCurrentItemProgress()F
    .locals 2

    .line 629
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentItemView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 633
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 637
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getCurrentProgress()F

    move-result v0

    return v0
.end method

.method public getCurrentItemView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 2

    .line 609
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->access$600(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->access$600(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    invoke-static {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentVideoLocation(Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;)Lorg/telegram/messenger/ImageLocation;
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_7

    if-nez v2, :cond_1

    .line 656
    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    .line 657
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_6

    .line 658
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/ImageLocation;

    if-eqz v6, :cond_5

    .line 659
    iget-object v7, v6, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    if-nez v7, :cond_2

    goto :goto_3

    .line 662
    :cond_2
    iget v6, v6, Lorg/telegram/messenger/ImageLocation;->dc_id:I

    iget v8, p1, Lorg/telegram/messenger/ImageLocation;->dc_id:I

    if-ne v6, v8, :cond_3

    iget v8, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget-object v9, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget v10, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v8, v10, :cond_3

    iget-wide v10, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v8, v10, v8

    if-eqz v8, :cond_4

    :cond_3
    iget v8, p2, Lorg/telegram/messenger/ImageLocation;->dc_id:I

    if-ne v6, v8, :cond_5

    iget v6, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget-object v8, p2, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v6, v9, :cond_5

    iget-wide v6, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 664
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    return-object p1

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method public getDialogId()J
    .locals 2

    .line 1259
    iget-wide v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    return-wide v0
.end method

.method public getImageLocation(I)Lorg/telegram/messenger/ImageLocation;
    .locals 1

    if-ltz p1, :cond_2

    .line 580
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLocation;

    if-eqz v0, :cond_1

    return-object v0

    .line 587
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPhoto(I)Lorg/telegram/tgnet/TLRPC$Photo;
    .locals 1

    if-ltz p1, :cond_1

    .line 693
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 696
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Photo;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRealCount()I
    .locals 2

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 678
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->hasActiveVideo:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getRealImageLocation(I)Lorg/telegram/messenger/ImageLocation;
    .locals 1

    if-ltz p1, :cond_1

    .line 591
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRealPosition()I
    .locals 2

    .line 689
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;->getRealPosition(I)I

    move-result v0

    return v0
.end method

.method public getRealPosition(I)I
    .locals 1

    .line 685
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;->getRealPosition(I)I

    move-result p1

    return p1
.end method

.method public hasImages()Z
    .locals 1

    .line 605
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public initIfEmpty(Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;Z)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    .line 515
    iget v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->settingMainPhoto:I

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 518
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget-object v3, p2, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v1, v3, :cond_4

    .line 519
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 520
    iput-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    if-eqz p4, :cond_2

    .line 522
    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    const/16 v6, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget v9, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentClassGuid:I

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(JIIZI)V

    :cond_2
    return v2

    :cond_3
    if-eqz p4, :cond_4

    .line 527
    iget p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    const/16 v6, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget v9, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentClassGuid:I

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(JIIZI)V

    .line 531
    :cond_4
    iget-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_5

    return v0

    .line 534
    :cond_5
    iput-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 535
    iput-object p3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevThumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 536
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevVectorAvatarThumbDrawable:Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    .line 537
    iget-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 547
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    return v2

    :cond_6
    :goto_0
    return v0
.end method

.method public isCurrentItemVideo()Z
    .locals 3

    .line 641
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealPosition()I

    move-result v0

    .line 642
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->hasActiveVideo:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 648
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public isLoadingCurrentVideo()Z
    .locals 3

    .line 617
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->hasActiveVideo:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealPosition()I

    move-result v1

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealPosition()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 620
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentItemView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 624
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 625
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :cond_4
    :goto_1
    return v2
.end method

.method public onDestroy()V
    .locals 5

    .line 338
    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 339
    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 340
    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 341
    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 342
    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadDialogPhotos:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 343
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 345
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 346
    instance-of v3, v2, Lorg/telegram/ui/Components/BackupImageView;

    if-nez v3, :cond_0

    goto :goto_1

    .line 349
    :cond_0
    check-cast v2, Lorg/telegram/ui/Components/BackupImageView;

    .line 350
    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->hasStaticThumb()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 351
    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 352
    instance-of v4, v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v4, :cond_1

    .line 353
    check-cast v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeSecondParentView(Landroid/view/View;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 786
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 789
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 790
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 792
    :cond_1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 393
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    if-eqz v0, :cond_1

    .line 394
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    .line 395
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 396
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 397
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return v1

    .line 401
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 403
    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentItemView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 404
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isDownReleased:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayMode()Z

    move-result v5

    if-nez v5, :cond_2

    .line 405
    iget-object v5, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentItemView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v7

    invoke-virtual {v5, v6, p0, v7, v3}, Lorg/telegram/ui/PinchToZoomHelper;->checkPinchToZoom(Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0

    .line 406
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentItemView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v6

    invoke-virtual {v5, p1, p0, v6, v3}, Lorg/telegram/ui/PinchToZoomHelper;->checkPinchToZoom(Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 407
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isDownReleased:Z

    if-nez p1, :cond_3

    .line 408
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isDownReleased:Z

    .line 409
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ProfileGalleryView$Callback;->onRelease()V

    :cond_3
    return v4

    :cond_4
    :goto_0
    const/high16 v3, 0x40400000    # 3.0f

    if-nez v0, :cond_7

    .line 417
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    .line 418
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    .line 419
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->scrolledByUser:Z

    .line 420
    iget-object v5, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->downPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 421
    iget-object v5, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getCount()I

    move-result v5

    if-le v5, v4, :cond_6

    .line 422
    iget-object v5, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v3

    cmpg-float v3, v6, v7

    if-gez v3, :cond_5

    move v3, v4

    goto :goto_1

    :cond_5
    move v3, v1

    :goto_1
    invoke-interface {v5, v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Callback;->onDown(Z)V

    .line 424
    :cond_6
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isDownReleased:Z

    goto/16 :goto_5

    :cond_7
    const/4 v5, -0x1

    if-ne v0, v4, :cond_b

    .line 426
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isDownReleased:Z

    if-nez v6, :cond_11

    .line 427
    iget-object v6, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getCount()I

    move-result v6

    .line 428
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v7

    if-le v6, v4, :cond_11

    .line 430
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v3

    cmpl-float v3, v8, v9

    if-lez v3, :cond_9

    .line 431
    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getExtraCount()I

    move-result v3

    add-int/2addr v7, v4

    sub-int/2addr v6, v3

    if-lt v7, v6, :cond_8

    goto :goto_2

    :cond_8
    move v3, v7

    goto :goto_2

    .line 436
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getExtraCount()I

    move-result v3

    add-int/2addr v5, v7

    if-ge v5, v3, :cond_a

    sub-int/2addr v6, v3

    add-int/lit8 v3, v6, -0x1

    goto :goto_2

    :cond_a
    move v3, v5

    .line 441
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    invoke-interface {v5}, Lorg/telegram/ui/Components/ProfileGalleryView$Callback;->onRelease()V

    .line 442
    invoke-virtual {p0, v3, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_5

    :cond_b
    const/4 v3, 0x2

    if-ne v0, v3, :cond_11

    .line 446
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v6, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->downPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v6

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->downPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    .line 448
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->touchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gez v7, :cond_d

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->touchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_c

    goto :goto_3

    :cond_c
    move v7, v1

    goto :goto_4

    :cond_d
    :goto_3
    move v7, v4

    :goto_4
    if-eqz v7, :cond_e

    .line 450
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isDownReleased:Z

    .line 451
    iget-object v8, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    invoke-interface {v8}, Lorg/telegram/ui/Components/ProfileGalleryView$Callback;->onRelease()V

    .line 453
    :cond_e
    iget-boolean v8, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    if-eqz v8, :cond_10

    iget-boolean v9, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    if-eqz v9, :cond_10

    if-eqz v7, :cond_11

    .line 455
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v5, v3

    if-lez v3, :cond_f

    .line 456
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    .line 457
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 458
    invoke-virtual {v3, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 459
    invoke-super {p0, v3}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 460
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_5

    .line 462
    :cond_f
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    .line 463
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 464
    invoke-virtual {v3, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 465
    iget-object v5, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 466
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_5

    :cond_10
    if-eqz v8, :cond_11

    .line 469
    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v5

    if-nez v5, :cond_11

    iget v5, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->touchSlop:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_11

    return v1

    .line 476
    :cond_11
    :goto_5
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    if-eqz v3, :cond_12

    .line 477
    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_6

    :cond_12
    move v3, v1

    .line 480
    :goto_6
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    if-eqz v5, :cond_13

    .line 482
    :try_start_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v3, p1

    goto :goto_7

    :catch_0
    move-exception p1

    .line 484
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_13
    :goto_7
    if-eq v0, v4, :cond_14

    if-ne v0, v2, :cond_15

    .line 489
    :cond_14
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    .line 490
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    :cond_15
    return v3
.end method

.method public removePhotoAtIndex(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 762
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 765
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 766
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 767
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 768
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 769
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 770
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 771
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 772
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 773
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 774
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 775
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 776
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    const/4 p1, 0x0

    .line 777
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevThumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 778
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevVectorAvatarThumbDrawable:Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    .line 780
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->notifyDataSetChanged()V

    .line 781
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public removeUploadingImage(Lorg/telegram/messenger/ImageLocation;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    const/4 p1, 0x0

    .line 575
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentUploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 576
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->curreantUploadingThumbLocation:Lorg/telegram/messenger/ImageLocation;

    return-void
.end method

.method public replaceFirstPhoto(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$Photo;)V
    .locals 1

    .line 700
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    return-void

    .line 707
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resetCurrentItem()V
    .locals 2

    .line 673
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getExtraCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public scrollToLastItem()V
    .locals 4

    const/4 v0, 0x0

    .line 1455
    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealPosition(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1458
    :cond_0
    invoke-virtual {p0, v0, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setAnimatedFileMaybe(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    if-nez v0, :cond_0

    goto :goto_2

    .line 363
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 365
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 366
    instance-of v3, v2, Lorg/telegram/ui/Components/BackupImageView;

    if-nez v3, :cond_1

    goto :goto_1

    .line 369
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->access$300(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;->getRealPosition(I)I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 373
    :cond_2
    check-cast v2, Lorg/telegram/ui/Components/BackupImageView;

    .line 374
    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    .line 375
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v3

    if-ne v3, p1, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 380
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeSecondParentView(Landroid/view/View;)V

    .line 382
    :cond_4
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->addSecondParentView(Landroid/view/View;)V

    const/4 v2, 0x1

    .line 384
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setInvalidateParentViewWithSecond(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 4

    .line 497
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 498
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    iget-object p1, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {p1, v1}, Lorg/telegram/messenger/FileLoader;->isSamePhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$Photo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 499
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 501
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    const/16 v2, 0x3e8

    invoke-static {p1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object p1

    .line 502
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {p1, v3}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ProfileGalleryView$Callback;->onPhotosLoaded()V

    goto :goto_0

    .line 506
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 509
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public setCreateThumbFromParent(Z)V
    .locals 0

    .line 1315
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->createThumbFromParent:Z

    return-void
.end method

.method protected setCustomAvatarProgress(F)V
    .locals 0

    return-void
.end method

.method public setData(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1242
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->setData(JZ)V

    return-void
.end method

.method public setData(JZ)V
    .locals 2

    .line 1246
    iget-wide v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    .line 1247
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 1250
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->forceResetPosition:Z

    .line 1251
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->reset()V

    .line 1252
    iput-wide p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    return-void
.end method

.method public setHasActiveVideo(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->hasActiveVideo:Z

    return-void
.end method

.method public setImagesLayerNum(I)V
    .locals 0

    .line 254
    iput p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLayerNum:I

    return-void
.end method

.method public setInvalidateWithParent(Z)V
    .locals 0

    .line 1444
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->invalidateWithParent:Z

    return-void
.end method

.method public setParentAvatarImage(Lorg/telegram/ui/Components/BackupImageView;)V
    .locals 1

    .line 1291
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    if-eqz v0, :cond_0

    .line 1292
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->access$2502(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;Lorg/telegram/ui/Components/BackupImageView;)Lorg/telegram/ui/Components/BackupImageView;

    :cond_0
    return-void
.end method

.method public setPinchToZoomHelper(Lorg/telegram/ui/PinchToZoomHelper;)V
    .locals 0

    .line 1440
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    return-void
.end method

.method public setRoundRadius(II)V
    .locals 2

    .line 1279
    iput p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->roundTopRadius:I

    .line 1280
    iput p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->roundBottomRadius:I

    .line 1281
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1282
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->access$600(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 1283
    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->access$600(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1284
    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->access$600(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object p2

    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->roundTopRadius:I

    iget v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->roundBottomRadius:I

    invoke-virtual {p2, v0, v0, v1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(IIII)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUploadProgress(Lorg/telegram/messenger/ImageLocation;F)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1300
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1301
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 1302
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1303
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1304
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1309
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 1310
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public startMovePhotoToBegin(I)V
    .locals 3

    if-lez p1, :cond_1

    .line 715
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto/16 :goto_0

    .line 718
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->settingMainPhoto:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->settingMainPhoto:I

    .line 719
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 720
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 721
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 723
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 724
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 725
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 727
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 729
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLocation;

    .line 730
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 731
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 733
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLocation;

    .line 734
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 735
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 737
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLocation;

    .line 738
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 739
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 741
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    .line 742
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 743
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 745
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 746
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 747
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 749
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 750
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 751
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 753
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    :cond_1
    :goto_0
    return-void
.end method
