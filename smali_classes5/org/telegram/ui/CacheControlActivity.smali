.class public Lorg/telegram/ui/CacheControlActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "CacheControlActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/CacheControlActivity$ItemInner;,
        Lorg/telegram/ui/CacheControlActivity$FileEntities;,
        Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;,
        Lorg/telegram/ui/CacheControlActivity$UserCell;,
        Lorg/telegram/ui/CacheControlActivity$ListAdapter;,
        Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;,
        Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;,
        Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;
    }
.end annotation


# static fields
.field public static volatile canceled:Z = false

.field private static lastDeviceTotalFreeSize:Ljava/lang/Long;

.field private static lastDeviceTotalSize:Ljava/lang/Long;

.field private static lastTotalSizeCalculated:Ljava/lang/Long;

.field private static lastTotalSizeCalculatedTime:J


# instance fields
.field private actionBarAnimator:Landroid/animation/ValueAnimator;

.field private actionBarShadowAlpha:F

.field private actionBarShown:Z

.field private actionBarShownT:F

.field private actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

.field private actionModeClearButton:Landroid/widget/TextView;

.field private actionModeSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

.field private actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

.field private actionTextView:Landroid/view/View;

.field private audioSize:J

.field private bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

.field private bottomSheetView:Landroid/view/View;

.field private cacheChart:Lorg/telegram/ui/Components/CacheChart;

.field private cacheChartHeader:Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;

.field private cacheEmojiSize:J

.field cacheModel:Lorg/telegram/ui/Storage/CacheModel;

.field private cacheRemovedTooltip:Lorg/telegram/ui/Components/UndoView;

.field private cacheSize:J

.field private cacheTempSize:J

.field private cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

.field private calculating:Z

.field private changeStatusBar:Z

.field private clearCacheButton:Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;

.field private clearDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private collapsed:Z

.field private databaseSize:J

.field private documentsSize:J

.field fragmentCreateTime:J

.field private itemInners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/CacheControlActivity$ItemInner;",
            ">;"
        }
    .end annotation
.end field

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private migrateOldFolderRow:J

.field private musicSize:J

.field private nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

.field private oldItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/CacheControlActivity$ItemInner;",
            ">;"
        }
    .end annotation
.end field

.field private percents:[I

.field private photoSize:J

.field progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private sectionsEndRow:I

.field private sectionsStartRow:I

.field private selected:[Z

.field private stickersCacheSize:J

.field private tempSizes:[F

.field private totalDeviceFreeSize:J

.field private totalDeviceSize:J

.field private totalSize:J

.field private videoSize:J


# direct methods
.method public static synthetic $r8$lambda$-GdIJJygK_lmViOL0UmzgYwAi3U(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->lambda$sort$7(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$1-Fsf7gqVUBmvEy2Uqr30fU7gag(Lorg/telegram/ui/CacheControlActivity;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupFoldersInternal$12(ZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$1hx6gB2zaNNhnv8lj28q4jDbbjI(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$getThemeDescriptions$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$21s8Ud8FBFWiMOI4WGUOli9c6E4(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$loadDialogEntities$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$2RSXg92JWnJyhI2vCvatClTH0KY(Lorg/telegram/messenger/Utilities$Callback;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$calculateTotalSize$0(Lorg/telegram/messenger/Utilities$Callback;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$8z0O-JAuCp3pHmMDEuGjMr0ugYM(Lorg/telegram/ui/CacheControlActivity;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CacheControlActivity;->lambda$createView$15(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$937i_IzOaB3ZKHrP0ffdXwjOjB8(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CacheControlActivity;->lambda$loadDialogEntities$5(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BJxDSoYVuTfaygG8U-lRq00SDZ0(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CacheControlActivity;->lambda$loadDialogEntities$4(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BkmJEzqhz3CtX9UZvjqrXQc7drU(Lorg/telegram/ui/CacheControlActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$createView$14(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$CEOcrQ2iq6LuaWdiUmpgyqzjBvY(Lorg/telegram/ui/CacheControlActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$clearSelectedFiles$16(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$G5o1eOt3U_t4G8hBdzjD0RDVd04(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupFolders$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$KPInpu2MGn6J0F-Qeri5jqXquZk(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$calculateTotalSize$1(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ObriR0Bvl1xZ4TdTWj4nBFbGLgM(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$onFragmentCreate$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$QgtznZcYCpYI1iBP_a_q_4j9I48(Lorg/telegram/ui/CacheControlActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->lambda$updateActionBar$17(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UuaG5C-ggFcEbGyZsJJIjVrTwkA(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupDialogFiles$18(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aOjRiz0-aAyI4MyXWgiTCqJLZe0(Lorg/telegram/ui/CacheControlActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$clearDatabase$20(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dgMBJY7fWfqFF2VNZK9uQ_oL67U(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupFolders$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$e7AvjPROWn_Jt1EywrWodgDRTYY(Lorg/telegram/ui/CacheControlActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupFoldersInternal$11(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$gISFzbuC4dgFvF4_kSBkPU50T28(Lorg/telegram/ui/CacheControlActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->lambda$createView$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hifz9AxYrlDIPUyUAyOYFEAF-Hs(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$onFragmentCreate$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$stsdnfKrBCbml0GOVI8Y-ZilUZY(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupDialogFiles$19(Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vxzvKT2G1lROIBn6AY0pq--K5eM(Lorg/telegram/ui/CacheControlActivity$ItemInner;Lorg/telegram/ui/CacheControlActivity$ItemInner;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->lambda$updateRows$8(Lorg/telegram/ui/CacheControlActivity$ItemInner;Lorg/telegram/ui/CacheControlActivity$ItemInner;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Z

    .line 146
    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    const-wide/16 v0, -0x1

    .line 147
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    .line 148
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheEmojiSize:J

    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    .line 149
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    .line 150
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    .line 151
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    .line 152
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    .line 153
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    .line 154
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    .line 155
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    .line 156
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    .line 157
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    .line 158
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->migrateOldFolderRow:J

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    .line 160
    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    const/4 v0, -0x1

    .line 166
    iput v0, p0, Lorg/telegram/ui/CacheControlActivity;->sectionsStartRow:I

    .line 167
    iput v0, p0, Lorg/telegram/ui/CacheControlActivity;->sectionsEndRow:I

    .line 629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->oldItems:Ljava/util/ArrayList;

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1268
    iput v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$100(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 114
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/CacheControlActivity;)I
    .locals 0

    .line 114
    iget p0, p0, Lorg/telegram/ui/CacheControlActivity;->sectionsEndRow:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/Components/CacheChart;
    .locals 0

    .line 114
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChart:Lorg/telegram/ui/Components/CacheChart;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/Components/CacheChart;)Lorg/telegram/ui/Components/CacheChart;
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChart:Lorg/telegram/ui/Components/CacheChart;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 114
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/CacheControlActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 114
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 114
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/CacheControlActivity;Z)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->updateActionBar(Z)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/Components/NestedSizeNotifierLayout;
    .locals 0

    .line 114
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 0

    .line 114
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity;->cleanupDialogFiles(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Lorg/telegram/ui/Storage/CacheModel;)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/CacheControlActivity;F)Ljava/lang/String;
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->formatPercent(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CachedMediaLayout;
    .locals 0

    .line 114
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/CacheControlActivity;)[Z
    .locals 0

    .line 114
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CachedMediaLayout;)Lorg/telegram/ui/CachedMediaLayout;
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 114
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    return-wide v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 114
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    return-wide v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 114
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    return-wide v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 114
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    return-wide v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 114
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    return-wide v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 114
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    return-wide v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 114
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    return-wide v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 114
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    return-wide v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/CacheControlActivity;)Z
    .locals 0

    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->isAllSectionsSelected()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->clearSelectedFiles()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->cleanupFolders()V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 114
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->migrateOldFolderRow:J

    return-wide v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 114
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    return-wide v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/CacheControlActivity;)Z
    .locals 0

    .line 114
    iget-boolean p0, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/CacheControlActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 114
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;
    .locals 0

    .line 114
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChartHeader:Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;

    return-object p0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;)Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChartHeader:Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;

    return-object p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 114
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 114
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateActionMode()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->clearDatabase()V

    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->showClearCacheDialog(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    return-void
.end method

.method static synthetic access$4102(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;)Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->clearCacheButton:Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;

    return-object p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 114
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    return-wide v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 114
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    return-wide v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/CacheControlActivity;)Z
    .locals 0

    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->isOtherSelected()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/CacheControlActivity;)[I
    .locals 0

    .line 114
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/CacheControlActivity;Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity;->getCheckBoxTitle(Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/CacheControlActivity;)Z
    .locals 0

    .line 114
    iget-boolean p0, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    return p0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/CacheControlActivity;Z)Z
    .locals 0

    .line 114
    iput-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    return p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 114
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    return-wide v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/CacheControlActivity;Landroid/view/View;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->toggleOtherSelected(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/CacheControlActivity;)F
    .locals 0

    .line 114
    iget p0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    return-void
.end method

.method static synthetic access$502(Lorg/telegram/ui/CacheControlActivity;F)F
    .locals 0

    .line 114
    iput p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void
.end method

.method static synthetic access$516(Lorg/telegram/ui/CacheControlActivity;F)F
    .locals 1

    .line 114
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    return v0
.end method

.method static synthetic access$524(Lorg/telegram/ui/CacheControlActivity;F)F
    .locals 1

    .line 114
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 114
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/CacheControlActivity;)F
    .locals 0

    .line 114
    iget p0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShownT:F

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 114
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/CacheControlActivity;)I
    .locals 0

    .line 114
    iget p0, p0, Lorg/telegram/ui/CacheControlActivity;->sectionsStartRow:I

    return p0
.end method

.method public static calculateTotalSize(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 219
    :cond_0
    sget-object v0, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculated:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 220
    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculatedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    return-void

    .line 225
    :cond_1
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private cleanupDialogFiles(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1315
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v4, 0x0

    .line 1316
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    const-wide/16 v6, 0x1f4

    .line 1317
    invoke-virtual {v3, v6, v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 1319
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1320
    iget-wide v7, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    move v9, v4

    :goto_0
    const/4 v10, 0x7

    const/4 v11, 0x1

    if-ge v9, v10, :cond_9

    if-eqz p2, :cond_0

    .line 1323
    aget-object v10, p2, v9

    if-eqz v10, :cond_8

    aget-object v10, p2, v9

    iget-boolean v10, v10, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    if-nez v10, :cond_0

    goto/16 :goto_1

    .line 1327
    :cond_0
    iget-object v10, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;

    if-nez v10, :cond_1

    goto :goto_1

    .line 1331
    :cond_1
    iget-object v12, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1332
    iget-wide v12, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    iget-wide v14, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v12, v14

    iput-wide v12, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    .line 1333
    iget-wide v12, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    sub-long/2addr v12, v14

    iput-wide v12, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    .line 1334
    iget-wide v12, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    add-long/2addr v12, v14

    iput-wide v12, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    .line 1335
    iget-object v12, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->delete(I)V

    if-nez v9, :cond_2

    .line 1337
    iget-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    iget-wide v13, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v11, v13

    iput-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    goto :goto_1

    :cond_2
    if-ne v9, v11, :cond_3

    .line 1339
    iget-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    iget-wide v13, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v11, v13

    iput-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    goto :goto_1

    :cond_3
    const/4 v11, 0x2

    if-ne v9, v11, :cond_4

    .line 1341
    iget-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    iget-wide v13, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v11, v13

    iput-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    goto :goto_1

    :cond_4
    if-ne v9, v5, :cond_5

    .line 1343
    iget-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    iget-wide v13, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v11, v13

    iput-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    goto :goto_1

    :cond_5
    const/4 v11, 0x4

    if-ne v9, v11, :cond_6

    .line 1345
    iget-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    iget-wide v13, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v11, v13

    iput-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    goto :goto_1

    :cond_6
    const/4 v11, 0x5

    if-ne v9, v11, :cond_7

    .line 1347
    iget-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    iget-wide v13, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v11, v13

    iput-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    goto :goto_1

    .line 1349
    :cond_7
    iget-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    iget-wide v13, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v11, v13

    iput-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    :cond_8
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1352
    :cond_9
    iget-object v5, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_a

    .line 1353
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Storage/CacheModel;->remove(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    .line 1355
    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    if-eqz v2, :cond_10

    .line 1357
    iget-object v2, v2, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    .line 1358
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1359
    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    iget-wide v12, v5, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v9, v12

    iput-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    .line 1360
    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    add-long/2addr v9, v12

    iput-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    .line 1361
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1362
    invoke-virtual {v1, v5}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->removeFile(Lorg/telegram/ui/Storage/CacheModel$FileInfo;)V

    .line 1363
    iget v9, v5, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->type:I

    if-nez v9, :cond_c

    .line 1364
    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    iget-wide v12, v5, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v9, v12

    iput-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    goto :goto_2

    :cond_c
    if-ne v9, v11, :cond_d

    .line 1366
    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    iget-wide v12, v5, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v9, v12

    iput-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    goto :goto_2

    .line 1367
    :cond_d
    iget-wide v9, v5, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    const-wide/16 v12, 0x2

    cmp-long v5, v9, v12

    if-nez v5, :cond_e

    .line 1368
    iget-wide v12, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    sub-long/2addr v12, v9

    iput-wide v12, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    goto :goto_2

    :cond_e
    const-wide/16 v12, 0x3

    cmp-long v5, v9, v12

    if-nez v5, :cond_f

    .line 1370
    iget-wide v12, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    sub-long/2addr v12, v9

    iput-wide v12, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    goto :goto_2

    :cond_f
    const-wide/16 v12, 0x4

    cmp-long v5, v9, v12

    if-nez v5, :cond_b

    .line 1372
    iget-wide v12, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    sub-long/2addr v12, v9

    iput-wide v12, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    goto :goto_2

    .line 1377
    :cond_10
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    .line 1378
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Storage/CacheModel;->onFileDeleted(Lorg/telegram/ui/Storage/CacheModel$FileInfo;)V

    goto :goto_3

    .line 1381
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->cacheRemovedTooltip:Lorg/telegram/ui/Components/UndoView;

    sget v2, Lorg/telegram/messenger/R$string;->CacheWasCleared:I

    new-array v5, v11, [Ljava/lang/Object;

    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    const-string v4, "CacheWasCleared"

    invoke-static {v4, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/UndoView;->setInfoText(Ljava/lang/CharSequence;)V

    .line 1382
    iget-object v7, v0, Lorg/telegram/ui/CacheControlActivity;->cacheRemovedTooltip:Lorg/telegram/ui/Components/UndoView;

    const-wide/16 v8, 0x0

    const/16 v10, 0x13

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1384
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1385
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/FilePathDatabase;->removeFiles(Ljava/util/List;)V

    .line 1386
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadAllFiles()V

    .line 1387
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/FileLoader;->getFileLoaderQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda14;

    invoke-direct {v4, v0, v1, v3}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private cleanupFolders()V
    .locals 4

    .line 821
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->clearSelection()V

    .line 824
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 825
    invoke-virtual {v0}, Lorg/telegram/ui/CachedMediaLayout;->updateVisibleRows()V

    .line 826
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    .line 829
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 830
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 831
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 832
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadAllFiles()V

    .line 833
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->getFileLoaderQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 836
    invoke-virtual {p0, v0}, Lorg/telegram/ui/CacheControlActivity;->setCacheModel(Lorg/telegram/ui/Storage/CacheModel;)V

    return-void
.end method

.method private cleanupFoldersInternal()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move v5, v1

    move v6, v5

    move v7, v2

    :goto_0
    const/16 v8, 0x8

    if-ge v5, v8, :cond_18

    .line 846
    iget-object v8, v0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v8, v8, v5

    if-nez v8, :cond_0

    move v7, v1

    goto/16 :goto_a

    :cond_0
    const/4 v8, -0x1

    const/4 v9, 0x5

    const/16 v10, 0x64

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x4

    if-nez v5, :cond_1

    .line 854
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    add-long/2addr v3, v14

    move v11, v1

    :goto_1
    move v12, v11

    goto :goto_2

    :cond_1
    if-ne v5, v2, :cond_2

    .line 857
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    add-long/2addr v3, v14

    move v12, v11

    move v11, v1

    goto :goto_2

    :cond_2
    if-ne v5, v11, :cond_3

    .line 861
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    add-long/2addr v3, v14

    move v11, v2

    goto :goto_2

    :cond_3
    if-ne v5, v12, :cond_4

    .line 865
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    add-long/2addr v3, v14

    goto :goto_2

    :cond_4
    if-ne v5, v13, :cond_5

    .line 868
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    add-long/2addr v3, v14

    move v11, v1

    move v12, v2

    goto :goto_2

    :cond_5
    if-ne v5, v9, :cond_6

    .line 871
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    iget-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->cacheEmojiSize:J

    add-long/2addr v14, v11

    add-long/2addr v3, v14

    move v11, v1

    move v12, v10

    goto :goto_2

    :cond_6
    const/4 v11, 0x6

    if-ne v5, v11, :cond_7

    .line 873
    iget-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    add-long/2addr v3, v11

    move v11, v9

    move v12, v13

    goto :goto_2

    :cond_7
    const/4 v11, 0x7

    if-ne v5, v11, :cond_8

    .line 877
    iget-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    add-long/2addr v3, v11

    move v11, v13

    goto :goto_1

    :cond_8
    move v11, v1

    move v12, v8

    :goto_2
    if-ne v12, v8, :cond_9

    move-wide/from16 v16, v3

    goto/16 :goto_9

    :cond_9
    const-string v8, "acache"

    if-ne v12, v10, :cond_a

    .line 886
    new-instance v14, Ljava/io/File;

    invoke-static {v13}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v15

    invoke-direct {v14, v15, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3

    .line 888
    :cond_a
    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v14

    :goto_3
    move-wide/from16 v16, v3

    const-wide v2, 0x7fffffffffffffffL

    if-eqz v14, :cond_b

    .line 891
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11, v2, v3, v1}, Lorg/telegram/messenger/Utilities;->clearDir(Ljava/lang/String;IJZ)V

    :cond_b
    if-ne v12, v10, :cond_c

    .line 894
    invoke-static {v13}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 896
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x3

    invoke-static {v4, v14, v2, v3, v1}, Lorg/telegram/messenger/Utilities;->clearDir(Ljava/lang/String;IJZ)V

    :cond_c
    const/16 v4, 0x65

    if-eqz v12, :cond_e

    const/4 v14, 0x2

    if-ne v12, v14, :cond_d

    goto :goto_5

    :cond_d
    :goto_4
    const/4 v14, 0x3

    goto :goto_7

    :cond_e
    :goto_5
    if-nez v12, :cond_f

    move v14, v10

    goto :goto_6

    :cond_f
    move v14, v4

    .line 906
    :goto_6
    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v14

    if-eqz v14, :cond_d

    .line 909
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v11, v2, v3, v1}, Lorg/telegram/messenger/Utilities;->clearDir(Ljava/lang/String;IJZ)V

    goto :goto_4

    :goto_7
    if-ne v12, v14, :cond_10

    .line 913
    invoke-static {v9}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v14

    if-eqz v14, :cond_10

    .line 915
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v11, v2, v3, v1}, Lorg/telegram/messenger/Utilities;->clearDir(Ljava/lang/String;IJZ)V

    :cond_10
    if-ne v12, v13, :cond_11

    .line 920
    invoke-static {v13}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v9}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    .line 921
    invoke-static {v13}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v13}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    :goto_8
    move-wide/from16 v3, v16

    const/4 v6, 0x1

    goto/16 :goto_a

    :cond_11
    const/4 v2, 0x1

    if-ne v12, v2, :cond_12

    .line 924
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v11}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v3

    iput-wide v3, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    goto/16 :goto_9

    :cond_12
    const/4 v3, 0x3

    if-ne v12, v3, :cond_14

    if-ne v11, v2, :cond_13

    .line 927
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v11}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    .line 928
    invoke-static {v9}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v11}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v8

    add-long/2addr v2, v8

    iput-wide v2, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    goto :goto_9

    .line 930
    :cond_13
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v11}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    .line 931
    invoke-static {v9}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v11}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v8

    add-long/2addr v2, v8

    iput-wide v2, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    goto :goto_9

    :cond_14
    if-nez v12, :cond_15

    .line 935
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v11}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    .line 936
    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v11}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v8

    add-long/2addr v2, v8

    iput-wide v2, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    goto :goto_8

    :cond_15
    const/4 v2, 0x2

    if-ne v12, v2, :cond_16

    .line 938
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v11}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    .line 939
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v11}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v8

    add-long/2addr v2, v8

    iput-wide v2, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    goto :goto_9

    :cond_16
    if-ne v12, v10, :cond_17

    .line 942
    new-instance v2, Ljava/io/File;

    invoke-static {v13}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v11}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    .line 943
    invoke-static {v13}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/CacheControlActivity;->cacheEmojiSize:J

    .line 944
    iget-wide v8, v0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    add-long/2addr v8, v2

    iput-wide v8, v0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    goto/16 :goto_8

    :cond_17
    :goto_9
    move-wide/from16 v3, v16

    :goto_a
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 948
    :cond_18
    iget-wide v1, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    iget-wide v8, v0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    add-long/2addr v1, v8

    iget-wide v8, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    add-long/2addr v1, v8

    iget-wide v8, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    add-long/2addr v1, v8

    iget-wide v8, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    add-long/2addr v1, v8

    iget-wide v8, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    add-long/2addr v1, v8

    iget-wide v8, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    add-long/2addr v1, v8

    iget-wide v8, v0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    add-long/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculated:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    .line 949
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculatedTime:J

    .line 950
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 952
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 953
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 955
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v1, v5, :cond_19

    .line 956
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v8

    goto :goto_b

    .line 958
    :cond_19
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    :goto_b
    if-lt v1, v5, :cond_1a

    .line 962
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v10

    goto :goto_c

    .line 964
    :cond_1a
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v10, v10

    :goto_c
    if-lt v1, v5, :cond_1b

    .line 968
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v1

    goto :goto_d

    .line 970
    :cond_1b
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    :goto_d
    mul-long/2addr v1, v8

    .line 973
    iput-wide v1, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    mul-long/2addr v10, v8

    .line 974
    iput-wide v10, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    if-eqz v7, :cond_1c

    .line 978
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoader;->clearFilePaths()V

    .line 980
    :cond_1c
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoader;->checkCurrentDownloadsFiles()V

    .line 982
    new-instance v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0, v6, v3, v4}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/CacheControlActivity;ZJ)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private clearDatabase()V
    .locals 6

    .line 1409
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1410
    sget v1, Lorg/telegram/messenger/R$string;->LocalDatabaseClearTextTitle:I

    const-string v2, "LocalDatabaseClearTextTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1411
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1412
    sget v2, Lorg/telegram/messenger/R$string;->LocalDatabaseClearText:I

    const-string v3, "LocalDatabaseClearText"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v2, "\n\n"

    .line 1413
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1414
    sget v2, Lorg/telegram/messenger/R$string;->LocalDatabaseClearText2:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "LocalDatabaseClearText2"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1415
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1416
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1417
    sget v1, Lorg/telegram/messenger/R$string;->CacheClear:I

    const-string v2, "CacheClear"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1427
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 1428
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v1, -0x1

    .line 1429
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v1, "dialogTextRed"

    .line 1431
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private clearSelectedFiles()V
    .locals 3

    .line 1237
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFiles()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1240
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1241
    sget v1, Lorg/telegram/messenger/R$string;->ClearCache:I

    const-string v2, "ClearCache"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1242
    sget v1, Lorg/telegram/messenger/R$string;->ClearCacheForChats:I

    const-string v2, "ClearCacheForChats"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1243
    sget v1, Lorg/telegram/messenger/R$string;->Clear:I

    const-string v2, "Clear"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1256
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1257
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 1258
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v1, -0x1

    .line 1259
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-string v1, "dialogTextRed"

    .line 1261
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private formatPercent(F)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 633
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/CacheControlActivity;->formatPercent(FZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatPercent(FZ)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const p2, 0x3dcccccd    # 0.1f

    .line 638
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "<%.1f%%"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p1, v2

    .line 640
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    .line 642
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "<%d%%"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p2, v1, [Ljava/lang/Object;

    float-to-int p1, p1

    .line 644
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "%d%%"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCheckBoxTitle(Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;
    .locals 3

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    new-array p2, p3, [Ljava/lang/Object;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 652
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "<%.1f%%"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    const-string p2, "%d%%"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 653
    :goto_0
    new-instance p3, Landroid/text/SpannableString;

    invoke-direct {p3, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 654
    new-instance p2, Landroid/text/style/RelativeSizeSpan;

    const v1, 0x3f558106    # 0.834f

    invoke-direct {p2, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p3}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {p3, p2, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 655
    new-instance p2, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p3}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {p3, p2, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 656
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string p1, "  "

    .line 657
    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 658
    invoke-virtual {p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p2
.end method

.method public static getDeviceTotalSize(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 255
    sget-object v0, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalSize:Ljava/lang/Long;

    if-eqz v0, :cond_1

    sget-object v1, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalFreeSize:Ljava/lang/Long;

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    .line 257
    invoke-interface {p0, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 262
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 263
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRootDirs()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 264
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 265
    sget-object v3, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 266
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_4

    .line 267
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 268
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    :cond_3
    new-instance v2, Ljava/io/File;

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    :cond_4
    :goto_1
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 281
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_5

    .line 282
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    goto :goto_2

    .line 284
    :cond_5
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    :goto_2
    if-lt v1, v2, :cond_6

    .line 288
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5

    goto :goto_3

    .line 290
    :cond_6
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    :goto_3
    if-lt v1, v2, :cond_7

    .line 294
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    goto :goto_4

    .line 296
    :cond_7
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    :goto_4
    mul-long/2addr v0, v3

    .line 299
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalSize:Ljava/lang/Long;

    mul-long/2addr v5, v3

    .line 300
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalFreeSize:Ljava/lang/Long;

    if-eqz p0, :cond_8

    .line 302
    sget-object v1, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalSize:Ljava/lang/Long;

    invoke-interface {p0, v1, v0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return-void

    :catch_0
    move-exception p0

    .line 306
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static getDirectorySize(Ljava/io/File;I)J
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_2

    .line 808
    sget-boolean v2, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 812
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 813
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/Utilities;->getDirSize(Ljava/lang/String;IZ)J

    move-result-wide v0

    goto :goto_0

    .line 814
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 815
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    add-long/2addr v0, p0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method private isAllSectionsSelected()Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 1720
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 1721
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 1722
    iget v4, v2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 1725
    :cond_0
    iget v2, v2, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez v2, :cond_1

    .line 1727
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    array-length v2, v2

    sub-int/2addr v2, v3

    .line 1729
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v2, v3, v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private isOtherSelected()Z
    .locals 8

    .line 1839
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    array-length v0, v0

    new-array v1, v0, [Z

    const/4 v2, 0x0

    move v3, v2

    .line 1840
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 1841
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 1842
    iget v6, v4, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_0

    iget-boolean v6, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    if-nez v6, :cond_0

    iget v4, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-ltz v4, :cond_0

    .line 1843
    aput-boolean v5, v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    .line 1847
    aget-boolean v4, v1, v3

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v4, v4, v3

    if-nez v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v5
.end method

.method private static synthetic lambda$calculateTotalSize$0(Lorg/telegram/messenger/Utilities$Callback;J)V
    .locals 0

    .line 244
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$calculateTotalSize$1(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 19

    const/4 v0, 0x0

    .line 226
    sput-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    const/4 v1, 0x4

    .line 227
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v4

    .line 228
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v6

    .line 229
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v8

    const/16 v2, 0x64

    .line 230
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/4 v2, 0x2

    .line 231
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v10

    invoke-static {v10, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v10

    const/16 v12, 0x65

    .line 232
    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v12

    invoke-static {v12, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    add-long/2addr v10, v12

    const/4 v12, 0x3

    .line 233
    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v15

    .line 234
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v13

    invoke-static {v13, v14}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v17

    add-long v15, v15, v17

    .line 235
    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v13

    invoke-static {v13, v2}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v17

    .line 236
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    add-long v17, v17, v2

    .line 237
    new-instance v2, Ljava/io/File;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    const-string v13, "acache"

    invoke-direct {v2, v3, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    .line 238
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v12}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    add-long/2addr v2, v12

    .line 239
    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v0

    add-long/2addr v4, v6

    add-long/2addr v4, v10

    add-long/2addr v4, v0

    add-long/2addr v4, v8

    add-long/2addr v4, v15

    add-long v4, v4, v17

    add-long/2addr v4, v2

    .line 240
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculated:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculatedTime:J

    .line 242
    sget-boolean v2, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-nez v2, :cond_0

    .line 243
    new-instance v2, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda5;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v0, v1}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/Utilities$Callback;J)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$cleanupDialogFiles$18(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 1

    .line 1393
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->checkCurrentDownloadsFiles()V

    .line 1395
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1397
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$cleanupDialogFiles$19(Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 2

    const/4 v0, 0x0

    .line 1388
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1389
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-object v1, v1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1392
    :cond_0
    new-instance p1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$cleanupFolders$10()V
    .locals 2

    .line 833
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$cleanupFolders$9()V
    .locals 0

    .line 834
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->cleanupFoldersInternal()V

    return-void
.end method

.method private synthetic lambda$cleanupFoldersInternal$11(J)V
    .locals 7

    .line 997
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheRemovedTooltip:Lorg/telegram/ui/Components/UndoView;

    sget v1, Lorg/telegram/messenger/R$string;->CacheWasCleared:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const-string p1, "CacheWasCleared"

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UndoView;->setInfoText(Ljava/lang/CharSequence;)V

    .line 998
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheRemovedTooltip:Lorg/telegram/ui/Components/UndoView;

    const-wide/16 v2, 0x0

    const/16 v4, 0x13

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$cleanupFoldersInternal$12(ZJ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 984
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageLoader;->clearMemory()V

    .line 987
    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_1

    .line 988
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 989
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 992
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 995
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    invoke-virtual {p1}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->checkRingtoneSoundsLoaded()V

    .line 996
    new-instance p1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/CacheControlActivity;J)V

    const-wide/16 p2, 0x96

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1000
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MediaDataController;->chekAllMedia(Z)V

    .line 1002
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->loadDialogEntities()V

    return-void
.end method

.method private synthetic lambda$clearDatabase$20(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1418
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1421
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 p2, 0x0

    .line 1422
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 1423
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 1424
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->clearQueryTime()V

    .line 1425
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->clearLocalDatabase()V

    return-void
.end method

.method private synthetic lambda$clearSelectedFiles$16(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1244
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {p1}, Lorg/telegram/ui/Storage/CacheModel;->removeSelectedFiles()Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    move-result-object p1

    .line 1245
    iget-wide v0, p1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 1246
    invoke-direct {p0, p1, p2, p2}, Lorg/telegram/ui/CacheControlActivity;->cleanupDialogFiles(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Lorg/telegram/ui/Storage/CacheModel;)V

    .line 1248
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {p1}, Lorg/telegram/ui/Storage/CacheModel;->clearSelection()V

    .line 1249
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    if-eqz p1, :cond_1

    .line 1250
    invoke-virtual {p1}, Lorg/telegram/ui/CachedMediaLayout;->update()V

    .line 1251
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    .line 1253
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    .line 1254
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void
.end method

.method private synthetic lambda$createView$13(Landroid/view/View;)V
    .locals 0

    .line 1114
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->clearSelectedFiles()V

    return-void
.end method

.method private synthetic lambda$createView$14(II)V
    .locals 0

    .line 1210
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method private synthetic lambda$createView$15(Landroid/view/View;IFF)V
    .locals 3

    .line 1180
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_5

    .line 1183
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    goto :goto_0

    .line 1186
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 1190
    iget v1, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    instance-of v1, p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v1, :cond_3

    .line 1191
    iget p2, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez p2, :cond_2

    .line 1192
    iget-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    .line 1193
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    .line 1194
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void

    .line 1197
    :cond_2
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/CacheControlActivity;->toggleSection(Lorg/telegram/ui/CacheControlActivity$ItemInner;Landroid/view/View;)V

    goto :goto_0

    .line 1198
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->entities:Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    if-eqz v1, :cond_4

    .line 1203
    invoke-direct {p0, v1}, Lorg/telegram/ui/CacheControlActivity;->showClearCacheDialog(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    goto :goto_0

    .line 1204
    :cond_4
    iget v0, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->keepMediaType:I

    if-ltz v0, :cond_5

    .line 1205
    new-instance v0, Lorg/telegram/ui/KeepMediaPopupView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/KeepMediaPopupView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    .line 1206
    invoke-static {p0, v0, p1, p3, p4}, Lorg/telegram/ui/Components/AlertsCreator;->createSimplePopup(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;Landroid/view/View;FF)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    .line 1207
    iget-object p3, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget p2, p2, Lorg/telegram/ui/CacheControlActivity$ItemInner;->keepMediaType:I

    invoke-virtual {v0, p2}, Lorg/telegram/ui/KeepMediaPopupView;->update(I)V

    .line 1208
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setParentWindow(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    .line 1209
    new-instance p1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda21;

    invoke-direct {p1, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/KeepMediaPopupView;->setCallback(Lorg/telegram/ui/KeepMediaPopupView$Callback;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$21()V
    .locals 4

    .line 2349
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v0, :cond_0

    const-string v1, "dialogBackground"

    .line 2350
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    .line 2353
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionTextView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    aput v3, v1, v2

    const-string v2, "featuredStickers_addButton"

    .line 2354
    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(Ljava/lang/String;[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadDialogEntities$4(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 7

    .line 516
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 517
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    move v0, p1

    .line 519
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 520
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    .line 522
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v3

    if-nez v3, :cond_1

    const-wide v3, 0x7fffffffffffffffL

    .line 523
    iput-wide v3, v2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    if-eqz p2, :cond_0

    .line 526
    invoke-virtual {p2, v2}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->merge(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    .line 527
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    goto :goto_1

    :cond_0
    move-object p2, v2

    move v2, p1

    :goto_1
    if-eqz v2, :cond_1

    .line 533
    invoke-direct {p0, p3}, Lorg/telegram/ui/CacheControlActivity;->sort(Ljava/util/ArrayList;)V

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    .line 537
    :cond_2
    invoke-virtual {p4, p3}, Lorg/telegram/ui/Storage/CacheModel;->setEntities(Ljava/util/ArrayList;)V

    .line 539
    sget-boolean p2, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-nez p2, :cond_7

    .line 540
    invoke-virtual {p0, p4}, Lorg/telegram/ui/CacheControlActivity;->setCacheModel(Lorg/telegram/ui/Storage/CacheModel;)V

    .line 541
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    .line 542
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    .line 543
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChartHeader:Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;

    if-eqz p2, :cond_7

    iget-boolean p2, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    if-nez p2, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->fragmentCreateTime:J

    sub-long/2addr p2, v2

    const-wide/16 v2, 0x78

    cmp-long p2, p2, v2

    if-lez p2, :cond_7

    .line 544
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChartHeader:Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;

    iget-wide p3, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, p1

    .line 546
    :goto_2
    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    cmp-long p1, v4, v2

    const/4 v0, 0x0

    if-gtz p1, :cond_4

    move p1, v0

    goto :goto_3

    :cond_4
    long-to-float p1, p3

    long-to-float p3, v4

    div-float/2addr p1, p3

    .line 547
    :goto_3
    iget-wide p3, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    cmp-long v6, p3, v2

    if-lez v6, :cond_6

    cmp-long v2, v4, v2

    if-gtz v2, :cond_5

    goto :goto_4

    :cond_5
    sub-long p3, v4, p3

    long-to-float p3, p3

    long-to-float p4, v4

    div-float v0, p3, p4

    .line 544
    :cond_6
    :goto_4
    invoke-virtual {p2, v1, p1, v0}, Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;->setData(ZFF)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$loadDialogEntities$5(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 6

    .line 491
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 492
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 493
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, ","

    if-nez v0, :cond_0

    .line 495
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 497
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 500
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 502
    :try_start_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 504
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 507
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 508
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    iget-wide v0, p2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    const-wide/16 v4, 0x0

    cmp-long p2, v0, v4

    if-gtz p2, :cond_2

    .line 509
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 513
    :cond_3
    invoke-direct {p0, p3}, Lorg/telegram/ui/CacheControlActivity;->sort(Ljava/util/ArrayList;)V

    .line 514
    new-instance p1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda13;

    move-object v0, p1

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadDialogEntities$6()V
    .locals 11

    .line 459
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FilePathDatabase;->ensureDatabaseCreated()V

    .line 460
    new-instance v6, Lorg/telegram/ui/Storage/CacheModel;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lorg/telegram/ui/Storage/CacheModel;-><init>(Z)V

    .line 461
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v2, 0x4

    .line 463
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v1, v5}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    .line 465
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    const/16 v3, 0x64

    .line 466
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    const/4 v3, 0x2

    .line 468
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    const/16 v4, 0x65

    .line 469
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {p0, v4, v5, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    .line 471
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {p0, v4, v2, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    const/4 v2, 0x3

    .line 472
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    const/4 v2, 0x5

    .line 473
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    .line 475
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 476
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 477
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 478
    :goto_0
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 479
    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    .line 480
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    iget-wide v8, v8, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v7

    if-nez v7, :cond_1

    .line 482
    iget-wide v7, v2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-lez v2, :cond_0

    .line 483
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 485
    :cond_0
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    :cond_2
    invoke-virtual {v6}, Lorg/telegram/ui/Storage/CacheModel;->sortBySize()V

    .line 490
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v7, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda12;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onFragmentCreate$2()V
    .locals 1

    .line 410
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->resumeDelayedFragmentAnimation()V

    const/4 v0, 0x0

    .line 411
    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    const/4 v0, 0x1

    .line 413
    invoke-direct {p0, v0}, Lorg/telegram/ui/CacheControlActivity;->updateRows(Z)V

    .line 414
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void
.end method

.method private synthetic lambda$onFragmentCreate$3()V
    .locals 11

    const/4 v0, 0x4

    .line 319
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    .line 320
    sget-boolean v1, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v1, :cond_0

    return-void

    .line 324
    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    .line 325
    sget-boolean v1, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 329
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    const/16 v5, 0x64

    .line 330
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    .line 331
    sget-boolean v3, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v3, :cond_2

    return-void

    :cond_2
    const/4 v3, 0x2

    .line 334
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    const/16 v6, 0x65

    .line 335
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    .line 336
    sget-boolean v4, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v4, :cond_3

    return-void

    :cond_3
    const/4 v4, 0x3

    .line 339
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v7

    iput-wide v7, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    .line 340
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v6}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    .line 341
    sget-boolean v5, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v5, :cond_4

    return-void

    .line 344
    :cond_4
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v7

    iput-wide v7, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    .line 345
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    add-long/2addr v7, v2

    iput-wide v7, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    .line 346
    sget-boolean v2, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v2, :cond_5

    return-void

    .line 349
    :cond_5
    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    const-string v5, "acache"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    .line 350
    sget-boolean v2, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v2, :cond_6

    return-void

    .line 353
    :cond_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v4}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->cacheEmojiSize:J

    .line 354
    sget-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v0, :cond_7

    return-void

    .line 357
    :cond_7
    iget-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->cacheEmojiSize:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    .line 358
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    .line 359
    sget-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v0, :cond_8

    return-void

    .line 362
    :cond_8
    iget-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculated:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculatedTime:J

    .line 366
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_a

    .line 367
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRootDirs()Ljava/util/ArrayList;

    move-result-object v0

    .line 368
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 369
    sget-object v3, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 370
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_b

    .line 371
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 372
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v2, v4

    goto :goto_1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    :cond_a
    new-instance v2, Ljava/io/File;

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    :cond_b
    :goto_1
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 385
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_c

    .line 386
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    goto :goto_2

    .line 388
    :cond_c
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    :goto_2
    if-lt v1, v2, :cond_d

    .line 392
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5

    goto :goto_3

    .line 394
    :cond_d
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    :goto_3
    if-lt v1, v2, :cond_e

    .line 398
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    goto :goto_4

    .line 400
    :cond_e
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    :goto_4
    mul-long/2addr v0, v3

    .line 403
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    mul-long/2addr v5, v3

    .line 404
    iput-wide v5, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 406
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 409
    :goto_5
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 417
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->loadDialogEntities()V

    return-void
.end method

.method private static synthetic lambda$sort$7(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)I
    .locals 3

    .line 558
    iget-wide v0, p1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    iget-wide p0, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$updateActionBar$17(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1277
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShownT:F

    .line 1278
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v0, "windowBackgroundWhiteBlackText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShownT:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1279
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v0, "windowBackgroundWhite"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShownT:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1280
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$updateRows$8(Lorg/telegram/ui/CacheControlActivity$ItemInner;Lorg/telegram/ui/CacheControlActivity$ItemInner;)I
    .locals 2

    .line 714
    iget-wide v0, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    iget-wide p0, p0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private loadDialogEntities()V
    .locals 2

    .line 458
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FilePathDatabase;->getQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static resetCalculatedTotalSIze()V
    .locals 1

    const/4 v0, 0x0

    .line 251
    sput-object v0, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculated:Ljava/lang/Long;

    return-void
.end method

.method private sectionsSelected()I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    .line 1042
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lorg/telegram/ui/CacheControlActivity;->size(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private showClearCacheDialog(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V
    .locals 4

    .line 1289
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1293
    :cond_0
    new-instance v0, Lorg/telegram/ui/DilogCacheBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->createCacheModel()Lorg/telegram/ui/Storage/CacheModel;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$6;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/CacheControlActivity$6;-><init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/telegram/ui/DilogCacheBottomSheet;-><init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;Lorg/telegram/ui/Storage/CacheModel;Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;)V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 1311
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    :goto_0
    return-void
.end method

.method private size(I)J
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1034
    :pswitch_0
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    return-wide v0

    .line 1033
    :pswitch_1
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    return-wide v0

    .line 1032
    :pswitch_2
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    return-wide v0

    .line 1031
    :pswitch_3
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    return-wide v0

    .line 1030
    :pswitch_4
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    return-wide v0

    .line 1029
    :pswitch_5
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    return-wide v0

    .line 1028
    :pswitch_6
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    return-wide v0

    .line 1027
    :pswitch_7
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sort(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;",
            ">;)V"
        }
    .end annotation

    .line 557
    sget-object v0, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda17;->INSTANCE:Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda17;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private toggleOtherSelected(Landroid/view/View;)V
    .locals 8

    .line 1896
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->isOtherSelected()Z

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    move v4, v2

    .line 1900
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1901
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 1902
    iget v6, v5, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v6, v1, :cond_0

    iget-boolean v6, v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    if-nez v6, :cond_0

    iget v5, v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-ltz v5, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v5, v6, v5

    if-eqz v5, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_1
    if-nez v4, :cond_3

    .line 1909
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    if-eqz p1, :cond_2

    const/high16 v0, -0x3fc00000    # -3.0f

    .line 1911
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    :cond_2
    return-void

    .line 1917
    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    if-eqz p1, :cond_7

    .line 1918
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    array-length p1, p1

    new-array v4, p1, [Z

    move v5, v2

    .line 1919
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 1920
    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 1921
    iget v7, v6, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v7, v1, :cond_4

    iget-boolean v7, v6, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    if-nez v7, :cond_4

    iget v6, v6, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-ltz v6, :cond_4

    .line 1922
    aput-boolean v3, v4, v6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move v5, v2

    :goto_3
    if-ge v5, p1, :cond_9

    .line 1926
    aget-boolean v6, v4, v5

    if-nez v6, :cond_6

    .line 1927
    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    xor-int/lit8 v7, v0, 0x1

    aput-boolean v7, v6, v5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    move p1, v2

    .line 1931
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_9

    .line 1932
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 1933
    iget v5, v4, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v5, v1, :cond_8

    iget-boolean v5, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    if-eqz v5, :cond_8

    iget v4, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-ltz v4, :cond_8

    .line 1934
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    xor-int/lit8 v6, v0, 0x1

    aput-boolean v6, v5, v4

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 1939
    :cond_9
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v2, p1, :cond_c

    .line 1940
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1941
    instance-of v4, p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v4, :cond_b

    .line 1942
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_b

    .line 1944
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 1945
    iget v5, v4, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v5, v1, :cond_b

    .line 1946
    iget v4, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez v4, :cond_a

    .line 1947
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto :goto_6

    .line 1949
    :cond_a
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v4, v5, v4

    invoke-virtual {p1, v4, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    :cond_b
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1955
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void
.end method

.method private toggleSection(Lorg/telegram/ui/CacheControlActivity$ItemInner;Landroid/view/View;)V
    .locals 6

    .line 1855
    iget v0, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez v0, :cond_0

    .line 1856
    invoke-direct {p0, p2}, Lorg/telegram/ui/CacheControlActivity;->toggleOtherSelected(Landroid/view/View;)V

    return-void

    .line 1859
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v0, v1, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->sectionsSelected()I

    move-result v0

    if-gt v0, v1, :cond_2

    .line 1860
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    if-eqz p2, :cond_1

    const/high16 p1, -0x3fc00000    # -3.0f

    .line 1862
    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    :cond_1
    return-void

    .line 1866
    :cond_2
    instance-of v0, p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1867
    check-cast p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    iget v3, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    aget-boolean v4, v0, v3

    xor-int/2addr v4, v1

    aput-boolean v4, v0, v3

    invoke-virtual {p2, v4, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto :goto_1

    .line 1869
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    iget v0, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    aget-boolean v3, p2, v0

    xor-int/2addr v3, v1

    aput-boolean v3, p2, v0

    .line 1870
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_5

    move v0, v2

    .line 1872
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 1873
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1874
    instance-of v4, v3, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ne p2, v4, :cond_4

    .line 1875
    check-cast v3, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    iget v5, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    aget-boolean v4, v4, v5

    invoke-virtual {v3, v4, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1880
    :cond_5
    :goto_1
    iget-boolean p1, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    if-eqz p1, :cond_7

    .line 1881
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v2, p1, :cond_7

    .line 1882
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1883
    instance-of p2, p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz p2, :cond_6

    .line 1884
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-ltz p2, :cond_6

    .line 1885
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget p2, p2, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez p2, :cond_6

    .line 1886
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->isOtherSelected()Z

    move-result p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1892
    :cond_7
    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void
.end method

.method private updateActionBar(Z)V
    .locals 3

    .line 1270
    iget-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShown:Z

    if-eq p1, v0, :cond_2

    .line 1271
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1272
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 1275
    iget v2, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShownT:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShown:Z

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarAnimator:Landroid/animation/ValueAnimator;

    .line 1276
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1282
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1283
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x17c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1284
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method private updateActionMode()V
    .locals 9

    .line 2313
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFiles()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5

    .line 2314
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    if-eqz v0, :cond_4

    .line 2316
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-object v0, v0, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const-string v2, "Files"

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 2318
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-object v0, v0, Lorg/telegram/ui/Storage/CacheModel;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    .line 2319
    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-object v6, v6, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    iget-wide v7, v5, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2320
    iget v5, v5, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->filesCount:I

    add-int/2addr v4, v5

    goto :goto_0

    .line 2323
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFiles()I

    move-result v0

    sub-int/2addr v0, v4

    const-string v4, "Chats"

    if-lez v0, :cond_2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 2325
    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-object v6, v6, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    .line 2326
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-object v8, v8, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    new-array v4, v3, [Ljava/lang/Object;

    .line 2327
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v2, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "%s, %s"

    .line 2325
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2330
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-object v0, v0, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-object v5, v5, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2333
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFiles()I

    move-result v0

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v5}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFiles()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2335
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v1}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFilesSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    .line 2336
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2337
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2338
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    :cond_4
    return-void

    .line 2341
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    return-void
.end method

.method private updateChart()V
    .locals 8

    .line 427
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChart:Lorg/telegram/ui/Components/CacheChart;

    if-eqz v0, :cond_6

    .line 428
    iget-boolean v1, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_4

    iget-wide v6, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    cmp-long v6, v6, v2

    if-lez v6, :cond_4

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/telegram/ui/Components/CacheChart$SegmentSize;

    .line 430
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_2

    .line 431
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 432
    iget v2, v1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 433
    iget v2, v1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez v2, :cond_0

    .line 434
    iget-boolean v2, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    if-eqz v2, :cond_1

    .line 435
    iget-wide v1, v1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    const/16 v6, 0x8

    aget-boolean v3, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->of(JZ)Lorg/telegram/ui/Components/CacheChart$SegmentSize;

    move-result-object v1

    aput-object v1, v0, v6

    goto :goto_1

    .line 438
    :cond_0
    iget-wide v6, v1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v1, v1, v2

    invoke-static {v6, v7, v1}, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->of(JZ)Lorg/telegram/ui/Components/CacheChart$SegmentSize;

    move-result-object v1

    aput-object v1, v0, v2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 442
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/telegram/ui/CacheControlActivity;->fragmentCreateTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x50

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 443
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChart:Lorg/telegram/ui/Components/CacheChart;

    iget-object v1, v1, Lorg/telegram/ui/Components/CacheChart;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 445
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChart:Lorg/telegram/ui/Components/CacheChart;

    iget-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    invoke-virtual {v1, v2, v3, v5, v0}, Lorg/telegram/ui/Components/CacheChart;->setSegments(JZ[Lorg/telegram/ui/Components/CacheChart$SegmentSize;)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    const-wide/16 v1, -0x1

    new-array v3, v4, [Lorg/telegram/ui/Components/CacheChart$SegmentSize;

    .line 447
    invoke-virtual {v0, v1, v2, v5, v3}, Lorg/telegram/ui/Components/CacheChart;->setSegments(JZ[Lorg/telegram/ui/Components/CacheChart$SegmentSize;)V

    goto :goto_2

    :cond_5
    new-array v1, v4, [Lorg/telegram/ui/Components/CacheChart$SegmentSize;

    .line 449
    invoke-virtual {v0, v2, v3, v5, v1}, Lorg/telegram/ui/Components/CacheChart;->setSegments(JZ[Lorg/telegram/ui/Components/CacheChart$SegmentSize;)V

    .line 452
    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->clearCacheButton:Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    if-nez v1, :cond_7

    .line 453
    invoke-virtual {v0}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->updateSize()V

    :cond_7
    return-void
.end method

.method private updateDatabaseItemSize()V
    .locals 3

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->clearDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_0

    .line 201
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 202
    sget v1, Lorg/telegram/messenger/R$string;->ClearLocalDatabase:I

    const-string v2, "ClearLocalDatabase"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 207
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->clearDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateRows()V
    .locals 1

    const/4 v0, 0x1

    .line 663
    invoke-direct {p0, v0}, Lorg/telegram/ui/CacheControlActivity;->updateRows(Z)V

    return-void
.end method

.method private updateRows(Z)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->fragmentCreateTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x50

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    .line 671
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 672
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->oldItems:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 674
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 675
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v7, 0xa

    invoke-direct {v4, v7, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/CacheControlActivity;->sectionsStartRow:I

    .line 680
    iget-boolean v3, v0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x3

    const/4 v10, 0x7

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    if-eqz v3, :cond_2

    .line 681
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v14, 0xc

    invoke-direct {v5, v14, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v5, v14, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v5, v14, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v5, v14, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v5, v14, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    move v3, v11

    goto/16 :goto_4

    .line 688
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 689
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    cmp-long v14, v14, v12

    if-lez v14, :cond_3

    .line 690
    sget v14, Lorg/telegram/messenger/R$string;->LocalPhotoCache:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    const-string v15, "statisticChartLine_lightblue"

    invoke-static {v14, v1, v4, v5, v15}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJLjava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_3
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    cmp-long v4, v4, v12

    if-lez v4, :cond_4

    .line 693
    sget v4, Lorg/telegram/messenger/R$string;->LocalVideoCache:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    const-string v5, "statisticChartLine_blue"

    invoke-static {v4, v11, v14, v15, v5}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJLjava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    :cond_4
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    cmp-long v4, v4, v12

    if-lez v4, :cond_5

    .line 696
    sget v4, Lorg/telegram/messenger/R$string;->LocalDocumentCache:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    const-string v5, "statisticChartLine_green"

    invoke-static {v4, v7, v14, v15, v5}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJLjava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_5
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    cmp-long v4, v4, v12

    if-lez v4, :cond_6

    .line 699
    sget v4, Lorg/telegram/messenger/R$string;->LocalMusicCache:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    const-string v5, "statisticChartLine_red"

    invoke-static {v4, v9, v14, v15, v5}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJLjava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    :cond_6
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    cmp-long v4, v4, v12

    const/4 v5, 0x4

    if-lez v4, :cond_7

    .line 702
    sget v4, Lorg/telegram/messenger/R$string;->LocalAudioCache:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    const-string v7, "statisticChartLine_lightgreen"

    invoke-static {v4, v5, v14, v15, v7}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJLjava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_7
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    cmp-long v4, v14, v12

    const/4 v7, 0x5

    if-lez v4, :cond_8

    .line 705
    sget v4, Lorg/telegram/messenger/R$string;->LocalStickersCache:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    const-string v9, "statisticChartLine_orange"

    invoke-static {v4, v7, v14, v15, v9}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJLjava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_8
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    cmp-long v4, v14, v12

    if-lez v4, :cond_9

    .line 708
    sget v4, Lorg/telegram/messenger/R$string;->LocalProfilePhotosCache:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x6

    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    const-string v6, "statisticChartLine_cyan"

    invoke-static {v4, v9, v14, v15, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJLjava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_9
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    cmp-long v4, v14, v12

    if-lez v4, :cond_a

    .line 711
    sget v4, Lorg/telegram/messenger/R$string;->LocalMiscellaneousCache:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    const-string v6, "statisticChartLine_purple"

    invoke-static {v4, v10, v14, v15, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJLjava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 714
    sget-object v4, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda18;->INSTANCE:Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda18;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 715
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iput-boolean v11, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->last:Z

    .line 718
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->tempSizes:[F

    if-nez v4, :cond_b

    const/16 v4, 0x9

    new-array v6, v4, [F

    .line 719
    iput-object v6, v0, Lorg/telegram/ui/CacheControlActivity;->tempSizes:[F

    :cond_b
    move v4, v1

    .line 721
    :goto_2
    iget-object v6, v0, Lorg/telegram/ui/CacheControlActivity;->tempSizes:[F

    array-length v9, v6

    if-ge v4, v9, :cond_c

    .line 722
    invoke-direct {v0, v4}, Lorg/telegram/ui/CacheControlActivity;->size(I)J

    move-result-wide v12

    long-to-float v9, v12

    aput v9, v6, v4

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v12, 0x0

    goto :goto_2

    .line 724
    :cond_c
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    if-nez v4, :cond_d

    const/16 v4, 0x9

    new-array v4, v4, [I

    .line 725
    iput-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    .line 727
    :cond_d
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    invoke-static {v6, v4}, Lorg/telegram/messenger/AndroidUtilities;->roundPercents([F[I)[I

    .line 730
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v7, :cond_f

    .line 731
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v6, v1

    move v4, v5

    const-wide/16 v12, 0x0

    .line 734
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_e

    .line 735
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iput-boolean v11, v7, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    .line 736
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget-wide v14, v7, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    add-long/2addr v12, v14

    .line 737
    iget-object v7, v0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget v9, v9, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    aget v7, v7, v9

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 739
    :cond_e
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    const/16 v7, 0x8

    aput v6, v4, v7

    .line 740
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/messenger/R$string;->LocalOther:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "statisticChartLine_golden"

    invoke-static {v6, v8, v12, v13, v7}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJLjava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    iget-boolean v4, v0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    if-nez v4, :cond_1

    .line 742
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 745
    :cond_f
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_10
    move v3, v1

    :goto_4
    if-eqz v3, :cond_11

    .line 751
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/CacheControlActivity;->sectionsEndRow:I

    .line 752
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v7}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/messenger/R$string;->StorageUsageInfo:I

    const-string v6, "StorageUsageInfo"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asInfo(Ljava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 755
    :cond_11
    iput v8, v0, Lorg/telegram/ui/CacheControlActivity;->sectionsEndRow:I

    .line 758
    :goto_5
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    sget v6, Lorg/telegram/messenger/R$string;->AutoDeleteCachedMedia:I

    const-string v7, "AutoDeleteCachedMedia"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-direct {v5, v7, v6, v8}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v5, v10, v1}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v4, v10, v11}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/4 v5, 0x2

    invoke-direct {v4, v10, v5}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->KeepMediaInfoPart:I

    const-string v5, "KeepMediaInfoPart"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asInfo(Ljava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_12

    .line 765
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    sget v5, Lorg/telegram/messenger/R$string;->MaxCacheSize:I

    const-string v6, "MaxCacheSize"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-direct {v4, v6, v5, v7}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v5, 0xe

    invoke-direct {v4, v5, v7}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILorg/telegram/ui/CacheControlActivity$1;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->MaxCacheSizeInfo:I

    const-string v5, "MaxCacheSizeInfo"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asInfo(Ljava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    if-eqz v3, :cond_13

    .line 770
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lorg/telegram/ui/Storage/CacheModel;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 771
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v5}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    if-eqz v1, :cond_15

    if-eqz v2, :cond_14

    .line 776
    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->oldItems:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_6

    .line 778
    :cond_14
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 781
    :cond_15
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    if-eqz v1, :cond_16

    .line 782
    invoke-virtual {v1}, Lorg/telegram/ui/CachedMediaLayout;->update()V

    :cond_16
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 14

    .line 1056
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1057
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 1058
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 1059
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 1060
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1061
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 1062
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v4, "listSelectorSDK21"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 1063
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v4, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1064
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 1065
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->StorageUsage:I

    const-string v5, "StorageUsage"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1066
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/CacheControlActivity$1;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 1090
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1091
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, 0x48

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1093
    new-instance v6, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v6, p1, v2, v2, v2}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    .line 1094
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v7, 0x3eb33333    # 0.35f

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x15e

    move-object v12, v4

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 1095
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v6, 0x12

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 1096
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string v6, "fonts/rmedium.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1097
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 1098
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v7, -0x1

    const/16 v8, 0x12

    const/16 v9, 0x13

    const/4 v10, 0x0

    const/16 v11, -0xb

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1100
    new-instance v7, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v7, p1, v2, v2, v2}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v7, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const v8, 0x3eb33333    # 0.35f

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x15e

    move-object v13, v4

    .line 1101
    invoke-virtual/range {v7 .. v13}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 1102
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v5, 0xe

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 1103
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string v7, "windowBackgroundWhiteGrayText"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 1104
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v7, -0x1

    const/16 v8, 0x12

    const/16 v9, 0x13

    const/4 v10, 0x0

    const/16 v11, 0xa

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1106
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    .line 1107
    invoke-virtual {v3, v2, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1108
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v3, v7, v1, v5, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1109
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    const-string v5, "featuredStickers_buttonText"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1110
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    new-array v5, v2, [F

    const/high16 v7, 0x40c00000    # 6.0f

    aput v7, v5, v1

    const-string v7, "featuredStickers_addButton"

    invoke-static {v7, v5}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(Ljava/lang/String;[F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1111
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1112
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1113
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->CacheClear:I

    const-string v6, "CacheClear"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1115
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    const/4 v5, -0x2

    const/16 v6, 0x1c

    const/16 v7, 0x15

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1117
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    .line 1118
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v6, Lorg/telegram/messenger/R$string;->ClearLocalDatabase:I

    const-string v7, "ClearLocalDatabase"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v0, v7, v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->clearDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const-string v3, "dialogRedIcon"

    .line 1119
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    .line 1120
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->clearDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const-string v3, "dialogTextRed"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 1121
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateDatabaseItemSize()V

    .line 1123
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/CacheControlActivity$ListAdapter;-><init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    .line 1125
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/CacheControlActivity$2;-><init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

    .line 1143
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const-string v3, "windowBackgroundGray"

    .line 1145
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1147
    new-instance v3, Lorg/telegram/ui/CacheControlActivity$3;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/CacheControlActivity$3;-><init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1162
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1163
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1164
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v7

    div-int/2addr v7, v5

    add-int/2addr v6, v7

    invoke-virtual {v3, v1, v6, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1165
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5, p1, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1166
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, -0x1

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1167
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1168
    new-instance v2, Lorg/telegram/ui/CacheControlActivity$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$4;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    const-wide/16 v5, 0x15e

    .line 1174
    invoke-virtual {v2, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 1175
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1176
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 1177
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 1178
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1179
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 1214
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$5;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1228
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, -0x2

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1230
    new-instance v1, Lorg/telegram/ui/Components/UndoView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheRemovedTooltip:Lorg/telegram/ui/Components/UndoView;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x53

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/16 v8, 0x8

    .line 1231
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1232
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->setTargetListView(Landroid/view/View;)V

    .line 1233
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 1446
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didClearDatabase:I

    if-ne p1, p2, :cond_1

    .line 1448
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_0

    .line 1449
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1452
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 1454
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1455
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    if-eqz p1, :cond_1

    .line 1456
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabaseSize()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    .line 1458
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateDatabaseItemSize()V

    .line 1459
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    :cond_1
    return-void
.end method

.method public fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;",
            ">;",
            "Lorg/telegram/ui/Storage/CacheModel;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 580
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 584
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_b

    aget-object v2, p1, v1

    .line 585
    sget-boolean v3, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v3, :cond_2

    return-void

    .line 588
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 589
    invoke-virtual {p0, v2, p2, p3, p4}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    goto/16 :goto_3

    .line 591
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".nomedia"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 594
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lorg/telegram/messenger/FilePathDatabase;->getFileDialogId(Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    move-result-object v3

    .line 596
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".mp3"

    .line 597
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, ".m4a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    move v5, p2

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v5, 0x3

    .line 600
    :goto_2
    new-instance v6, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    invoke-direct {v6, v2}, Lorg/telegram/ui/Storage/CacheModel$FileInfo;-><init>(Ljava/io/File;)V

    .line 601
    iput v5, v6, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->type:I

    if-eqz v3, :cond_7

    .line 603
    iget-wide v7, v3, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->dialogId:J

    iput-wide v7, v6, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    .line 604
    iget v7, v3, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageId:I

    iput v7, v6, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->messageId:I

    .line 605
    iget v3, v3, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageType:I

    iput v3, v6, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->messageType:I

    .line 607
    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v6, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    .line 608
    iget-wide v2, v6, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-eqz v7, :cond_9

    .line 609
    invoke-virtual {p3, v2, v3, v4}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    if-nez v2, :cond_8

    .line 611
    new-instance v2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    iget-wide v3, v6, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;-><init>(J)V

    .line 612
    iget-wide v3, v6, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    invoke-virtual {p3, v3, v4, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 614
    :cond_8
    invoke-virtual {v2, v6, v5}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->addFile(Lorg/telegram/ui/Storage/CacheModel$FileInfo;I)V

    :cond_9
    if-eqz p4, :cond_a

    .line 617
    invoke-virtual {p4, v5, v6}, Lorg/telegram/ui/Storage/CacheModel;->add(ILorg/telegram/ui/Storage/CacheModel$FileInfo;)V

    :cond_a
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2348
    new-instance v7, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda19;

    invoke-direct {v7, v0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    .line 2357
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2359
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v2, 0x4

    new-array v13, v2, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v3, 0x0

    aput-object v2, v13, v3

    const-class v2, Lorg/telegram/ui/Components/SlideChooseView;

    const/4 v4, 0x1

    aput-object v2, v13, v4

    const/4 v2, 0x2

    const-class v5, Lorg/telegram/ui/Components/StorageUsageView;

    aput-object v5, v13, v2

    const/4 v2, 0x3

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v13, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "windowBackgroundWhite"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2360
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v25, "windowBackgroundGray"

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2362
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v13, 0x0

    const-string v17, "actionBarDefault"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2363
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v25, "actionBarDefault"

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2364
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v17, "actionBarDefaultIcon"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2365
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v25, "actionBarDefaultTitle"

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2366
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v17, "actionBarDefaultSelector"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2368
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v25, "listSelectorSDK21"

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2370
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v13, v4, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v2, v13, v3

    const-string v2, "textView"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v14

    const/4 v12, 0x0

    const/16 v17, 0x0

    const-string v18, "windowBackgroundWhiteBlackText"

    move-object v10, v1

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2371
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v4, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v8, v6, v3

    const-string v8, "valueTextView"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v23

    const/16 v21, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v27, "windowBackgroundWhiteValueText"

    move-object/from16 v19, v1

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2373
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v13, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v13, v3

    const/4 v14, 0x0

    const-string v17, "windowBackgroundGrayShadow"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2374
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v4, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v10, v6, v3

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v22

    const/16 v20, 0x0

    const/16 v23, 0x0

    const-string v26, "windowBackgroundWhiteGrayText4"

    move-object/from16 v18, v1

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2375
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v13, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v13, v3

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v14

    const/4 v12, 0x0

    const/16 v17, 0x0

    const-string v18, "windowBackgroundWhiteBlueHeader"

    move-object v10, v1

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2376
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v4, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Components/StorageUsageView;

    aput-object v10, v6, v3

    const-string v10, "paintFill"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v23

    const/16 v21, 0x0

    const/16 v26, 0x0

    const-string v27, "player_progressBackground"

    move-object/from16 v19, v1

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2377
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v13, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/StorageUsageView;

    aput-object v5, v13, v3

    const-string v5, "paintProgress"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v14

    const-string v18, "player_progress"

    move-object v10, v1

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2378
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v4, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Components/StorageUsageView;

    aput-object v10, v6, v3

    const-string v10, "telegramCacheTextView"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v23

    const-string v27, "windowBackgroundWhiteGrayText"

    move-object/from16 v19, v1

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2379
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v13, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/StorageUsageView;

    aput-object v5, v13, v3

    const-string v5, "freeSizeTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v14

    const-string v18, "windowBackgroundWhiteGrayText"

    move-object v10, v1

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2380
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v4, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Components/StorageUsageView;

    aput-object v10, v6, v3

    const-string v10, "calculationgTextView"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v23

    const-string v27, "windowBackgroundWhiteGrayText"

    move-object/from16 v19, v1

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2382
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v13, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v5, v13, v3

    const/4 v14, 0x0

    const-string v17, "switchTrack"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2383
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v4, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v10, v6, v3

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v25, "switchTrackChecked"

    move-object/from16 v18, v1

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2384
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v13, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v5, v13, v3

    const-string v17, "windowBackgroundWhiteGrayText"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2386
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    const/16 v21, 0x0

    const-string v25, "windowBackgroundWhiteGrayText"

    move-object/from16 v18, v1

    move-object/from16 v19, v5

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2387
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    new-array v13, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/CheckBoxCell;

    aput-object v5, v13, v3

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    const-string v18, "windowBackgroundWhiteBlackText"

    move-object v10, v1

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2388
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    new-array v6, v4, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/CheckBoxCell;

    aput-object v10, v6, v3

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v23

    const/16 v21, 0x0

    const/16 v25, 0x0

    const-string v27, "windowBackgroundWhiteValueText"

    move-object/from16 v19, v1

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2389
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    new-array v13, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/CheckBoxCell;

    aput-object v5, v13, v3

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const-string v17, "divider"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2390
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    new-array v6, v4, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Components/StorageDiagramView;

    aput-object v8, v6, v3

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v25, "windowBackgroundWhiteBlackText"

    move-object/from16 v18, v1

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2392
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    new-array v13, v4, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    aput-object v4, v13, v3

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v14

    const/4 v11, 0x0

    const/16 v17, 0x0

    const-string v18, "windowBackgroundWhiteBlackText"

    move-object v10, v1

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2393
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "dialogBackground"

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2395
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v18, "statisticChartLine_blue"

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2396
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    const/16 v21, 0x0

    const/16 v25, 0x0

    const-string v26, "statisticChartLine_green"

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2397
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v17, "statisticChartLine_red"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2398
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v25, "statisticChartLine_golden"

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2399
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    const-string v17, "statisticChartLine_lightblue"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2400
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    const-string v25, "statisticChartLine_lightgreen"

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2401
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    const-string v17, "statisticChartLine_orange"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2402
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    const-string v25, "statisticChartLine_indigo"

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v9
.end method

.method public isLightStatusBar()Z
    .locals 2

    .line 1019
    iget-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->changeStatusBar:Z

    if-nez v0, :cond_0

    .line 1020
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "windowBackgroundGray"

    .line 1022
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 2803
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2804
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 2805
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    .line 2808
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    iget-object p1, p1, Lorg/telegram/ui/CachedMediaLayout;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->isCurrentTabFirst()Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public needDelayOpenAnimation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .line 2816
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2817
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->clearSelection()V

    .line 2818
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2819
    invoke-virtual {v0, v1}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    .line 2820
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/CachedMediaLayout;->updateVisibleRows()V

    :cond_0
    return v1

    .line 2824
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 3

    .line 312
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    const/4 v0, 0x0

    .line 313
    sput-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    .line 314
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didClearDatabase:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 315
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getDatabaseSize()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    .line 318
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/CacheControlActivity;->fragmentCreateTime:J

    .line 421
    invoke-direct {p0, v0}, Lorg/telegram/ui/CacheControlActivity;->updateRows(Z)V

    .line 422
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 793
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 794
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didClearDatabase:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 796
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    .line 797
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 803
    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v0, 0x1

    .line 804
    sput-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    move p2, p1

    .line 2607
    :goto_0
    array-length v0, p3

    if-ge p2, v0, :cond_1

    .line 2608
    aget v0, p3, p2

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 2613
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_2

    sget-object p1, Lorg/telegram/messenger/FilesMigrationService;->filesMigrationBottomSheet:Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;

    if-eqz p1, :cond_2

    .line 2614
    invoke-virtual {p1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;->migrateOldFolder()V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1437
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1438
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onTransitionAnimationProgress(ZF)V
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 1010
    iget-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->changeStatusBar:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1011
    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->changeStatusBar:Z

    .line 1012
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1014
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    return-void
.end method

.method public setCacheModel(Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 1

    .line 570
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    .line 571
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {v0, p1}, Lorg/telegram/ui/CachedMediaLayout;->setCacheModel(Lorg/telegram/ui/Storage/CacheModel;)V

    :cond_0
    return-void
.end method
