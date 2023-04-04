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
        Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;,
        Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;
    }
.end annotation


# static fields
.field private static LISTDIR_DOCTYPE2_EMOJI:I = 0x3

.field private static LISTDIR_DOCTYPE2_OTHER:I = 0x5

.field private static LISTDIR_DOCTYPE2_TEMP:I = 0x4

.field private static LISTDIR_DOCTYPE_MUSIC:I = 0x2

.field private static LISTDIR_DOCTYPE_OTHER_THAN_MUSIC:I = 0x1

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

.method public static synthetic $r8$lambda$-oj4BoKC0jrfFrDYeGrSHcIwmcE(Lorg/telegram/ui/CacheControlActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupFoldersInternal$13(J)V

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

.method public static synthetic $r8$lambda$937i_IzOaB3ZKHrP0ffdXwjOjB8(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CacheControlActivity;->lambda$loadDialogEntities$5(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A42CTAfiMYDg5KedKz61w52oRWs(Lorg/telegram/ui/CacheControlActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$clearSelectedFiles$18(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ASnnSSZ00QVsA2WdzBVBowqlDUM(Lorg/telegram/ui/CacheControlActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$createView$16(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$BJxDSoYVuTfaygG8U-lRq00SDZ0(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CacheControlActivity;->lambda$loadDialogEntities$4(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FEr7wJRJn1zFZYfOEPQe2xtu9Tc(Lorg/telegram/ui/CacheControlActivity;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CacheControlActivity;->lambda$createView$17(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hz7Yz15aJ2cIJnPsN-oEM9Vbi0A(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$getThemeDescriptions$23()V

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

.method public static synthetic $r8$lambda$Q7mhC7jMES9oA8fZ-W9YCiGnQkM(Lorg/telegram/ui/CacheControlActivity;ZJLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupFoldersInternal$14(ZJLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WTzcB5Edmf-rGJ3SCEqsRhmLCqQ(Lorg/telegram/ui/CacheControlActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->lambda$updateActionBar$19(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cc2k4OmmdM8W6YIx68LXbjodmL0(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupDialogFiles$21(Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g5zEDzaBPebrZ6iH7mSRp1YecRg(Lorg/telegram/ui/CacheControlActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$clearDatabase$22(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hifz9AxYrlDIPUyUAyOYFEAF-Hs(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$onFragmentCreate$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$j3eUokb-TsWLJDOY9sBrERmn3Uo(Lorg/telegram/ui/CacheControlActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->lambda$createView$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kKYKaG24rDoiVMKCSU7sE67wNMg(Lorg/telegram/messenger/Utilities$Callback2;[IIJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupFoldersInternal$12(Lorg/telegram/messenger/Utilities$Callback2;[IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$mKFpdTSAptJk2iH-o4ZM6DfT5jk(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupFolders$9(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pNwQ_lBiwKeE4mrwUbo4qFSXtIw(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupFolders$10(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tK5oJGY77ia1X-5Y2cpxR_84PH8(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupDialogFiles$20(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vxzvKT2G1lROIBn6AY0pq--K5eM(Lorg/telegram/ui/CacheControlActivity$ItemInner;Lorg/telegram/ui/CacheControlActivity$ItemInner;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->lambda$updateRows$8(Lorg/telegram/ui/CacheControlActivity$ItemInner;Lorg/telegram/ui/CacheControlActivity$ItemInner;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wONQZJZ87lbDEjWorwGdFmR2148(Lorg/telegram/messenger/Utilities$Callback2;[IILjava/lang/Float;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupFoldersInternal$11(Lorg/telegram/messenger/Utilities$Callback2;[IILjava/lang/Float;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 120
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Z

    .line 152
    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    const-wide/16 v0, -0x1

    .line 153
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    .line 154
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheEmojiSize:J

    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    .line 155
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    .line 156
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    .line 157
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    .line 158
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    .line 159
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    .line 160
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    .line 161
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    .line 162
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    .line 163
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    .line 164
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->migrateOldFolderRow:J

    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    .line 166
    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    const/4 v0, -0x1

    .line 172
    iput v0, p0, Lorg/telegram/ui/CacheControlActivity;->sectionsStartRow:I

    .line 173
    iput v0, p0, Lorg/telegram/ui/CacheControlActivity;->sectionsEndRow:I

    .line 635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->oldItems:Ljava/util/ArrayList;

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1389
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

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/CacheControlActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/CacheControlActivity;->sectionsEndRow:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/Components/CacheChart;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChart:Lorg/telegram/ui/Components/CacheChart;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/Components/CacheChart;)Lorg/telegram/ui/Components/CacheChart;
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChart:Lorg/telegram/ui/Components/CacheChart;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/CacheControlActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/CacheControlActivity;Z)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->updateActionBar(Z)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/Components/NestedSizeNotifierLayout;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity;->cleanupDialogFiles(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Lorg/telegram/ui/Storage/CacheModel;)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/CacheControlActivity;F)Ljava/lang/String;
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->formatPercent(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CachedMediaLayout;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/CacheControlActivity;)[Z
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CachedMediaLayout;)Lorg/telegram/ui/CachedMediaLayout;
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 120
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    return-wide v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 120
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    return-wide v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 120
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    return-wide v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 120
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    return-wide v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 120
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    return-wide v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 120
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    return-wide v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 120
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    return-wide v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 120
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    return-wide v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/CacheControlActivity;)Z
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->isAllSectionsSelected()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->clearSelectedFiles()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->cleanupFolders(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 120
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->migrateOldFolderRow:J

    return-wide v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 120
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    return-wide v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/CacheControlActivity;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/CacheControlActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChartHeader:Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;

    return-object p0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;)Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChartHeader:Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;

    return-object p1
.end method

.method static synthetic access$3700(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->clearDatabase()V

    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateActionMode()V

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->showClearCacheDialog(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    return-void
.end method

.method static synthetic access$4202(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;)Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->clearCacheButton:Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;

    return-object p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 120
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    return-wide v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 120
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    return-wide v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/CacheControlActivity;)Z
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->isOtherSelected()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/CacheControlActivity;)[I
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/CacheControlActivity;Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity;->getCheckBoxTitle(Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/CacheControlActivity;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    return p0
.end method

.method static synthetic access$4802(Lorg/telegram/ui/CacheControlActivity;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    return p1
.end method

.method static synthetic access$4900(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 120
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/CacheControlActivity;)F
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/CacheControlActivity;Landroid/view/View;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->toggleOtherSelected(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$502(Lorg/telegram/ui/CacheControlActivity;F)F
    .locals 0

    .line 120
    iput p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void
.end method

.method static synthetic access$516(Lorg/telegram/ui/CacheControlActivity;F)F
    .locals 1

    .line 120
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    return v0
.end method

.method static synthetic access$524(Lorg/telegram/ui/CacheControlActivity;F)F
    .locals 1

    .line 120
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/CacheControlActivity;)F
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShownT:F

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/CacheControlActivity;)I
    .locals 0

    .line 120
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

    .line 225
    :cond_0
    sget-object v0, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculated:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 226
    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculatedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    return-void

    .line 231
    :cond_1
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static cleanDirJava(Ljava/lang/String;I[ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[I",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 896
    invoke-static {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->countDirJava(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    new-array p2, v1, [I

    aput v2, p2, v2

    .line 900
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 901
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 902
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    move v4, v2

    .line 903
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_10

    .line 904
    aget-object v5, v3, v4

    .line 905
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    .line 906
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_7

    :cond_1
    if-lez p1, :cond_d

    .line 910
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_d

    .line 911
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".mp3"

    .line 912
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, ".m4a"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    move v8, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v8, v1

    :goto_2
    const-string v9, ".tgs"

    .line 913
    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, ".webm"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    move v9, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v9, v1

    :goto_4
    const-string v10, ".tmp"

    .line 914
    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, ".temp"

    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, ".preload"

    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    move v7, v2

    goto :goto_6

    :cond_7
    :goto_5
    move v7, v1

    :goto_6
    if-eqz v8, :cond_8

    .line 916
    sget v10, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE_OTHER_THAN_MUSIC:I

    if-eq p1, v10, :cond_f

    :cond_8
    if-nez v8, :cond_9

    sget v8, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE_MUSIC:I

    if-eq p1, v8, :cond_f

    :cond_9
    if-eqz v9, :cond_a

    sget v8, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE2_OTHER:I

    if-eq p1, v8, :cond_f

    :cond_a
    if-nez v9, :cond_b

    sget v8, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE2_EMOJI:I

    if-eq p1, v8, :cond_f

    :cond_b
    if-eqz v7, :cond_c

    sget v8, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE2_OTHER:I

    if-eq p1, v8, :cond_f

    :cond_c
    if-nez v7, :cond_d

    sget v7, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE2_TEMP:I

    if-ne p1, v7, :cond_d

    goto :goto_7

    .line 928
    :cond_d
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 929
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity;->cleanDirJava(Ljava/lang/String;I[ILorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_7

    .line 931
    :cond_e
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 933
    aget v5, p2, v2

    add-int/2addr v5, v1

    aput v5, p2, v2

    .line 934
    aget v5, p2, v2

    int-to-float v5, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {p3, v5}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_f
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method private cleanupDialogFiles(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1436
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v4, 0x0

    .line 1437
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    const-wide/16 v6, 0x1f4

    .line 1438
    invoke-virtual {v3, v6, v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 1440
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1441
    iget-wide v7, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    move v9, v4

    :goto_0
    const/4 v10, 0x7

    const/4 v11, 0x1

    if-ge v9, v10, :cond_9

    if-eqz p2, :cond_0

    .line 1444
    aget-object v10, p2, v9

    if-eqz v10, :cond_8

    aget-object v10, p2, v9

    iget-boolean v10, v10, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    if-nez v10, :cond_0

    goto/16 :goto_1

    .line 1448
    :cond_0
    iget-object v10, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;

    if-nez v10, :cond_1

    goto :goto_1

    .line 1452
    :cond_1
    iget-object v12, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1453
    iget-wide v12, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    iget-wide v14, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v12, v14

    iput-wide v12, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    .line 1454
    iget-wide v12, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    sub-long/2addr v12, v14

    iput-wide v12, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    .line 1455
    iget-wide v12, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    add-long/2addr v12, v14

    iput-wide v12, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    .line 1456
    iget-object v12, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->delete(I)V

    if-nez v9, :cond_2

    .line 1458
    iget-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    iget-wide v13, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v11, v13

    iput-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    goto :goto_1

    :cond_2
    if-ne v9, v11, :cond_3

    .line 1460
    iget-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    iget-wide v13, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v11, v13

    iput-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    goto :goto_1

    :cond_3
    const/4 v11, 0x2

    if-ne v9, v11, :cond_4

    .line 1462
    iget-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    iget-wide v13, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v11, v13

    iput-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    goto :goto_1

    :cond_4
    if-ne v9, v5, :cond_5

    .line 1464
    iget-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    iget-wide v13, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v11, v13

    iput-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    goto :goto_1

    :cond_5
    const/4 v11, 0x4

    if-ne v9, v11, :cond_6

    .line 1466
    iget-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    iget-wide v13, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v11, v13

    iput-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    goto :goto_1

    :cond_6
    const/4 v11, 0x5

    if-ne v9, v11, :cond_7

    .line 1468
    iget-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    iget-wide v13, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v11, v13

    iput-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    goto :goto_1

    .line 1470
    :cond_7
    iget-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    iget-wide v13, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v11, v13

    iput-wide v11, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    :cond_8
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1473
    :cond_9
    iget-object v5, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_a

    .line 1474
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Storage/CacheModel;->remove(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    .line 1476
    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    if-eqz v2, :cond_10

    .line 1478
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

    .line 1479
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1480
    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    iget-wide v12, v5, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v9, v12

    iput-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    .line 1481
    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    add-long/2addr v9, v12

    iput-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    .line 1482
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1483
    invoke-virtual {v1, v5}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->removeFile(Lorg/telegram/ui/Storage/CacheModel$FileInfo;)V

    .line 1484
    iget v9, v5, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->type:I

    if-nez v9, :cond_c

    .line 1485
    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    iget-wide v12, v5, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v9, v12

    iput-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    goto :goto_2

    :cond_c
    if-ne v9, v11, :cond_d

    .line 1487
    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    iget-wide v12, v5, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v9, v12

    iput-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    goto :goto_2

    .line 1488
    :cond_d
    iget-wide v9, v5, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    const-wide/16 v12, 0x2

    cmp-long v5, v9, v12

    if-nez v5, :cond_e

    .line 1489
    iget-wide v12, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    sub-long/2addr v12, v9

    iput-wide v12, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    goto :goto_2

    :cond_e
    const-wide/16 v12, 0x3

    cmp-long v5, v9, v12

    if-nez v5, :cond_f

    .line 1491
    iget-wide v12, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    sub-long/2addr v12, v9

    iput-wide v12, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    goto :goto_2

    :cond_f
    const-wide/16 v12, 0x4

    cmp-long v5, v9, v12

    if-nez v5, :cond_b

    .line 1493
    iget-wide v12, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    sub-long/2addr v12, v9

    iput-wide v12, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    goto :goto_2

    .line 1498
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

    .line 1499
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Storage/CacheModel;->onFileDeleted(Lorg/telegram/ui/Storage/CacheModel$FileInfo;)V

    goto :goto_3

    .line 1502
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

    .line 1503
    iget-object v7, v0, Lorg/telegram/ui/CacheControlActivity;->cacheRemovedTooltip:Lorg/telegram/ui/Components/UndoView;

    const-wide/16 v8, 0x0

    const/16 v10, 0x13

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1505
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1506
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/FilePathDatabase;->removeFiles(Ljava/util/List;)V

    .line 1507
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadAllFiles()V

    .line 1508
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/FileLoader;->getFileLoaderQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda13;

    invoke-direct {v4, v0, v1, v3}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private cleanupFolders(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 827
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->clearSelection()V

    .line 830
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    if-eqz v0, :cond_1

    .line 831
    invoke-virtual {v0}, Lorg/telegram/ui/CachedMediaLayout;->updateVisibleRows()V

    .line 832
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    .line 838
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadAllFiles()V

    .line 839
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->getFileLoaderQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 842
    invoke-virtual {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->setCacheModel(Lorg/telegram/ui/Storage/CacheModel;)V

    return-void
.end method

.method private cleanupFoldersInternal(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p0

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 945
    iget-object v3, v6, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v4, v3, v2

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    aget-boolean v7, v3, v0

    if-eqz v7, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    add-int/2addr v4, v7

    aget-boolean v7, v3, v5

    if-eqz v7, :cond_2

    move v7, v5

    goto :goto_2

    :cond_2
    move v7, v2

    :goto_2
    add-int/2addr v4, v7

    const/4 v13, 0x3

    aget-boolean v7, v3, v13

    if-eqz v7, :cond_3

    move v7, v5

    goto :goto_3

    :cond_3
    move v7, v2

    :goto_3
    add-int/2addr v4, v7

    const/4 v14, 0x4

    aget-boolean v7, v3, v14

    add-int/2addr v4, v7

    const/4 v15, 0x5

    aget-boolean v7, v3, v15

    if-eqz v7, :cond_4

    move v7, v5

    goto :goto_4

    :cond_4
    move v7, v2

    :goto_4
    add-int/2addr v4, v7

    const/4 v11, 0x6

    aget-boolean v7, v3, v11

    add-int/2addr v4, v7

    const/4 v12, 0x7

    aget-boolean v3, v3, v12

    add-int v10, v4, v3

    .line 946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 947
    new-instance v9, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda20;

    move-object/from16 v8, p1

    invoke-direct {v9, v8, v1, v10}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/Utilities$Callback2;[II)V

    .line 950
    new-instance v16, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda4;

    move-object/from16 v7, v16

    move-object v2, v9

    move-object v9, v1

    move-wide v11, v3

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/Utilities$Callback2;[IIJ)V

    const-wide/16 v3, 0x0

    move v9, v0

    move-wide v7, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_5
    const/16 v10, 0x8

    if-ge v4, v10, :cond_20

    .line 955
    iget-object v10, v6, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v10, v10, v4

    if-nez v10, :cond_5

    move-object/from16 v19, v1

    const/4 v9, 0x0

    goto/16 :goto_11

    :cond_5
    const/4 v10, -0x1

    if-nez v4, :cond_6

    .line 963
    iget-wide v11, v6, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    add-long/2addr v7, v11

    move-object/from16 v19, v1

    const/4 v0, 0x6

    const/4 v1, 0x7

    const/4 v11, 0x0

    :goto_6
    const/4 v12, 0x0

    goto/16 :goto_a

    :cond_6
    if-ne v4, v0, :cond_7

    .line 966
    iget-wide v11, v6, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    add-long/2addr v7, v11

    move-object/from16 v19, v1

    move v11, v5

    :goto_7
    const/4 v0, 0x6

    const/4 v1, 0x7

    goto :goto_6

    :cond_7
    if-ne v4, v5, :cond_8

    .line 970
    iget-wide v11, v6, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    add-long/2addr v7, v11

    move v12, v0

    move-object/from16 v19, v1

    :goto_8
    move v11, v13

    const/4 v0, 0x6

    :goto_9
    const/4 v1, 0x7

    goto :goto_a

    :cond_8
    if-ne v4, v13, :cond_9

    .line 974
    iget-wide v11, v6, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    add-long/2addr v7, v11

    move-object/from16 v19, v1

    move v12, v5

    goto :goto_8

    :cond_9
    if-ne v4, v14, :cond_a

    .line 977
    iget-wide v11, v6, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    add-long/2addr v7, v11

    move v11, v0

    move-object/from16 v19, v1

    goto :goto_7

    :cond_a
    if-ne v4, v15, :cond_b

    .line 980
    iget-wide v11, v6, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    move-object/from16 v19, v1

    iget-wide v0, v6, Lorg/telegram/ui/CacheControlActivity;->cacheEmojiSize:J

    add-long/2addr v11, v0

    add-long/2addr v7, v11

    const/4 v0, 0x6

    const/4 v1, 0x7

    const/16 v11, 0x64

    goto :goto_6

    :cond_b
    move-object/from16 v19, v1

    const/4 v0, 0x6

    if-ne v4, v0, :cond_c

    .line 982
    iget-wide v11, v6, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    add-long/2addr v7, v11

    move v11, v14

    move v12, v15

    goto :goto_9

    :cond_c
    const/4 v1, 0x7

    if-ne v4, v1, :cond_d

    .line 986
    iget-wide v11, v6, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    add-long/2addr v7, v11

    move v11, v14

    move v12, v11

    goto :goto_a

    :cond_d
    move v11, v10

    goto :goto_6

    :goto_a
    if-ne v11, v10, :cond_e

    goto/16 :goto_11

    :cond_e
    const-string v10, "acache"

    const/16 v0, 0x64

    if-ne v11, v0, :cond_f

    .line 995
    new-instance v0, Ljava/io/File;

    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_b

    .line 997
    :cond_f
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    :goto_b
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 1000
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12, v1, v2}, Lorg/telegram/ui/CacheControlActivity;->cleanDirJava(Ljava/lang/String;I[ILorg/telegram/messenger/Utilities$Callback;)V

    :cond_10
    const/4 v0, 0x0

    .line 1002
    aget v17, v19, v0

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    aput v17, v19, v0

    .line 1003
    invoke-interface/range {v16 .. v16}, Ljava/lang/Runnable;->run()V

    const/16 v15, 0x64

    if-ne v11, v15, :cond_12

    .line 1005
    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v15

    if-eqz v15, :cond_11

    .line 1007
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v13, v1, v2}, Lorg/telegram/ui/CacheControlActivity;->cleanDirJava(Ljava/lang/String;I[ILorg/telegram/messenger/Utilities$Callback;)V

    .line 1009
    :cond_11
    aget v15, v19, v0

    add-int/lit8 v15, v15, 0x1

    aput v15, v19, v0

    .line 1010
    invoke-interface/range {v16 .. v16}, Ljava/lang/Runnable;->run()V

    :cond_12
    if-eqz v11, :cond_14

    if-ne v11, v5, :cond_13

    goto :goto_c

    :cond_13
    const/4 v15, 0x0

    goto :goto_e

    :cond_14
    :goto_c
    if-nez v11, :cond_15

    const/16 v15, 0x64

    goto :goto_d

    :cond_15
    const/16 v15, 0x65

    .line 1019
    :goto_d
    invoke-static {v15}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v15

    if-eqz v15, :cond_16

    .line 1022
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v12, v1, v2}, Lorg/telegram/ui/CacheControlActivity;->cleanDirJava(Ljava/lang/String;I[ILorg/telegram/messenger/Utilities$Callback;)V

    :cond_16
    const/4 v15, 0x0

    .line 1024
    aget v17, v19, v15

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    aput v17, v19, v15

    .line 1025
    invoke-interface/range {v16 .. v16}, Ljava/lang/Runnable;->run()V

    :goto_e
    if-ne v11, v13, :cond_18

    const/16 v17, 0x5

    .line 1028
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v21

    if-eqz v21, :cond_17

    .line 1030
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12, v1, v2}, Lorg/telegram/ui/CacheControlActivity;->cleanDirJava(Ljava/lang/String;I[ILorg/telegram/messenger/Utilities$Callback;)V

    .line 1032
    :cond_17
    aget v0, v19, v15

    const/4 v1, 0x1

    add-int/2addr v0, v1

    aput v0, v19, v15

    .line 1033
    invoke-interface/range {v16 .. v16}, Ljava/lang/Runnable;->run()V

    :cond_18
    if-ne v11, v14, :cond_19

    .line 1037
    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v10

    iput-wide v10, v6, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    .line 1038
    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v14}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    const/4 v3, 0x1

    :goto_f
    const/4 v15, 0x5

    goto/16 :goto_11

    :cond_19
    const/4 v0, 0x1

    if-ne v11, v0, :cond_1a

    .line 1041
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v12}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v10

    iput-wide v10, v6, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    goto :goto_f

    :cond_1a
    if-ne v11, v13, :cond_1c

    if-ne v12, v0, :cond_1b

    .line 1044
    invoke-static {v13}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v12}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    const/4 v15, 0x5

    .line 1045
    invoke-static {v15}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v10

    invoke-static {v10, v12}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v10

    add-long/2addr v0, v10

    iput-wide v0, v6, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    goto/16 :goto_11

    :cond_1b
    const/4 v15, 0x5

    .line 1047
    invoke-static {v13}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v12}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v0

    iput-wide v0, v6, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    .line 1048
    invoke-static {v15}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v10

    invoke-static {v10, v12}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v10

    add-long/2addr v0, v10

    iput-wide v0, v6, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    goto :goto_11

    :cond_1c
    const/4 v15, 0x5

    if-nez v11, :cond_1d

    const/4 v0, 0x0

    .line 1052
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v12}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v10

    iput-wide v10, v6, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    const/16 v1, 0x64

    .line 1053
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v12}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v20

    add-long v10, v10, v20

    iput-wide v10, v6, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    :goto_10
    const/4 v3, 0x1

    goto :goto_11

    :cond_1d
    const/4 v0, 0x0

    if-ne v11, v5, :cond_1e

    .line 1055
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v12}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v10

    iput-wide v10, v6, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    const/16 v1, 0x65

    .line 1056
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v12}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v20

    add-long v10, v10, v20

    iput-wide v10, v6, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    goto :goto_11

    :cond_1e
    const/16 v1, 0x64

    if-ne v11, v1, :cond_1f

    .line 1059
    new-instance v1, Ljava/io/File;

    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v12}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v10

    iput-wide v10, v6, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    .line 1060
    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v13}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v10

    iput-wide v10, v6, Lorg/telegram/ui/CacheControlActivity;->cacheEmojiSize:J

    .line 1061
    iget-wide v0, v6, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    add-long/2addr v0, v10

    iput-wide v0, v6, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    goto :goto_10

    :cond_1f
    :goto_11
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v19

    const/4 v0, 0x1

    goto/16 :goto_5

    .line 1065
    :cond_20
    iget-wide v0, v6, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    iget-wide v4, v6, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    add-long/2addr v0, v4

    iget-wide v4, v6, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    add-long/2addr v0, v4

    iget-wide v4, v6, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    add-long/2addr v0, v4

    iget-wide v4, v6, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    add-long/2addr v0, v4

    iget-wide v4, v6, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    add-long/2addr v0, v4

    iget-wide v4, v6, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    add-long/2addr v0, v4

    iget-wide v4, v6, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculated:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v6, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    .line 1066
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculatedTime:J

    .line 1067
    iget-object v0, v6, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 1069
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1070
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1072
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_21

    .line 1073
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    goto :goto_12

    .line 1075
    :cond_21
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    :goto_12
    if-lt v0, v2, :cond_22

    .line 1079
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v10

    goto :goto_13

    .line 1081
    :cond_22
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v10, v10

    :goto_13
    if-lt v0, v2, :cond_23

    .line 1085
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    goto :goto_14

    .line 1087
    :cond_23
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    :goto_14
    mul-long/2addr v0, v4

    .line 1090
    iput-wide v0, v6, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    mul-long/2addr v10, v4

    .line 1091
    iput-wide v10, v6, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    if-eqz v9, :cond_24

    .line 1095
    iget v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->clearFilePaths()V

    .line 1097
    :cond_24
    iget v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->checkCurrentDownloadsFiles()V

    .line 1099
    new-instance v9, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda17;

    move-object v0, v9

    move-object/from16 v1, p0

    move v2, v3

    move-wide v3, v7

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/CacheControlActivity;ZJLjava/lang/Runnable;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private clearDatabase()V
    .locals 6

    .line 1530
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1531
    sget v1, Lorg/telegram/messenger/R$string;->LocalDatabaseClearTextTitle:I

    const-string v2, "LocalDatabaseClearTextTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1532
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1533
    sget v2, Lorg/telegram/messenger/R$string;->LocalDatabaseClearText:I

    const-string v3, "LocalDatabaseClearText"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v2, "\n\n"

    .line 1534
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1535
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

    .line 1536
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1537
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1538
    sget v1, Lorg/telegram/messenger/R$string;->CacheClear:I

    const-string v2, "CacheClear"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1548
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 1549
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v1, -0x1

    .line 1550
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v1, "dialogTextRed"

    .line 1552
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private clearSelectedFiles()V
    .locals 3

    .line 1358
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFiles()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1361
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1362
    sget v1, Lorg/telegram/messenger/R$string;->ClearCache:I

    const-string v2, "ClearCache"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1363
    sget v1, Lorg/telegram/messenger/R$string;->ClearCacheForChats:I

    const-string v2, "ClearCacheForChats"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1364
    sget v1, Lorg/telegram/messenger/R$string;->Clear:I

    const-string v2, "Clear"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1377
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1378
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 1379
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v1, -0x1

    .line 1380
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-string v1, "dialogTextRed"

    .line 1382
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static countDirJava(Ljava/lang/String;I)I
    .locals 11

    .line 857
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 858
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 859
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move v1, v2

    move v3, v1

    .line 860
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_f

    .line 861
    aget-object v4, v0, v1

    .line 862
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    .line 863
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_6

    :cond_0
    if-lez p1, :cond_c

    .line 867
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_c

    .line 868
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".mp3"

    .line 869
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    const-string v7, ".m4a"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v8

    :goto_2
    const-string v9, ".tgs"

    .line 870
    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, ".webm"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_3

    :cond_3
    move v9, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v9, v8

    :goto_4
    const-string v10, ".tmp"

    .line 871
    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, ".temp"

    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, ".preload"

    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    move v8, v2

    :cond_6
    :goto_5
    if-eqz v7, :cond_7

    .line 873
    sget v6, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE_OTHER_THAN_MUSIC:I

    if-eq p1, v6, :cond_e

    :cond_7
    if-nez v7, :cond_8

    sget v6, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE_MUSIC:I

    if-eq p1, v6, :cond_e

    :cond_8
    if-eqz v9, :cond_9

    sget v6, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE2_OTHER:I

    if-eq p1, v6, :cond_e

    :cond_9
    if-nez v9, :cond_a

    sget v6, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE2_EMOJI:I

    if-eq p1, v6, :cond_e

    :cond_a
    if-eqz v8, :cond_b

    sget v6, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE2_OTHER:I

    if-eq p1, v6, :cond_e

    :cond_b
    if-nez v8, :cond_c

    sget v6, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE2_TEMP:I

    if-ne p1, v6, :cond_c

    goto :goto_6

    .line 885
    :cond_c
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 886
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lorg/telegram/ui/CacheControlActivity;->countDirJava(Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_6

    :cond_d
    add-int/lit8 v3, v3, 0x1

    :cond_e
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_f
    move v2, v3

    :cond_10
    return v2
.end method

.method private formatPercent(F)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 639
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

    .line 644
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

    .line 646
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    .line 648
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

    .line 650
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

    .line 658
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

    .line 659
    :goto_0
    new-instance p3, Landroid/text/SpannableString;

    invoke-direct {p3, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 660
    new-instance p2, Landroid/text/style/RelativeSizeSpan;

    const v1, 0x3f558106    # 0.834f

    invoke-direct {p2, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p3}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {p3, p2, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 661
    new-instance p2, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p3}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {p3, p2, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 662
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string p1, "  "

    .line 663
    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 664
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

    .line 261
    sget-object v0, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalSize:Ljava/lang/Long;

    if-eqz v0, :cond_1

    sget-object v1, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalFreeSize:Ljava/lang/Long;

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    .line 263
    invoke-interface {p0, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 268
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 269
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRootDirs()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 270
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 271
    sget-object v3, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 272
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_4

    .line 273
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 274
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

    .line 281
    :cond_3
    new-instance v2, Ljava/io/File;

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    :cond_4
    :goto_1
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 287
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_5

    .line 288
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    goto :goto_2

    .line 290
    :cond_5
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    :goto_2
    if-lt v1, v2, :cond_6

    .line 294
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5

    goto :goto_3

    .line 296
    :cond_6
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    :goto_3
    if-lt v1, v2, :cond_7

    .line 300
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    goto :goto_4

    .line 302
    :cond_7
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    :goto_4
    mul-long/2addr v0, v3

    .line 305
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalSize:Ljava/lang/Long;

    mul-long/2addr v5, v3

    .line 306
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalFreeSize:Ljava/lang/Long;

    if-eqz p0, :cond_8

    .line 308
    sget-object v1, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalSize:Ljava/lang/Long;

    invoke-interface {p0, v1, v0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return-void

    :catch_0
    move-exception p0

    .line 312
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static getDirectorySize(Ljava/io/File;I)J
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_2

    .line 814
    sget-boolean v2, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 818
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 819
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/Utilities;->getDirSize(Ljava/lang/String;IZ)J

    move-result-wide v0

    goto :goto_0

    .line 820
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 821
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

    .line 1972
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 1973
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 1974
    iget v4, v2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 1977
    :cond_0
    iget v2, v2, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez v2, :cond_1

    .line 1979
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    array-length v2, v2

    sub-int/2addr v2, v3

    .line 1981
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

    .line 2091
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    array-length v0, v0

    new-array v1, v0, [Z

    const/4 v2, 0x0

    move v3, v2

    .line 2092
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 2093
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 2094
    iget v6, v4, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_0

    iget-boolean v6, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    if-nez v6, :cond_0

    iget v4, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-ltz v4, :cond_0

    .line 2095
    aput-boolean v5, v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    .line 2099
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

    .line 250
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$calculateTotalSize$1(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 19

    const/4 v0, 0x0

    .line 232
    sput-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    const/4 v1, 0x4

    .line 233
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v4

    .line 234
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v6

    .line 235
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v8

    const/16 v2, 0x64

    .line 236
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/4 v2, 0x2

    .line 237
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v10

    invoke-static {v10, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v10

    const/16 v12, 0x65

    .line 238
    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v12

    invoke-static {v12, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    add-long/2addr v10, v12

    const/4 v12, 0x3

    .line 239
    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v15

    .line 240
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v13

    invoke-static {v13, v14}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v17

    add-long v15, v15, v17

    .line 241
    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v13

    invoke-static {v13, v2}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v17

    .line 242
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    add-long v17, v17, v2

    .line 243
    new-instance v2, Ljava/io/File;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    const-string v13, "acache"

    invoke-direct {v2, v3, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    .line 244
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v12}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    add-long/2addr v2, v12

    .line 245
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

    .line 246
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculated:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculatedTime:J

    .line 248
    sget-boolean v2, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-nez v2, :cond_0

    .line 249
    new-instance v2, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda6;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v0, v1}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/Utilities$Callback;J)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$cleanupDialogFiles$20(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 1

    .line 1514
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->checkCurrentDownloadsFiles()V

    .line 1516
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1518
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$cleanupDialogFiles$21(Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 2

    const/4 v0, 0x0

    .line 1509
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1510
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-object v1, v1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1513
    :cond_0
    new-instance p1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$cleanupFolders$10(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V
    .locals 2

    .line 839
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$cleanupFolders$9(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V
    .locals 0

    .line 840
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->cleanupFoldersInternal(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$cleanupFoldersInternal$11(Lorg/telegram/messenger/Utilities$Callback2;[IILjava/lang/Float;)V
    .locals 2

    const/4 v0, 0x0

    .line 948
    aget p1, p1, v0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p2, v0, p2

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p3

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$cleanupFoldersInternal$12(Lorg/telegram/messenger/Utilities$Callback2;[IIJ)V
    .locals 3

    .line 951
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 952
    aget p1, p1, v2

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    sub-long/2addr v0, p3

    const-wide/16 p2, 0xfa

    cmp-long p2, v0, p2

    if-lez p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$cleanupFoldersInternal$13(J)V
    .locals 7

    .line 1114
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

    .line 1115
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheRemovedTooltip:Lorg/telegram/ui/Components/UndoView;

    const-wide/16 v2, 0x0

    const/16 v4, 0x13

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$cleanupFoldersInternal$14(ZJLjava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1101
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageLoader;->clearMemory()V

    .line 1104
    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_1

    .line 1105
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 1106
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1109
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1112
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    invoke-virtual {p1}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->checkRingtoneSoundsLoaded()V

    .line 1113
    new-instance p1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/CacheControlActivity;J)V

    const-wide/16 p2, 0x96

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1117
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MediaDataController;->chekAllMedia(Z)V

    .line 1119
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->loadDialogEntities()V

    if-eqz p4, :cond_2

    .line 1122
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$clearDatabase$22(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1539
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1542
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 p2, 0x0

    .line 1543
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 1544
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 1545
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->clearQueryTime()V

    .line 1546
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->clearLocalDatabase()V

    return-void
.end method

.method private synthetic lambda$clearSelectedFiles$18(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1365
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {p1}, Lorg/telegram/ui/Storage/CacheModel;->removeSelectedFiles()Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    move-result-object p1

    .line 1366
    iget-wide v0, p1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 1367
    invoke-direct {p0, p1, p2, p2}, Lorg/telegram/ui/CacheControlActivity;->cleanupDialogFiles(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Lorg/telegram/ui/Storage/CacheModel;)V

    .line 1369
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {p1}, Lorg/telegram/ui/Storage/CacheModel;->clearSelection()V

    .line 1370
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    if-eqz p1, :cond_1

    .line 1371
    invoke-virtual {p1}, Lorg/telegram/ui/CachedMediaLayout;->update()V

    .line 1372
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    .line 1374
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    .line 1375
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void
.end method

.method private synthetic lambda$createView$15(Landroid/view/View;)V
    .locals 0

    .line 1235
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->clearSelectedFiles()V

    return-void
.end method

.method private synthetic lambda$createView$16(II)V
    .locals 0

    .line 1331
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method private synthetic lambda$createView$17(Landroid/view/View;IFF)V
    .locals 3

    .line 1301
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_5

    .line 1304
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    goto :goto_0

    .line 1307
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 1311
    iget v1, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    instance-of v1, p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v1, :cond_3

    .line 1312
    iget p2, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez p2, :cond_2

    .line 1313
    iget-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    .line 1314
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    .line 1315
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void

    .line 1318
    :cond_2
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/CacheControlActivity;->toggleSection(Lorg/telegram/ui/CacheControlActivity$ItemInner;Landroid/view/View;)V

    goto :goto_0

    .line 1319
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->entities:Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    if-eqz v1, :cond_4

    .line 1324
    invoke-direct {p0, v1}, Lorg/telegram/ui/CacheControlActivity;->showClearCacheDialog(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    goto :goto_0

    .line 1325
    :cond_4
    iget v0, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->keepMediaType:I

    if-ltz v0, :cond_5

    .line 1326
    new-instance v0, Lorg/telegram/ui/KeepMediaPopupView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/KeepMediaPopupView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    .line 1327
    invoke-static {p0, v0, p1, p3, p4}, Lorg/telegram/ui/Components/AlertsCreator;->createSimplePopup(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;Landroid/view/View;FF)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    .line 1328
    iget-object p3, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget p2, p2, Lorg/telegram/ui/CacheControlActivity$ItemInner;->keepMediaType:I

    invoke-virtual {v0, p2}, Lorg/telegram/ui/KeepMediaPopupView;->update(I)V

    .line 1329
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setParentWindow(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    .line 1330
    new-instance p1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda23;

    invoke-direct {p1, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/KeepMediaPopupView;->setCallback(Lorg/telegram/ui/KeepMediaPopupView$Callback;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$23()V
    .locals 4

    .line 2601
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v0, :cond_0

    const-string v1, "dialogBackground"

    .line 2602
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    .line 2605
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionTextView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    aput v3, v1, v2

    const-string v2, "featuredStickers_addButton"

    .line 2606
    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(Ljava/lang/String;[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadDialogEntities$4(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 7

    .line 522
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 523
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    move v0, p1

    .line 525
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 526
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    .line 528
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v3

    if-nez v3, :cond_1

    const-wide v3, 0x7fffffffffffffffL

    .line 529
    iput-wide v3, v2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    if-eqz p2, :cond_0

    .line 532
    invoke-virtual {p2, v2}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->merge(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    .line 533
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    goto :goto_1

    :cond_0
    move-object p2, v2

    move v2, p1

    :goto_1
    if-eqz v2, :cond_1

    .line 539
    invoke-direct {p0, p3}, Lorg/telegram/ui/CacheControlActivity;->sort(Ljava/util/ArrayList;)V

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    .line 543
    :cond_2
    invoke-virtual {p4, p3}, Lorg/telegram/ui/Storage/CacheModel;->setEntities(Ljava/util/ArrayList;)V

    .line 545
    sget-boolean p2, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-nez p2, :cond_7

    .line 546
    invoke-virtual {p0, p4}, Lorg/telegram/ui/CacheControlActivity;->setCacheModel(Lorg/telegram/ui/Storage/CacheModel;)V

    .line 547
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    .line 548
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    .line 549
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

    .line 550
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChartHeader:Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;

    iget-wide p3, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, p1

    .line 552
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

    .line 553
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

    .line 550
    :cond_6
    :goto_4
    invoke-virtual {p2, v1, p1, v0}, Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;->setData(ZFF)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$loadDialogEntities$5(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 6

    .line 497
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 498
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 499
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, ","

    if-nez v0, :cond_0

    .line 501
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

    .line 503
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 506
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 508
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

    .line 510
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 513
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 514
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    iget-wide v0, p2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    const-wide/16 v4, 0x0

    cmp-long p2, v0, v4

    if-gtz p2, :cond_2

    .line 515
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 519
    :cond_3
    invoke-direct {p0, p3}, Lorg/telegram/ui/CacheControlActivity;->sort(Ljava/util/ArrayList;)V

    .line 520
    new-instance p1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda12;

    move-object v0, p1

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadDialogEntities$6()V
    .locals 11

    .line 465
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FilePathDatabase;->ensureDatabaseCreated()V

    .line 466
    new-instance v6, Lorg/telegram/ui/Storage/CacheModel;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lorg/telegram/ui/Storage/CacheModel;-><init>(Z)V

    .line 467
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v2, 0x4

    .line 469
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v1, v5}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    .line 471
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    const/16 v3, 0x64

    .line 472
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    const/4 v3, 0x2

    .line 474
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    const/16 v4, 0x65

    .line 475
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {p0, v4, v5, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    .line 477
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {p0, v4, v2, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    const/4 v2, 0x3

    .line 478
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    const/4 v2, 0x5

    .line 479
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    .line 481
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 482
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 483
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 484
    :goto_0
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 485
    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    .line 486
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    iget-wide v8, v8, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v7

    if-nez v7, :cond_1

    .line 488
    iget-wide v7, v2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-lez v2, :cond_0

    .line 489
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 491
    :cond_0
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :cond_2
    invoke-virtual {v6}, Lorg/telegram/ui/Storage/CacheModel;->sortBySize()V

    .line 496
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v7, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda11;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onFragmentCreate$2()V
    .locals 1

    .line 416
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->resumeDelayedFragmentAnimation()V

    const/4 v0, 0x0

    .line 417
    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    const/4 v0, 0x1

    .line 419
    invoke-direct {p0, v0}, Lorg/telegram/ui/CacheControlActivity;->updateRows(Z)V

    .line 420
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void
.end method

.method private synthetic lambda$onFragmentCreate$3()V
    .locals 11

    const/4 v0, 0x4

    .line 325
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    .line 326
    sget-boolean v1, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v1, :cond_0

    return-void

    .line 330
    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    .line 331
    sget-boolean v1, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 335
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    const/16 v5, 0x64

    .line 336
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    .line 337
    sget-boolean v3, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v3, :cond_2

    return-void

    :cond_2
    const/4 v3, 0x2

    .line 340
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    const/16 v6, 0x65

    .line 341
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    .line 342
    sget-boolean v4, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v4, :cond_3

    return-void

    :cond_3
    const/4 v4, 0x3

    .line 345
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v7

    iput-wide v7, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    .line 346
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v6}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    .line 347
    sget-boolean v5, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v5, :cond_4

    return-void

    .line 350
    :cond_4
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v7

    iput-wide v7, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    .line 351
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    add-long/2addr v7, v2

    iput-wide v7, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    .line 352
    sget-boolean v2, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v2, :cond_5

    return-void

    .line 355
    :cond_5
    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    const-string v5, "acache"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    .line 356
    sget-boolean v2, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v2, :cond_6

    return-void

    .line 359
    :cond_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v4}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->cacheEmojiSize:J

    .line 360
    sget-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v0, :cond_7

    return-void

    .line 363
    :cond_7
    iget-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->cacheEmojiSize:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    .line 364
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    .line 365
    sget-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v0, :cond_8

    return-void

    .line 368
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

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculatedTime:J

    .line 372
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_a

    .line 373
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRootDirs()Ljava/util/ArrayList;

    move-result-object v0

    .line 374
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 375
    sget-object v3, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 376
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_b

    .line 377
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 378
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

    .line 385
    :cond_a
    new-instance v2, Ljava/io/File;

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    :cond_b
    :goto_1
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 391
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_c

    .line 392
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    goto :goto_2

    .line 394
    :cond_c
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    :goto_2
    if-lt v1, v2, :cond_d

    .line 398
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5

    goto :goto_3

    .line 400
    :cond_d
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    :goto_3
    if-lt v1, v2, :cond_e

    .line 404
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    goto :goto_4

    .line 406
    :cond_e
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    :goto_4
    mul-long/2addr v0, v3

    .line 409
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    mul-long/2addr v5, v3

    .line 410
    iput-wide v5, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 412
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 415
    :goto_5
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 423
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->loadDialogEntities()V

    return-void
.end method

.method private static synthetic lambda$sort$7(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)I
    .locals 3

    .line 564
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

.method private synthetic lambda$updateActionBar$19(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1398
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShownT:F

    .line 1399
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

    .line 1400
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

    .line 1401
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$updateRows$8(Lorg/telegram/ui/CacheControlActivity$ItemInner;Lorg/telegram/ui/CacheControlActivity$ItemInner;)I
    .locals 2

    .line 720
    iget-wide v0, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    iget-wide p0, p0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private loadDialogEntities()V
    .locals 2

    .line 464
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FilePathDatabase;->getQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static resetCalculatedTotalSIze()V
    .locals 1

    const/4 v0, 0x0

    .line 257
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

    .line 1163
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

    .line 1410
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1414
    :cond_0
    new-instance v0, Lorg/telegram/ui/DilogCacheBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->createCacheModel()Lorg/telegram/ui/Storage/CacheModel;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$6;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/CacheControlActivity$6;-><init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/telegram/ui/DilogCacheBottomSheet;-><init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;Lorg/telegram/ui/Storage/CacheModel;Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;)V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 1432
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

    .line 1155
    :pswitch_0
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    return-wide v0

    .line 1154
    :pswitch_1
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    return-wide v0

    .line 1153
    :pswitch_2
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    return-wide v0

    .line 1152
    :pswitch_3
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    return-wide v0

    .line 1151
    :pswitch_4
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    return-wide v0

    .line 1150
    :pswitch_5
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    return-wide v0

    .line 1149
    :pswitch_6
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    return-wide v0

    .line 1148
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

    .line 563
    sget-object v0, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda18;->INSTANCE:Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda18;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private toggleOtherSelected(Landroid/view/View;)V
    .locals 8

    .line 2148
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->isOtherSelected()Z

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    move v4, v2

    .line 2152
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 2153
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 2154
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

    .line 2161
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    if-eqz p1, :cond_2

    const/high16 v0, -0x3fc00000    # -3.0f

    .line 2163
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    :cond_2
    return-void

    .line 2169
    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    if-eqz p1, :cond_7

    .line 2170
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    array-length p1, p1

    new-array v4, p1, [Z

    move v5, v2

    .line 2171
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 2172
    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 2173
    iget v7, v6, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v7, v1, :cond_4

    iget-boolean v7, v6, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    if-nez v7, :cond_4

    iget v6, v6, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-ltz v6, :cond_4

    .line 2174
    aput-boolean v3, v4, v6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move v5, v2

    :goto_3
    if-ge v5, p1, :cond_9

    .line 2178
    aget-boolean v6, v4, v5

    if-nez v6, :cond_6

    .line 2179
    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    xor-int/lit8 v7, v0, 0x1

    aput-boolean v7, v6, v5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    move p1, v2

    .line 2183
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_9

    .line 2184
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 2185
    iget v5, v4, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v5, v1, :cond_8

    iget-boolean v5, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    if-eqz v5, :cond_8

    iget v4, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-ltz v4, :cond_8

    .line 2186
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    xor-int/lit8 v6, v0, 0x1

    aput-boolean v6, v5, v4

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 2191
    :cond_9
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v2, p1, :cond_c

    .line 2192
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2193
    instance-of v4, p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v4, :cond_b

    .line 2194
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_b

    .line 2196
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 2197
    iget v5, v4, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v5, v1, :cond_b

    .line 2198
    iget v4, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez v4, :cond_a

    .line 2199
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto :goto_6

    .line 2201
    :cond_a
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v4, v5, v4

    invoke-virtual {p1, v4, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    :cond_b
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2207
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void
.end method

.method private toggleSection(Lorg/telegram/ui/CacheControlActivity$ItemInner;Landroid/view/View;)V
    .locals 6

    .line 2107
    iget v0, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez v0, :cond_0

    .line 2108
    invoke-direct {p0, p2}, Lorg/telegram/ui/CacheControlActivity;->toggleOtherSelected(Landroid/view/View;)V

    return-void

    .line 2111
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v0, v1, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->sectionsSelected()I

    move-result v0

    if-gt v0, v1, :cond_2

    .line 2112
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    if-eqz p2, :cond_1

    const/high16 p1, -0x3fc00000    # -3.0f

    .line 2114
    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    :cond_1
    return-void

    .line 2118
    :cond_2
    instance-of v0, p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2119
    check-cast p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    iget v3, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    aget-boolean v4, v0, v3

    xor-int/2addr v4, v1

    aput-boolean v4, v0, v3

    invoke-virtual {p2, v4, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto :goto_1

    .line 2121
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    iget v0, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    aget-boolean v3, p2, v0

    xor-int/2addr v3, v1

    aput-boolean v3, p2, v0

    .line 2122
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_5

    move v0, v2

    .line 2124
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 2125
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2126
    instance-of v4, v3, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ne p2, v4, :cond_4

    .line 2127
    check-cast v3, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    iget v5, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    aget-boolean v4, v4, v5

    invoke-virtual {v3, v4, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2132
    :cond_5
    :goto_1
    iget-boolean p1, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    if-eqz p1, :cond_7

    .line 2133
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v2, p1, :cond_7

    .line 2134
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2135
    instance-of p2, p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz p2, :cond_6

    .line 2136
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-ltz p2, :cond_6

    .line 2137
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

    .line 2138
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->isOtherSelected()Z

    move-result p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2144
    :cond_7
    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void
.end method

.method private updateActionBar(Z)V
    .locals 3

    .line 1391
    iget-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShown:Z

    if-eq p1, v0, :cond_2

    .line 1392
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1393
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 1396
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

    .line 1397
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1403
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1404
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x17c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1405
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method private updateActionMode()V
    .locals 9

    .line 2565
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFiles()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5

    .line 2566
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    if-eqz v0, :cond_4

    .line 2568
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-object v0, v0, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const-string v2, "Files"

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 2570
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

    .line 2571
    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-object v6, v6, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    iget-wide v7, v5, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2572
    iget v5, v5, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->filesCount:I

    add-int/2addr v4, v5

    goto :goto_0

    .line 2575
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFiles()I

    move-result v0

    sub-int/2addr v0, v4

    const-string v4, "Chats"

    if-lez v0, :cond_2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 2577
    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-object v6, v6, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    .line 2578
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

    .line 2579
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v2, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "%s, %s"

    .line 2577
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2582
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

    .line 2585
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

    .line 2587
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v1}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFilesSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    .line 2588
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2589
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2590
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    :cond_4
    return-void

    .line 2593
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    return-void
.end method

.method private updateChart()V
    .locals 8

    .line 433
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChart:Lorg/telegram/ui/Components/CacheChart;

    if-eqz v0, :cond_6

    .line 434
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

    .line 436
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_2

    .line 437
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 438
    iget v2, v1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 439
    iget v2, v1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez v2, :cond_0

    .line 440
    iget-boolean v2, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    if-eqz v2, :cond_1

    .line 441
    iget-wide v1, v1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    const/16 v6, 0x8

    aget-boolean v3, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->of(JZ)Lorg/telegram/ui/Components/CacheChart$SegmentSize;

    move-result-object v1

    aput-object v1, v0, v6

    goto :goto_1

    .line 444
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

    .line 448
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/telegram/ui/CacheControlActivity;->fragmentCreateTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x50

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 449
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChart:Lorg/telegram/ui/Components/CacheChart;

    iget-object v1, v1, Lorg/telegram/ui/Components/CacheChart;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 451
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChart:Lorg/telegram/ui/Components/CacheChart;

    iget-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    invoke-virtual {v1, v2, v3, v5, v0}, Lorg/telegram/ui/Components/CacheChart;->setSegments(JZ[Lorg/telegram/ui/Components/CacheChart$SegmentSize;)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    const-wide/16 v1, -0x1

    new-array v3, v4, [Lorg/telegram/ui/Components/CacheChart$SegmentSize;

    .line 453
    invoke-virtual {v0, v1, v2, v5, v3}, Lorg/telegram/ui/Components/CacheChart;->setSegments(JZ[Lorg/telegram/ui/Components/CacheChart$SegmentSize;)V

    goto :goto_2

    :cond_5
    new-array v1, v4, [Lorg/telegram/ui/Components/CacheChart$SegmentSize;

    .line 455
    invoke-virtual {v0, v2, v3, v5, v1}, Lorg/telegram/ui/Components/CacheChart;->setSegments(JZ[Lorg/telegram/ui/Components/CacheChart$SegmentSize;)V

    .line 458
    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->clearCacheButton:Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    if-nez v1, :cond_7

    .line 459
    invoke-virtual {v0}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->updateSize()V

    :cond_7
    return-void
.end method

.method private updateDatabaseItemSize()V
    .locals 3

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->clearDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 208
    sget v1, Lorg/telegram/messenger/R$string;->ClearLocalDatabase:I

    const-string v2, "ClearLocalDatabase"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 213
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->clearDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateRows()V
    .locals 1

    const/4 v0, 0x1

    .line 669
    invoke-direct {p0, v0}, Lorg/telegram/ui/CacheControlActivity;->updateRows(Z)V

    return-void
.end method

.method private updateRows(Z)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 673
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

    .line 677
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 678
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->oldItems:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 680
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 681
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v7, 0xa

    invoke-direct {v4, v7, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/CacheControlActivity;->sectionsStartRow:I

    .line 686
    iget-boolean v3, v0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x3

    const/4 v10, 0x7

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    if-eqz v3, :cond_2

    .line 687
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v14, 0xc

    invoke-direct {v5, v14, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v5, v14, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v5, v14, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v5, v14, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v5, v14, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    move v3, v11

    goto/16 :goto_4

    .line 694
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 695
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    cmp-long v14, v14, v12

    if-lez v14, :cond_3

    .line 696
    sget v14, Lorg/telegram/messenger/R$string;->LocalPhotoCache:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    const-string v15, "statisticChartLine_lightblue"

    invoke-static {v14, v1, v4, v5, v15}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJLjava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_3
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    cmp-long v4, v4, v12

    if-lez v4, :cond_4

    .line 699
    sget v4, Lorg/telegram/messenger/R$string;->LocalVideoCache:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    const-string v5, "statisticChartLine_blue"

    invoke-static {v4, v11, v14, v15, v5}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJLjava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    :cond_4
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    cmp-long v4, v4, v12

    if-lez v4, :cond_5

    .line 702
    sget v4, Lorg/telegram/messenger/R$string;->LocalDocumentCache:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    const-string v5, "statisticChartLine_green"

    invoke-static {v4, v7, v14, v15, v5}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJLjava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_5
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    cmp-long v4, v4, v12

    if-lez v4, :cond_6

    .line 705
    sget v4, Lorg/telegram/messenger/R$string;->LocalMusicCache:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    const-string v5, "statisticChartLine_red"

    invoke-static {v4, v9, v14, v15, v5}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJLjava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_6
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    cmp-long v4, v4, v12

    const/4 v5, 0x4

    if-lez v4, :cond_7

    .line 708
    sget v4, Lorg/telegram/messenger/R$string;->LocalAudioCache:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    const-string v7, "statisticChartLine_lightgreen"

    invoke-static {v4, v5, v14, v15, v7}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJLjava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_7
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    cmp-long v4, v14, v12

    const/4 v7, 0x5

    if-lez v4, :cond_8

    .line 711
    sget v4, Lorg/telegram/messenger/R$string;->LocalStickersCache:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    const-string v9, "statisticChartLine_orange"

    invoke-static {v4, v7, v14, v15, v9}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJLjava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_8
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    cmp-long v4, v14, v12

    if-lez v4, :cond_9

    .line 714
    sget v4, Lorg/telegram/messenger/R$string;->LocalProfilePhotosCache:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x6

    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    const-string v6, "statisticChartLine_cyan"

    invoke-static {v4, v9, v14, v15, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJLjava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    :cond_9
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    cmp-long v4, v14, v12

    if-lez v4, :cond_a

    .line 717
    sget v4, Lorg/telegram/messenger/R$string;->LocalMiscellaneousCache:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    const-string v6, "statisticChartLine_purple"

    invoke-static {v4, v10, v14, v15, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJLjava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 720
    sget-object v4, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda19;->INSTANCE:Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda19;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 721
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iput-boolean v11, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->last:Z

    .line 724
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->tempSizes:[F

    if-nez v4, :cond_b

    const/16 v4, 0x9

    new-array v6, v4, [F

    .line 725
    iput-object v6, v0, Lorg/telegram/ui/CacheControlActivity;->tempSizes:[F

    :cond_b
    move v4, v1

    .line 727
    :goto_2
    iget-object v6, v0, Lorg/telegram/ui/CacheControlActivity;->tempSizes:[F

    array-length v9, v6

    if-ge v4, v9, :cond_c

    .line 728
    invoke-direct {v0, v4}, Lorg/telegram/ui/CacheControlActivity;->size(I)J

    move-result-wide v12

    long-to-float v9, v12

    aput v9, v6, v4

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v12, 0x0

    goto :goto_2

    .line 730
    :cond_c
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    if-nez v4, :cond_d

    const/16 v4, 0x9

    new-array v4, v4, [I

    .line 731
    iput-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    .line 733
    :cond_d
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    invoke-static {v6, v4}, Lorg/telegram/messenger/AndroidUtilities;->roundPercents([F[I)[I

    .line 736
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v7, :cond_f

    .line 737
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v6, v1

    move v4, v5

    const-wide/16 v12, 0x0

    .line 740
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_e

    .line 741
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iput-boolean v11, v7, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    .line 742
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget-wide v14, v7, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    add-long/2addr v12, v14

    .line 743
    iget-object v7, v0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget v9, v9, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    aget v7, v7, v9

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 745
    :cond_e
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    const/16 v7, 0x8

    aput v6, v4, v7

    .line 746
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/messenger/R$string;->LocalOther:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "statisticChartLine_golden"

    invoke-static {v6, v8, v12, v13, v7}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJLjava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    iget-boolean v4, v0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    if-nez v4, :cond_1

    .line 748
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 751
    :cond_f
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_10
    move v3, v1

    :goto_4
    if-eqz v3, :cond_11

    .line 757
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/CacheControlActivity;->sectionsEndRow:I

    .line 758
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v7}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/messenger/R$string;->StorageUsageInfo:I

    const-string v6, "StorageUsageInfo"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asInfo(Ljava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 761
    :cond_11
    iput v8, v0, Lorg/telegram/ui/CacheControlActivity;->sectionsEndRow:I

    .line 764
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

    .line 765
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v5, v10, v1}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v4, v10, v11}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/4 v5, 0x2

    invoke-direct {v4, v10, v5}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->KeepMediaInfoPart:I

    const-string v5, "KeepMediaInfoPart"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asInfo(Ljava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_12

    .line 771
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

    .line 772
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v5, 0xe

    invoke-direct {v4, v5, v7}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILorg/telegram/ui/CacheControlActivity$1;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
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

    .line 776
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lorg/telegram/ui/Storage/CacheModel;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 777
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v5}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    if-eqz v1, :cond_15

    if-eqz v2, :cond_14

    .line 782
    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->oldItems:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_6

    .line 784
    :cond_14
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 787
    :cond_15
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    if-eqz v1, :cond_16

    .line 788
    invoke-virtual {v1}, Lorg/telegram/ui/CachedMediaLayout;->update()V

    :cond_16
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 14

    .line 1177
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1178
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 1179
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 1180
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 1181
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1182
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 1183
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v4, "listSelectorSDK21"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 1184
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v4, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1185
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 1186
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->StorageUsage:I

    const-string v5, "StorageUsage"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1187
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/CacheControlActivity$1;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 1210
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 1211
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1212
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

    .line 1214
    new-instance v6, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v6, p1, v2, v2, v2}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    .line 1215
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v7, 0x3eb33333    # 0.35f

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x15e

    move-object v12, v4

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 1216
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v6, 0x12

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 1217
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string v6, "fonts/rmedium.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1218
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 1219
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

    .line 1221
    new-instance v7, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v7, p1, v2, v2, v2}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v7, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const v8, 0x3eb33333    # 0.35f

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x15e

    move-object v13, v4

    .line 1222
    invoke-virtual/range {v7 .. v13}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 1223
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v5, 0xe

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 1224
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string v7, "windowBackgroundWhiteGrayText"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 1225
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

    .line 1227
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    .line 1228
    invoke-virtual {v3, v2, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1229
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v3, v7, v1, v5, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1230
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    const-string v5, "featuredStickers_buttonText"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1231
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    new-array v5, v2, [F

    const/high16 v7, 0x40c00000    # 6.0f

    aput v7, v5, v1

    const-string v7, "featuredStickers_addButton"

    invoke-static {v7, v5}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(Ljava/lang/String;[F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1232
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1233
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1234
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->CacheClear:I

    const-string v6, "CacheClear"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1235
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1236
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

    .line 1238
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    .line 1239
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

    .line 1240
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    .line 1241
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->clearDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const-string v3, "dialogTextRed"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 1242
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateDatabaseItemSize()V

    .line 1244
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/CacheControlActivity$ListAdapter;-><init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    .line 1246
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/CacheControlActivity$2;-><init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

    .line 1264
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const-string v3, "windowBackgroundGray"

    .line 1266
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1268
    new-instance v3, Lorg/telegram/ui/CacheControlActivity$3;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/CacheControlActivity$3;-><init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1283
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1284
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1285
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v7

    div-int/2addr v7, v5

    add-int/2addr v6, v7

    invoke-virtual {v3, v1, v6, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1286
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5, p1, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1287
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, -0x1

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1288
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1289
    new-instance v2, Lorg/telegram/ui/CacheControlActivity$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$4;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    const-wide/16 v5, 0x15e

    .line 1295
    invoke-virtual {v2, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 1296
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1297
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 1298
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 1299
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1300
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 1335
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$5;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1349
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, -0x2

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1351
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

    .line 1352
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1353
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->setTargetListView(Landroid/view/View;)V

    .line 1354
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 1567
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didClearDatabase:I

    if-ne p1, p2, :cond_1

    .line 1569
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_0

    .line 1570
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1573
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 1575
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1576
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    if-eqz p1, :cond_1

    .line 1577
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabaseSize()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    .line 1579
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateDatabaseItemSize()V

    .line 1580
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

    .line 586
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 590
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_b

    aget-object v2, p1, v1

    .line 591
    sget-boolean v3, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v3, :cond_2

    return-void

    .line 594
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 595
    invoke-virtual {p0, v2, p2, p3, p4}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    goto/16 :goto_3

    .line 597
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".nomedia"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 600
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lorg/telegram/messenger/FilePathDatabase;->getFileDialogId(Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    move-result-object v3

    .line 602
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".mp3"

    .line 603
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

    .line 606
    :goto_2
    new-instance v6, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    invoke-direct {v6, v2}, Lorg/telegram/ui/Storage/CacheModel$FileInfo;-><init>(Ljava/io/File;)V

    .line 607
    iput v5, v6, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->type:I

    if-eqz v3, :cond_7

    .line 609
    iget-wide v7, v3, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->dialogId:J

    iput-wide v7, v6, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    .line 610
    iget v7, v3, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageId:I

    iput v7, v6, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->messageId:I

    .line 611
    iget v3, v3, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageType:I

    iput v3, v6, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->messageType:I

    .line 613
    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v6, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    .line 614
    iget-wide v2, v6, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-eqz v7, :cond_9

    .line 615
    invoke-virtual {p3, v2, v3, v4}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    if-nez v2, :cond_8

    .line 617
    new-instance v2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    iget-wide v3, v6, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;-><init>(J)V

    .line 618
    iget-wide v3, v6, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    invoke-virtual {p3, v3, v4, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 620
    :cond_8
    invoke-virtual {v2, v6, v5}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->addFile(Lorg/telegram/ui/Storage/CacheModel$FileInfo;I)V

    :cond_9
    if-eqz p4, :cond_a

    .line 623
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

    .line 2600
    new-instance v7, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda21;

    invoke-direct {v7, v0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    .line 2609
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2611
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

    .line 2612
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

    .line 2614
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v13, 0x0

    const-string v17, "actionBarDefault"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2615
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v25, "actionBarDefault"

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2616
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v17, "actionBarDefaultIcon"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2617
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v25, "actionBarDefaultTitle"

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2618
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v17, "actionBarDefaultSelector"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2620
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v25, "listSelectorSDK21"

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2622
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

    .line 2623
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

    .line 2625
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

    .line 2626
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

    .line 2627
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

    .line 2628
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

    .line 2629
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

    .line 2630
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

    .line 2631
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

    .line 2632
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

    .line 2634
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

    .line 2635
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

    .line 2636
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v13, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v5, v13, v3

    const-string v17, "windowBackgroundWhiteGrayText"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2638
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    const/16 v21, 0x0

    const-string v25, "windowBackgroundWhiteGrayText"

    move-object/from16 v18, v1

    move-object/from16 v19, v5

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2639
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

    .line 2640
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

    .line 2641
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

    .line 2642
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

    .line 2644
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

    .line 2645
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "dialogBackground"

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2647
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v18, "statisticChartLine_blue"

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2648
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    const/16 v21, 0x0

    const/16 v25, 0x0

    const-string v26, "statisticChartLine_green"

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2649
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v17, "statisticChartLine_red"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2650
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v25, "statisticChartLine_golden"

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2651
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    const-string v17, "statisticChartLine_lightblue"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2652
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    const-string v25, "statisticChartLine_lightgreen"

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2653
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    const-string v17, "statisticChartLine_orange"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2654
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

    .line 1140
    iget-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->changeStatusBar:Z

    if-nez v0, :cond_0

    .line 1141
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "windowBackgroundGray"

    .line 1143
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

    .line 3055
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3056
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 3057
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

    .line 3060
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

    .line 3068
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3069
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->clearSelection()V

    .line 3070
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3071
    invoke-virtual {v0, v1}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    .line 3072
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/CachedMediaLayout;->updateVisibleRows()V

    :cond_0
    return v1

    .line 3076
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 3

    .line 318
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    const/4 v0, 0x0

    .line 319
    sput-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    .line 320
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didClearDatabase:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 321
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getDatabaseSize()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    .line 324
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/CacheControlActivity;->fragmentCreateTime:J

    .line 427
    invoke-direct {p0, v0}, Lorg/telegram/ui/CacheControlActivity;->updateRows(Z)V

    .line 428
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 799
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 800
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didClearDatabase:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 802
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 809
    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v0, 0x1

    .line 810
    sput-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    move p2, p1

    .line 2859
    :goto_0
    array-length v0, p3

    if-ge p2, v0, :cond_1

    .line 2860
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

    .line 2865
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_2

    sget-object p1, Lorg/telegram/messenger/FilesMigrationService;->filesMigrationBottomSheet:Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;

    if-eqz p1, :cond_2

    .line 2866
    invoke-virtual {p1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;->migrateOldFolder()V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1558
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1559
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onTransitionAnimationProgress(ZF)V
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 1131
    iget-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->changeStatusBar:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1132
    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->changeStatusBar:Z

    .line 1133
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1135
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    return-void
.end method

.method public setCacheModel(Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 1

    .line 576
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    .line 577
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {v0, p1}, Lorg/telegram/ui/CachedMediaLayout;->setCacheModel(Lorg/telegram/ui/Storage/CacheModel;)V

    :cond_0
    return-void
.end method
