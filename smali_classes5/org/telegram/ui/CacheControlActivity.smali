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

.field private clearCallback:Lcom/iMe/fork/utils/Callbacks$Callback;

.field private clearDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private collapsed:Z

.field private databaseSize:J

.field private documentsSize:J

.field private filterDialogId:J

.field fragmentCreateTime:J

.field private frontendFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private isArchivedChatsOnly:Z

.field private isDiagramOnly:Z

.field private isUseAsBackend:Z

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

.field private resetDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private sectionsEndRow:I

.field private sectionsStartRow:I

.field private selected:[Z

.field private stickersCacheSize:J

.field private storiesSize:J

.field private tempSizes:[F

.field private totalDeviceFreeSize:J

.field private totalDeviceSize:J

.field private totalSize:J

.field private videoSize:J


# direct methods
.method public static synthetic $r8$lambda$0K5YrEcxm1U2nFvn8uLQS8ko3wg(Lorg/telegram/ui/CacheControlActivity;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity;->lambda$clearDatabase$27(ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$0jtUnXQNJMWaqdEdurTjonCMVxU(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$onFragmentCreate$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$1WR9VPu_b8uZjH6ZN5x99MviBaw(Lorg/telegram/messenger/Utilities$Callback2;[IIJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupFoldersInternal$17(Lorg/telegram/messenger/Utilities$Callback2;[IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$2UkaZP4De255REieBgu4ao5t1VY(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$showDiagramBottomSheet$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6TafDJb4qiBvtjR0Lb8aiEYDhFo(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$getThemeDescriptions$28()V

    return-void
.end method

.method public static synthetic $r8$lambda$7YaZBmRCxg05GvrQOr1UmAe9Ctg(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->lambda$sort$12(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8zRU2R5p7SUSWsdOn4XxpaqPhjw(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CacheControlActivity;->lambda$loadDialogEntities$9(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BBRHwMu0QarOeySywJ-dccCikVU(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CacheControlActivity;->lambda$loadDialogEntities$10(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G9IXrDJr1JjnCDEU4SVpsJG9P4M(JJJLorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/CacheControlActivity;->lambda$getDeviceTotalSize$5(JJJLorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gj2Q5BJSuxPpcPyLgxWKNrdZ8vI(Lorg/telegram/ui/CacheControlActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$createView$21(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$H-nykRRvTcJj5z49ZzBruNUAWIM(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupDialogFiles$26(Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HV6FIapQHu9laQ5lA89cHl-6ihY(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupDialogFiles$25(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ju10wGo_4QkcLe8EJKpDBPv0V0g(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupFolders$15(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pq0qh-4k6_-BEKsB_zjGEgtZhz4(Lorg/telegram/messenger/Utilities$Callback;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$calculateTotalSize$3(Lorg/telegram/messenger/Utilities$Callback;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$SCW4X7zp44at78_aLNgvUC1kyTk(Lorg/telegram/ui/CacheControlActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupFoldersInternal$18(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$VhG4DqTKy7V_UC6_ja4DELWUrhA(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$calculateTotalSize$4(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$alt38x9LlBeqE9sbDI2-9gNLseI(Lorg/telegram/ui/CacheControlActivity$ItemInner;Lorg/telegram/ui/CacheControlActivity$ItemInner;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->lambda$updateRows$13(Lorg/telegram/ui/CacheControlActivity$ItemInner;Lorg/telegram/ui/CacheControlActivity$ItemInner;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ckOLUudFvSy0ceMC2UyxZhLAybA(Lorg/telegram/ui/CacheControlActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$clearSelectedFiles$23(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fDIoPB6GtFA2gF4vvbe4ApOlWyk(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$getDeviceTotalSize$6(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hq2pLllKk4SboSHkhvAJs74w7v8(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupFolders$14(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m-Zic1x0CxhvNa99MHlUWbrCImY(Lorg/telegram/ui/CacheControlActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->lambda$updateActionBar$24(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pBLbGikyLuCzru4Be9x4y9uXCVs(Lorg/telegram/ui/CacheControlActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->lambda$createView$20(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pBNcD8gUz37C-Rui_YF4mvc8b8A(Lorg/telegram/messenger/Utilities$Callback2;[IILjava/lang/Float;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupFoldersInternal$16(Lorg/telegram/messenger/Utilities$Callback2;[IILjava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pjfpcGpKDwHggH84a6jChy68Dkg(Lorg/telegram/ui/CacheControlActivity;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CacheControlActivity;->lambda$createView$22(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$q3S-k-KxYJ-IENfEwJmrpzkJxuc(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$showClearCacheDialog$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$udFgjBZQUAnh_ZV4sZmSddQs1Z4(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$showClearCacheArchive$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wZOMKR5AFhd7PMw45mbnDxZWLnw(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$loadDialogEntities$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$yUQ4csI8z9rC11L4lNmcxw-Rhyk(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$onFragmentCreate$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$zllxhIuoeJt_TOjkEahDlXfEfdI(Lorg/telegram/ui/CacheControlActivity;ZJLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupFoldersInternal$19(ZJLjava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 124
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Z

    .line 235
    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    const-wide/16 v0, -0x1

    .line 236
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    .line 237
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheEmojiSize:J

    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    .line 238
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    .line 239
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    .line 240
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    .line 241
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    .line 242
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    .line 243
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    .line 244
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    .line 245
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    .line 246
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    .line 247
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    .line 248
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->migrateOldFolderRow:J

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    .line 250
    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    const/4 v0, -0x1

    .line 256
    iput v0, p0, Lorg/telegram/ui/CacheControlActivity;->sectionsStartRow:I

    .line 257
    iput v0, p0, Lorg/telegram/ui/CacheControlActivity;->sectionsEndRow:I

    .line 761
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->oldItems:Ljava/util/ArrayList;

    .line 762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1571
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
        0x1t
    .end array-data
.end method

.method static synthetic access$100(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 124
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/CacheControlActivity;)I
    .locals 0

    .line 124
    iget p0, p0, Lorg/telegram/ui/CacheControlActivity;->sectionsEndRow:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/Components/CacheChart;
    .locals 0

    .line 124
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChart:Lorg/telegram/ui/Components/CacheChart;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/Components/CacheChart;)Lorg/telegram/ui/Components/CacheChart;
    .locals 0

    .line 124
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChart:Lorg/telegram/ui/Components/CacheChart;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 124
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/CacheControlActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 124
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 124
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/CacheControlActivity;Z)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->updateActionBar(Z)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/Components/NestedSizeNotifierLayout;
    .locals 0

    .line 124
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 0

    .line 124
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity;->cleanupDialogFiles(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Lorg/telegram/ui/Storage/CacheModel;)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/CacheControlActivity;F)Ljava/lang/String;
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->formatPercent(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CachedMediaLayout;
    .locals 0

    .line 124
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->cleanupFolders(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$202(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CachedMediaLayout;)Lorg/telegram/ui/CachedMediaLayout;
    .locals 0

    .line 124
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/CacheControlActivity;)[Z
    .locals 0

    .line 124
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 124
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    return-wide v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 124
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    return-wide v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 124
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    return-wide v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 124
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    return-wide v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 124
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    return-wide v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 124
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    return-wide v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 124
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    return-wide v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 124
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->clearSelectedFiles()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 124
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    return-wide v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/CacheControlActivity;)Z
    .locals 0

    .line 124
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->isAllSectionsSelected()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 124
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->migrateOldFolderRow:J

    return-wide v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 124
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    return-wide v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/CacheControlActivity;)Z
    .locals 0

    .line 124
    iget-boolean p0, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/CacheControlActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 124
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;
    .locals 0

    .line 124
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChartHeader:Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;

    return-object p0
.end method

.method static synthetic access$3702(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;)Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;
    .locals 0

    .line 124
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChartHeader:Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;

    return-object p1
.end method

.method static synthetic access$3800(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 124
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 124
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/CacheControlActivity;Z)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->clearDatabase(Z)V

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateActionMode()V

    return-void
.end method

.method static synthetic access$4200(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->showClearCacheDialog(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    return-void
.end method

.method static synthetic access$4302(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;)Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;
    .locals 0

    .line 124
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->clearCacheButton:Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;

    return-object p1
.end method

.method static synthetic access$4400(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 124
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    return-wide v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 124
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    return-wide v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/CacheControlActivity;)Z
    .locals 0

    .line 124
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->isOtherSelected()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/CacheControlActivity;)[I
    .locals 0

    .line 124
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/CacheControlActivity;Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity;->getCheckBoxTitle(Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/CacheControlActivity;)Z
    .locals 0

    .line 124
    iget-boolean p0, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    return p0
.end method

.method static synthetic access$4902(Lorg/telegram/ui/CacheControlActivity;Z)Z
    .locals 0

    .line 124
    iput-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/CacheControlActivity;)F
    .locals 0

    .line 124
    iget p0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 124
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    return-wide v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/CacheControlActivity;F)F
    .locals 0

    .line 124
    iput p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/CacheControlActivity;Landroid/view/View;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->toggleOtherSelected(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$516(Lorg/telegram/ui/CacheControlActivity;F)F
    .locals 1

    .line 124
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    return v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void
.end method

.method static synthetic access$524(Lorg/telegram/ui/CacheControlActivity;F)F
    .locals 1

    .line 124
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 124
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/CacheControlActivity;)F
    .locals 0

    .line 124
    iget p0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShownT:F

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 124
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/CacheControlActivity;)I
    .locals 0

    .line 124
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

    .line 312
    :cond_0
    sget-object v0, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculated:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 313
    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculatedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    return-void

    .line 318
    :cond_1
    sget-object v0, Lorg/telegram/messenger/Utilities;->cacheClearQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

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

    .line 1057
    invoke-static {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->countDirJava(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    new-array p2, v1, [I

    aput v2, p2, v2

    .line 1061
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1063
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_11

    move v4, v2

    .line 1066
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_11

    .line 1067
    aget-object v5, v3, v4

    .line 1068
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    .line 1069
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_7

    :cond_1
    if-lez p1, :cond_d

    .line 1073
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_d

    .line 1074
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".mp3"

    .line 1075
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

    .line 1076
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

    .line 1077
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

    .line 1079
    sget v10, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE_OTHER_THAN_MUSIC:I

    if-eq p1, v10, :cond_10

    :cond_8
    if-nez v8, :cond_9

    sget v8, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE_MUSIC:I

    if-eq p1, v8, :cond_10

    :cond_9
    if-eqz v9, :cond_a

    sget v8, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE2_OTHER:I

    if-eq p1, v8, :cond_10

    :cond_a
    if-nez v9, :cond_b

    sget v8, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE2_EMOJI:I

    if-eq p1, v8, :cond_10

    :cond_b
    if-eqz v7, :cond_c

    sget v8, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE2_OTHER:I

    if-eq p1, v8, :cond_10

    :cond_c
    if-nez v7, :cond_d

    sget v7, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE2_TEMP:I

    if-ne p1, v7, :cond_d

    goto :goto_7

    .line 1091
    :cond_d
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1092
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "drafts"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_7

    .line 1095
    :cond_e
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

    .line 1097
    :cond_f
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1099
    aget v5, p2, v2

    add-int/2addr v5, v1

    aput v5, p2, v2

    .line 1100
    aget v5, p2, v2

    int-to-float v5, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {p3, v5}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_10
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method private cleanupDialogFiles(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1618
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v4, 0x0

    .line 1619
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    const-wide/16 v6, 0x1f4

    .line 1620
    invoke-virtual {v3, v6, v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 1622
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1623
    iget-wide v7, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    move v9, v4

    :goto_0
    const/16 v10, 0x8

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v9, v10, :cond_d

    if-eqz p2, :cond_0

    .line 1626
    aget-object v10, p2, v9

    if-eqz v10, :cond_c

    aget-object v10, p2, v9

    iget-boolean v10, v10, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    if-nez v10, :cond_0

    goto/16 :goto_3

    .line 1630
    :cond_0
    iget-object v10, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;

    if-nez v10, :cond_1

    goto/16 :goto_3

    .line 1634
    :cond_1
    iget-object v14, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1635
    iget-wide v14, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    iget-wide v4, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v14, v4

    iput-wide v14, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    .line 1636
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    sub-long/2addr v14, v4

    iput-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    .line 1637
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    add-long/2addr v14, v4

    iput-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    .line 1638
    iget-object v4, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->delete(I)V

    if-nez v9, :cond_2

    .line 1640
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    iget-wide v10, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v4, v10

    iput-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    goto/16 :goto_3

    :cond_2
    if-ne v9, v13, :cond_3

    .line 1642
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    iget-wide v10, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v4, v10

    iput-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    goto/16 :goto_3

    :cond_3
    if-ne v9, v12, :cond_4

    .line 1644
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    iget-wide v10, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v4, v10

    iput-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    goto/16 :goto_3

    :cond_4
    const/4 v4, 0x3

    if-ne v9, v4, :cond_5

    .line 1646
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    iget-wide v10, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v4, v10

    iput-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    goto/16 :goto_3

    :cond_5
    if-ne v9, v11, :cond_6

    .line 1648
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    iget-wide v10, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v4, v10

    iput-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    goto :goto_3

    :cond_6
    const/4 v4, 0x5

    if-ne v9, v4, :cond_7

    .line 1650
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    iget-wide v10, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v4, v10

    iput-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    goto :goto_3

    :cond_7
    const/4 v4, 0x7

    if-ne v9, v4, :cond_b

    const/4 v5, 0x0

    .line 1652
    :goto_1
    iget-object v11, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_c

    .line 1653
    iget-object v11, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    .line 1654
    iget-object v12, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-object v12, v12, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/telegram/ui/CacheControlActivity;->getTypeByPath(Ljava/lang/String;)I

    move-result v12

    if-ne v12, v4, :cond_8

    .line 1656
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    iget-wide v11, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v14, v11

    iput-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    goto :goto_2

    :cond_8
    if-nez v12, :cond_9

    .line 1658
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    iget-wide v11, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v14, v11

    iput-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    goto :goto_2

    :cond_9
    if-ne v12, v13, :cond_a

    .line 1660
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    iget-wide v11, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v14, v11

    iput-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    goto :goto_2

    .line 1662
    :cond_a
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    iget-wide v11, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v14, v11

    iput-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1667
    :cond_b
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    iget-wide v10, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v4, v10

    iput-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    :cond_c
    :goto_3
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    goto/16 :goto_0

    .line 1670
    :cond_d
    iget-object v4, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_e

    .line 1671
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Storage/CacheModel;->remove(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    .line 1673
    :cond_e
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    if-eqz v2, :cond_15

    .line 1675
    iget-object v2, v2, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    .line 1676
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 1677
    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    iget-wide v14, v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v9, v14

    iput-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    .line 1678
    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    add-long/2addr v9, v14

    iput-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    .line 1679
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1680
    invoke-virtual {v1, v4}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->removeFile(Lorg/telegram/ui/Storage/CacheModel$FileInfo;)V

    .line 1681
    iget v5, v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->type:I

    if-nez v5, :cond_10

    .line 1682
    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    iget-wide v4, v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v9, v4

    iput-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    goto :goto_5

    :cond_10
    if-ne v5, v13, :cond_11

    .line 1684
    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    iget-wide v4, v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v9, v4

    iput-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    goto :goto_5

    :cond_11
    if-ne v5, v12, :cond_12

    .line 1686
    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    iget-wide v4, v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v9, v4

    iput-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    goto :goto_5

    :cond_12
    const/4 v9, 0x3

    if-ne v5, v9, :cond_13

    .line 1688
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    iget-wide v4, v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v14, v4

    iput-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    goto :goto_4

    :cond_13
    if-ne v5, v11, :cond_f

    .line 1690
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    iget-wide v4, v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v14, v4

    iput-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    goto :goto_4

    :cond_14
    :goto_5
    const/4 v9, 0x3

    goto :goto_4

    .line 1695
    :cond_15
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    .line 1696
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Storage/CacheModel;->onFileDeleted(Lorg/telegram/ui/Storage/CacheModel$FileInfo;)V

    goto :goto_6

    .line 1700
    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->cacheRemovedTooltip:Lorg/telegram/ui/Components/UndoView;

    if-eqz v1, :cond_17

    .line 1701
    sget v2, Lorg/telegram/messenger/R$string;->CacheWasCleared:I

    new-array v4, v13, [Ljava/lang/Object;

    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const-string v5, "CacheWasCleared"

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/UndoView;->setInfoText(Ljava/lang/CharSequence;)V

    .line 1703
    :cond_17
    iget-object v7, v0, Lorg/telegram/ui/CacheControlActivity;->cacheRemovedTooltip:Lorg/telegram/ui/Components/UndoView;

    if-eqz v7, :cond_18

    const-wide/16 v8, 0x0

    const/16 v10, 0x13

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1704
    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1706
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1707
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/FilePathDatabase;->removeFiles(Ljava/util/List;)V

    .line 1708
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadAllFiles()V

    .line 1709
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/FileLoader;->getFileLoaderQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda18;

    invoke-direct {v4, v0, v1, v3}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;)V

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

    .line 986
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    if-eqz v0, :cond_0

    .line 987
    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->clearSelection()V

    .line 989
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    if-eqz v0, :cond_1

    .line 990
    invoke-virtual {v0}, Lorg/telegram/ui/CachedMediaLayout;->updateVisibleRows()V

    .line 991
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    .line 997
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadAllFiles()V

    .line 998
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->getFileLoaderQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 1001
    invoke-virtual {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->setCacheModel(Lorg/telegram/ui/Storage/CacheModel;)V

    return-void
.end method

.method private cleanupFoldersInternal(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V
    .locals 21
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

    .line 1111
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

    aget-boolean v7, v3, v12

    add-int/2addr v4, v7

    const/16 v10, 0x8

    aget-boolean v3, v3, v10

    add-int/2addr v3, v4

    .line 1112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1113
    new-instance v4, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda25;

    move-object/from16 v8, p1

    invoke-direct {v4, v8, v1, v3}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/messenger/Utilities$Callback2;[II)V

    .line 1116
    new-instance v18, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda9;

    move-object/from16 v7, v18

    move-object v9, v1

    move v2, v10

    move v10, v3

    move v3, v11

    move v2, v12

    move-wide/from16 v11, v16

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/Utilities$Callback2;[IIJ)V

    const-wide/16 v7, 0x0

    move v11, v0

    move-wide v8, v7

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_5
    const/16 v12, 0x9

    if-ge v10, v12, :cond_22

    .line 1121
    iget-object v12, v6, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v12, v12, v10

    if-nez v12, :cond_5

    move-object v2, v4

    move/from16 v16, v15

    const/4 v11, 0x0

    :goto_6
    move/from16 v20, v14

    move v14, v5

    move/from16 v5, v20

    goto/16 :goto_13

    :cond_5
    const/16 v12, 0x64

    if-nez v10, :cond_6

    .line 1129
    iget-wide v2, v6, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    add-long/2addr v8, v2

    const/4 v2, 0x0

    :goto_7
    const/4 v3, 0x0

    :goto_8
    const/4 v15, -0x1

    goto :goto_a

    :cond_6
    if-ne v10, v0, :cond_7

    .line 1132
    iget-wide v2, v6, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    add-long/2addr v8, v2

    move v2, v5

    goto :goto_7

    :cond_7
    if-ne v10, v5, :cond_8

    .line 1136
    iget-wide v2, v6, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    add-long/2addr v8, v2

    move v3, v0

    :goto_9
    move v2, v13

    goto :goto_8

    :cond_8
    if-ne v10, v13, :cond_9

    .line 1140
    iget-wide v2, v6, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    add-long/2addr v8, v2

    move v3, v5

    goto :goto_9

    :cond_9
    if-ne v10, v14, :cond_a

    .line 1143
    iget-wide v2, v6, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    add-long/2addr v8, v2

    move v2, v0

    goto :goto_7

    :cond_a
    if-ne v10, v15, :cond_b

    .line 1146
    iget-wide v2, v6, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    add-long/2addr v8, v2

    const/4 v2, 0x6

    goto :goto_7

    :cond_b
    const/4 v2, 0x6

    if-ne v10, v2, :cond_c

    .line 1149
    iget-wide v2, v6, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    add-long/2addr v8, v2

    move v2, v12

    goto :goto_7

    :cond_c
    const/4 v2, 0x7

    if-ne v10, v2, :cond_d

    .line 1151
    iget-wide v2, v6, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    add-long/2addr v8, v2

    move v2, v14

    move v3, v15

    goto :goto_8

    :cond_d
    const/16 v2, 0x8

    if-ne v10, v2, :cond_e

    .line 1155
    iget-wide v2, v6, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    add-long/2addr v8, v2

    move v2, v14

    move v3, v2

    goto :goto_8

    :cond_e
    const/4 v2, -0x1

    goto :goto_7

    :goto_a
    if-ne v2, v15, :cond_f

    move-object v2, v4

    const/16 v16, 0x5

    goto :goto_6

    :cond_f
    const-string v15, "acache"

    if-ne v2, v12, :cond_10

    .line 1164
    new-instance v5, Ljava/io/File;

    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v13

    invoke-direct {v5, v13, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_b

    .line 1166
    :cond_10
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v5

    :goto_b
    const/4 v13, 0x0

    if-eqz v5, :cond_11

    .line 1169
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v13, v4}, Lorg/telegram/ui/CacheControlActivity;->cleanDirJava(Ljava/lang/String;I[ILorg/telegram/messenger/Utilities$Callback;)V

    :cond_11
    const/4 v5, 0x0

    .line 1171
    aget v19, v1, v5

    add-int/lit8 v19, v19, 0x1

    aput v19, v1, v5

    .line 1172
    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    if-ne v2, v12, :cond_13

    .line 1174
    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v19

    if-eqz v19, :cond_12

    .line 1176
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x3

    invoke-static {v12, v14, v13, v4}, Lorg/telegram/ui/CacheControlActivity;->cleanDirJava(Ljava/lang/String;I[ILorg/telegram/messenger/Utilities$Callback;)V

    .line 1178
    :cond_12
    aget v12, v1, v5

    add-int/2addr v12, v0

    aput v12, v1, v5

    .line 1179
    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    :cond_13
    const/16 v5, 0x65

    if-eqz v2, :cond_15

    const/4 v12, 0x2

    if-ne v2, v12, :cond_14

    goto :goto_d

    :cond_14
    const/4 v12, 0x0

    :goto_c
    const/4 v14, 0x3

    goto :goto_f

    :cond_15
    :goto_d
    if-nez v2, :cond_16

    const/16 v12, 0x64

    goto :goto_e

    :cond_16
    move v12, v5

    .line 1188
    :goto_e
    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_17

    .line 1191
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3, v13, v4}, Lorg/telegram/ui/CacheControlActivity;->cleanDirJava(Ljava/lang/String;I[ILorg/telegram/messenger/Utilities$Callback;)V

    :cond_17
    const/4 v12, 0x0

    .line 1193
    aget v14, v1, v12

    add-int/2addr v14, v0

    aput v14, v1, v12

    .line 1194
    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    goto :goto_c

    :goto_f
    if-ne v2, v14, :cond_19

    const/4 v14, 0x5

    .line 1197
    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v19

    if-eqz v19, :cond_18

    .line 1199
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v3, v13, v4}, Lorg/telegram/ui/CacheControlActivity;->cleanDirJava(Ljava/lang/String;I[ILorg/telegram/messenger/Utilities$Callback;)V

    .line 1201
    :cond_18
    aget v13, v1, v12

    add-int/2addr v13, v0

    aput v13, v1, v12

    .line 1202
    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    :cond_19
    const/4 v12, 0x4

    if-ne v2, v12, :cond_1a

    .line 1206
    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v13

    iput-wide v13, v6, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    .line 1207
    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v12}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, v6, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    move v7, v0

    :goto_10
    move-object v2, v4

    const/4 v5, 0x4

    const/4 v14, 0x2

    const/16 v16, 0x5

    goto/16 :goto_13

    :cond_1a
    if-ne v2, v0, :cond_1b

    .line 1210
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, v6, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    goto :goto_10

    :cond_1b
    const/4 v12, 0x6

    if-ne v2, v12, :cond_1c

    .line 1212
    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, v6, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    goto :goto_10

    :cond_1c
    const/4 v13, 0x3

    if-ne v2, v13, :cond_1e

    if-ne v3, v0, :cond_1d

    .line 1215
    invoke-static {v13}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v14

    iput-wide v14, v6, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    const/16 v16, 0x5

    .line 1216
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    add-long/2addr v14, v2

    iput-wide v14, v6, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    goto :goto_11

    :cond_1d
    const/16 v16, 0x5

    .line 1218
    invoke-static {v13}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v13

    iput-wide v13, v6, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    .line 1219
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    add-long/2addr v13, v2

    iput-wide v13, v6, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    goto :goto_11

    :cond_1e
    const/16 v16, 0x5

    if-nez v2, :cond_1f

    const/4 v13, 0x0

    .line 1223
    invoke-static {v13}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v14

    iput-wide v14, v6, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    const/16 v2, 0x64

    .line 1224
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    add-long/2addr v14, v2

    iput-wide v14, v6, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    move v7, v0

    :goto_11
    move-object v2, v4

    const/4 v5, 0x4

    const/4 v14, 0x2

    goto :goto_13

    :cond_1f
    const/4 v13, 0x0

    const/4 v14, 0x2

    if-ne v2, v14, :cond_20

    .line 1226
    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    iput-wide v12, v6, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    .line 1227
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    add-long/2addr v12, v2

    iput-wide v12, v6, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    goto :goto_12

    :cond_20
    const/16 v5, 0x64

    if-ne v2, v5, :cond_21

    .line 1230
    new-instance v2, Ljava/io/File;

    const/4 v5, 0x4

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v2, v7, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, v6, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    .line 1231
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    iput-wide v12, v6, Lorg/telegram/ui/CacheControlActivity;->cacheEmojiSize:J

    move-object v2, v4

    .line 1232
    iget-wide v3, v6, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    add-long/2addr v3, v12

    iput-wide v3, v6, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    move v7, v0

    goto :goto_13

    :cond_21
    :goto_12
    move-object v2, v4

    const/4 v5, 0x4

    :goto_13
    add-int/lit8 v10, v10, 0x1

    move-object v4, v2

    move/from16 v15, v16

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v13, 0x3

    move/from16 v20, v14

    move v14, v5

    move/from16 v5, v20

    goto/16 :goto_5

    .line 1236
    :cond_22
    iget-wide v1, v6, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    iget-wide v3, v6, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    add-long/2addr v1, v3

    iget-wide v3, v6, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    add-long/2addr v1, v3

    iget-wide v3, v6, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    add-long/2addr v1, v3

    iget-wide v3, v6, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    add-long/2addr v1, v3

    iget-wide v3, v6, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    add-long/2addr v1, v3

    iget-wide v3, v6, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    add-long/2addr v1, v3

    iget-wide v3, v6, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    add-long/2addr v1, v3

    iget-wide v3, v6, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculated:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v6, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    .line 1237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculatedTime:J

    .line 1238
    iget-object v1, v6, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 1240
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1241
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_23

    .line 1244
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    goto :goto_14

    .line 1246
    :cond_23
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    :goto_14
    if-lt v0, v2, :cond_24

    .line 1250
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v12

    goto :goto_15

    .line 1252
    :cond_24
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v12, v5

    :goto_15
    if-lt v0, v2, :cond_25

    .line 1256
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    goto :goto_16

    .line 1258
    :cond_25
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    :goto_16
    mul-long/2addr v0, v3

    .line 1261
    iput-wide v0, v6, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    mul-long/2addr v12, v3

    .line 1262
    iput-wide v12, v6, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    if-eqz v11, :cond_26

    .line 1266
    iget v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->clearFilePaths()V

    .line 1268
    :cond_26
    iget v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->checkCurrentDownloadsFiles()V

    .line 1270
    new-instance v10, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda22;

    move-object v0, v10

    move-object/from16 v1, p0

    move v2, v7

    move-wide v3, v8

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/CacheControlActivity;ZJLjava/lang/Runnable;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private clearDatabase(Z)V
    .locals 6

    .line 1762
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1763
    sget v1, Lorg/telegram/messenger/R$string;->LocalDatabaseClearTextTitle:I

    const-string v2, "LocalDatabaseClearTextTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1764
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1765
    sget v2, Lorg/telegram/messenger/R$string;->LocalDatabaseClearText:I

    const-string v3, "LocalDatabaseClearText"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v2, "\n\n"

    .line 1766
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1767
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

    .line 1768
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1769
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1770
    sget v1, Lorg/telegram/messenger/R$string;->CacheClear:I

    const-string v2, "CacheClear"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/CacheControlActivity;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1784
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 1785
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, -0x1

    .line 1786
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 1788
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private clearSelectedFiles()V
    .locals 3

    .line 1540
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFiles()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1543
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1544
    sget v1, Lorg/telegram/messenger/R$string;->ClearCache:I

    const-string v2, "ClearCache"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1545
    sget v1, Lorg/telegram/messenger/R$string;->ClearCacheForChats:I

    const-string v2, "ClearCacheForChats"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1546
    sget v1, Lorg/telegram/messenger/R$string;->Clear:I

    const-string v2, "Clear"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1559
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1560
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 1561
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v1, -0x1

    .line 1562
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1564
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static countDirJava(Ljava/lang/String;I)I
    .locals 11

    .line 1016
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 1018
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_10

    move v1, v2

    move v3, v1

    .line 1021
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_f

    .line 1022
    aget-object v4, v0, v1

    .line 1023
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    .line 1024
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_6

    :cond_0
    if-lez p1, :cond_c

    .line 1028
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_c

    .line 1029
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".mp3"

    .line 1030
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

    .line 1031
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

    .line 1032
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

    .line 1034
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

    .line 1046
    :cond_c
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1047
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

    .line 765
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

    .line 770
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

    .line 772
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    .line 774
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

    .line 776
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

    .line 784
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

    .line 785
    :goto_0
    new-instance p3, Landroid/text/SpannableString;

    invoke-direct {p3, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 786
    new-instance p2, Landroid/text/style/RelativeSizeSpan;

    const v1, 0x3f558106    # 0.834f

    invoke-direct {p2, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p3}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {p3, p2, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 787
    new-instance p2, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p3}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {p3, p2, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 788
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string p1, "  "

    .line 789
    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 790
    invoke-virtual {p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p2
.end method

.method public static getDeviceTotalSize(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 349
    sget-object v0, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalSize:Ljava/lang/Long;

    if-eqz v0, :cond_1

    sget-object v1, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalFreeSize:Ljava/lang/Long;

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    .line 351
    invoke-interface {p0, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 355
    :cond_1
    sget-object v0, Lorg/telegram/messenger/Utilities;->cacheClearQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static getDirectorySize(Ljava/io/File;I)J
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_2

    .line 973
    sget-boolean v2, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 977
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 978
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/Utilities;->getDirSize(Ljava/lang/String;IZ)J

    move-result-wide v0

    goto :goto_0

    .line 979
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 980
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    add-long/2addr v0, p0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method private getTypeByPath(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x6

    .line 1731
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/CacheControlActivity;->pathContains(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x7

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 1734
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/CacheControlActivity;->pathContains(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const/16 v2, 0x64

    .line 1737
    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/CacheControlActivity;->pathContains(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x2

    .line 1740
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/CacheControlActivity;->pathContains(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    const/16 v1, 0x65

    .line 1743
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/CacheControlActivity;->pathContains(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method private isAllSectionsSelected()Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 2230
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 2231
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 2232
    iget v4, v2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 2235
    :cond_0
    iget v2, v2, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez v2, :cond_1

    .line 2237
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    array-length v2, v2

    sub-int/2addr v2, v3

    .line 2239
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

    .line 2355
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    array-length v0, v0

    new-array v1, v0, [Z

    const/4 v2, 0x0

    move v3, v2

    .line 2356
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 2357
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 2358
    iget v6, v4, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_0

    iget-boolean v6, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    if-nez v6, :cond_0

    iget v4, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-ltz v4, :cond_0

    .line 2359
    aput-boolean v5, v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    .line 2363
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

.method private static synthetic lambda$calculateTotalSize$3(Lorg/telegram/messenger/Utilities$Callback;J)V
    .locals 0

    .line 338
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$calculateTotalSize$4(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 19

    const/4 v0, 0x0

    .line 319
    sput-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    const/4 v1, 0x4

    .line 320
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v4

    .line 321
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v6

    .line 322
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v8

    const/16 v2, 0x64

    .line 323
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/4 v2, 0x2

    .line 324
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v10

    invoke-static {v10, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v10

    const/16 v12, 0x65

    .line 325
    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v12

    invoke-static {v12, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    add-long/2addr v10, v12

    const/4 v12, 0x3

    .line 326
    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v15

    .line 327
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v13

    invoke-static {v13, v14}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v17

    add-long v15, v15, v17

    .line 328
    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v13

    invoke-static {v13, v2}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v17

    .line 329
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    add-long v17, v17, v2

    .line 330
    new-instance v2, Ljava/io/File;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    const-string v13, "acache"

    invoke-direct {v2, v3, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    .line 331
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v12}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    add-long/2addr v2, v12

    .line 332
    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    const/4 v1, 0x6

    .line 333
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v0

    add-long/2addr v4, v6

    add-long/2addr v4, v10

    add-long/2addr v4, v12

    add-long/2addr v4, v8

    add-long/2addr v4, v15

    add-long v4, v4, v17

    add-long/2addr v4, v2

    add-long/2addr v4, v0

    .line 334
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculated:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculatedTime:J

    .line 336
    sget-boolean v2, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-nez v2, :cond_0

    .line 337
    new-instance v2, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda11;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v0, v1}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/Utilities$Callback;J)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$cleanupDialogFiles$25(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 1

    .line 1715
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->checkCurrentDownloadsFiles()V

    .line 1717
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1719
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1722
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->isUseAsBackend:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->clearCallback:Lcom/iMe/fork/utils/Callbacks$Callback;

    if-eqz p1, :cond_0

    .line 1723
    invoke-interface {p1}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$cleanupDialogFiles$26(Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 2

    const/4 v0, 0x0

    .line 1710
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1711
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-object v1, v1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1714
    :cond_0
    new-instance p1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda21;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$cleanupFolders$14(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V
    .locals 0

    .line 999
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->cleanupFoldersInternal(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$cleanupFolders$15(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V
    .locals 2

    .line 998
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$cleanupFoldersInternal$16(Lorg/telegram/messenger/Utilities$Callback2;[IILjava/lang/Float;)V
    .locals 2

    const/4 v0, 0x0

    .line 1114
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

.method private static synthetic lambda$cleanupFoldersInternal$17(Lorg/telegram/messenger/Utilities$Callback2;[IIJ)V
    .locals 3

    .line 1117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 1118
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

.method private synthetic lambda$cleanupFoldersInternal$18(J)V
    .locals 7

    .line 1285
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

    .line 1286
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheRemovedTooltip:Lorg/telegram/ui/Components/UndoView;

    const-wide/16 v2, 0x0

    const/16 v4, 0x13

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$cleanupFoldersInternal$19(ZJLjava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1272
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageLoader;->clearMemory()V

    .line 1275
    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_1

    .line 1276
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 1277
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1280
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1283
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    invoke-virtual {p1}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->checkRingtoneSoundsLoaded()V

    .line 1284
    new-instance p1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/CacheControlActivity;J)V

    const-wide/16 p2, 0x96

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1288
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MediaDataController;->checkAllMedia(Z)V

    .line 1290
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->loadDialogEntities()V

    if-eqz p4, :cond_2

    .line 1293
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$clearDatabase$27(ZLandroid/content/DialogInterface;I)V
    .locals 2

    .line 1771
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1774
    :cond_0
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    const/4 v0, 0x3

    invoke-direct {p2, p3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 p3, 0x0

    .line 1775
    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 1776
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 1777
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->clearQueryTime()V

    if-eqz p1, :cond_1

    .line 1779
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->fullReset()V

    goto :goto_0

    .line 1781
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->clearLocalDatabase()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$clearSelectedFiles$23(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1547
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {p1}, Lorg/telegram/ui/Storage/CacheModel;->removeSelectedFiles()Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    move-result-object p1

    .line 1548
    iget-wide v0, p1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 1549
    invoke-direct {p0, p1, p2, p2}, Lorg/telegram/ui/CacheControlActivity;->cleanupDialogFiles(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Lorg/telegram/ui/Storage/CacheModel;)V

    .line 1551
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {p1}, Lorg/telegram/ui/Storage/CacheModel;->clearSelection()V

    .line 1552
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    if-eqz p1, :cond_1

    .line 1553
    invoke-virtual {p1}, Lorg/telegram/ui/CachedMediaLayout;->update()V

    .line 1554
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    .line 1556
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    .line 1557
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void
.end method

.method private synthetic lambda$createView$20(Landroid/view/View;)V
    .locals 0

    .line 1409
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->clearSelectedFiles()V

    return-void
.end method

.method private synthetic lambda$createView$21(II)V
    .locals 0

    .line 1513
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method private synthetic lambda$createView$22(Landroid/view/View;IFF)V
    .locals 3

    .line 1483
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_5

    .line 1486
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    goto :goto_0

    .line 1489
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 1493
    iget v1, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    instance-of v1, p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v1, :cond_3

    .line 1494
    iget p2, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez p2, :cond_2

    .line 1495
    iget-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    .line 1496
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    .line 1497
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void

    .line 1500
    :cond_2
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/CacheControlActivity;->toggleSection(Lorg/telegram/ui/CacheControlActivity$ItemInner;Landroid/view/View;)V

    goto :goto_0

    .line 1501
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->entities:Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    if-eqz v1, :cond_4

    .line 1506
    invoke-direct {p0, v1}, Lorg/telegram/ui/CacheControlActivity;->showClearCacheDialog(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    goto :goto_0

    .line 1507
    :cond_4
    iget v0, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->keepMediaType:I

    if-ltz v0, :cond_5

    .line 1508
    new-instance v0, Lorg/telegram/ui/KeepMediaPopupView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/KeepMediaPopupView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    .line 1509
    invoke-static {p0, v0, p1, p3, p4}, Lorg/telegram/ui/Components/AlertsCreator;->createSimplePopup(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;Landroid/view/View;FF)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    .line 1510
    iget-object p3, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget p2, p2, Lorg/telegram/ui/CacheControlActivity$ItemInner;->keepMediaType:I

    invoke-virtual {v0, p2}, Lorg/telegram/ui/KeepMediaPopupView;->update(I)V

    .line 1511
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setParentWindow(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    .line 1512
    new-instance p1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda28;

    invoke-direct {p1, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/KeepMediaPopupView;->setCallback(Lorg/telegram/ui/KeepMediaPopupView$Callback;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private static synthetic lambda$getDeviceTotalSize$5(JJJLorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    mul-long/2addr p0, p2

    .line 395
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sput-object p0, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalSize:Ljava/lang/Long;

    mul-long/2addr p4, p2

    .line 396
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sput-object p0, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalFreeSize:Ljava/lang/Long;

    if-eqz p6, :cond_0

    .line 398
    sget-object p1, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalSize:Ljava/lang/Long;

    invoke-interface {p6, p1, p0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getDeviceTotalSize$6(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 13

    .line 357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 358
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRootDirs()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 359
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 360
    sget-object v3, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 361
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_2

    .line 362
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 363
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    :cond_1
    new-instance v2, Ljava/io/File;

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    :cond_2
    :goto_1
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 376
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_3

    .line 377
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    goto :goto_2

    .line 379
    :cond_3
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    :goto_2
    move-wide v8, v3

    if-lt v1, v2, :cond_4

    .line 383
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    goto :goto_3

    .line 385
    :cond_4
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    :goto_3
    move-wide v10, v3

    if-lt v1, v2, :cond_5

    .line 389
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    goto :goto_4

    .line 391
    :cond_5
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    :goto_4
    move-wide v6, v0

    .line 394
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda7;

    move-object v5, v0

    move-object v12, p0

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda7;-><init>(JJJLorg/telegram/messenger/Utilities$Callback2;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 402
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$28()V
    .locals 5

    .line 2867
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v0, :cond_0

    .line 2868
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    .line 2871
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionTextView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2872
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    aput v4, v2, v3

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRectByKey(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadDialogEntities$10(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 6

    .line 590
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 591
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 592
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, ","

    if-nez v0, :cond_0

    .line 594
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

    .line 596
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 599
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 601
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

    .line 603
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 606
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 607
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    iget-wide v0, p2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    const-wide/16 v4, 0x0

    cmp-long p2, v0, v4

    if-gtz p2, :cond_2

    .line 608
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 612
    :cond_3
    invoke-direct {p0, p3}, Lorg/telegram/ui/CacheControlActivity;->sort(Ljava/util/ArrayList;)V

    .line 613
    new-instance p1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda16;

    move-object v0, p1

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadDialogEntities$11()V
    .locals 11

    .line 557
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FilePathDatabase;->ensureDatabaseCreated()V

    .line 558
    new-instance v6, Lorg/telegram/ui/Storage/CacheModel;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lorg/telegram/ui/Storage/CacheModel;-><init>(Z)V

    .line 559
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v2, 0x4

    .line 561
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {p0, v3, v4, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    .line 563
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    const/16 v3, 0x64

    .line 564
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    const/4 v3, 0x2

    .line 566
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v7, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    const/16 v5, 0x65

    .line 567
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {p0, v5, v7, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    .line 569
    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {p0, v5, v2, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    .line 570
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2, v4, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    const/4 v2, 0x3

    .line 571
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    const/4 v2, 0x5

    .line 572
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    .line 574
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 575
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 576
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 577
    :goto_0
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 578
    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    .line 579
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    iget-wide v8, v8, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v7

    if-nez v7, :cond_1

    .line 581
    iget-wide v7, v2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-lez v2, :cond_0

    .line 582
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 584
    :cond_0
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    :cond_2
    invoke-virtual {v6}, Lorg/telegram/ui/Storage/CacheModel;->sortBySize()V

    .line 589
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v7, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda17;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$loadDialogEntities$9(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 10

    .line 615
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 616
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    move v0, p1

    .line 618
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 619
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    .line 621
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v3

    if-nez v3, :cond_1

    const-wide v3, 0x7fffffffffffffffL

    .line 622
    iput-wide v3, v2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    if-eqz p2, :cond_0

    .line 625
    invoke-virtual {p2, v2}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->merge(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    .line 626
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    goto :goto_1

    :cond_0
    move-object p2, v2

    move v2, p1

    :goto_1
    if-eqz v2, :cond_1

    .line 632
    invoke-direct {p0, p3}, Lorg/telegram/ui/CacheControlActivity;->sort(Ljava/util/ArrayList;)V

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    .line 636
    :cond_2
    invoke-virtual {p4, p3}, Lorg/telegram/ui/Storage/CacheModel;->setEntities(Ljava/util/ArrayList;)V

    .line 638
    sget-boolean p2, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-nez p2, :cond_c

    .line 639
    invoke-virtual {p0, p4}, Lorg/telegram/ui/CacheControlActivity;->setCacheModel(Lorg/telegram/ui/Storage/CacheModel;)V

    .line 640
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    .line 641
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    .line 642
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

    .line 643
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChartHeader:Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;

    iget-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-lez p3, :cond_3

    move p3, v1

    goto :goto_2

    :cond_3
    move p3, p1

    .line 645
    :goto_2
    iget-wide v6, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    cmp-long v0, v6, v4

    const/4 v8, 0x0

    if-gtz v0, :cond_4

    move v0, v8

    goto :goto_3

    :cond_4
    long-to-float v0, v2

    long-to-float v2, v6

    div-float/2addr v0, v2

    .line 646
    :goto_3
    iget-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    cmp-long v9, v2, v4

    if-lez v9, :cond_6

    cmp-long v4, v6, v4

    if-gtz v4, :cond_5

    goto :goto_4

    :cond_5
    sub-long v2, v6, v2

    long-to-float v2, v2

    long-to-float v3, v6

    div-float v8, v2, v3

    .line 643
    :cond_6
    :goto_4
    invoke-virtual {p2, p3, v0, v8}, Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;->setData(ZFF)V

    .line 650
    :cond_7
    iget-boolean p2, p0, Lorg/telegram/ui/CacheControlActivity;->isUseAsBackend:Z

    if-eqz p2, :cond_c

    iget-boolean p2, p0, Lorg/telegram/ui/CacheControlActivity;->isDiagramOnly:Z

    if-nez p2, :cond_c

    .line 651
    iget-object p2, p4, Lorg/telegram/ui/Storage/CacheModel;->entities:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 652
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_8

    .line 653
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 655
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheRemovedTooltip:Lorg/telegram/ui/Components/UndoView;

    if-eqz p1, :cond_9

    .line 656
    sget p2, Lorg/telegram/messenger/R$string;->dialogs_empty_cache:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UndoView;->setInfoText(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheRemovedTooltip:Lorg/telegram/ui/Components/UndoView;

    const-wide/16 v1, 0x0

    const/16 v3, 0x13

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_9
    return-void

    .line 661
    :cond_a
    iget-object p2, p4, Lorg/telegram/ui/Storage/CacheModel;->entities:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    .line 662
    iget-boolean p2, p0, Lorg/telegram/ui/CacheControlActivity;->isArchivedChatsOnly:Z

    if-eqz p2, :cond_b

    iget-object p2, p4, Lorg/telegram/ui/Storage/CacheModel;->entities:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, v1, :cond_b

    .line 663
    :goto_5
    iget-object p2, p4, Lorg/telegram/ui/Storage/CacheModel;->entities:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_b

    .line 664
    iget-object p2, p4, Lorg/telegram/ui/Storage/CacheModel;->entities:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->merge(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 667
    :cond_b
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->showClearCacheDialog(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$onFragmentCreate$7()V
    .locals 1

    .line 508
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->resumeDelayedFragmentAnimation()V

    const/4 v0, 0x0

    .line 509
    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    const/4 v0, 0x1

    .line 511
    invoke-direct {p0, v0}, Lorg/telegram/ui/CacheControlActivity;->updateRows(Z)V

    .line 512
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void
.end method

.method private synthetic lambda$onFragmentCreate$8()V
    .locals 11

    const/4 v0, 0x4

    .line 416
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    .line 417
    sget-boolean v1, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v1, :cond_0

    return-void

    .line 421
    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    .line 422
    sget-boolean v1, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 426
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    const/16 v5, 0x64

    .line 427
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    .line 428
    sget-boolean v3, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v3, :cond_2

    return-void

    :cond_2
    const/4 v3, 0x2

    .line 431
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    const/16 v6, 0x65

    .line 432
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    .line 433
    sget-boolean v4, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v4, :cond_3

    return-void

    :cond_3
    const/4 v4, 0x3

    .line 436
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v7

    iput-wide v7, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    .line 437
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v6}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    .line 438
    sget-boolean v5, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v5, :cond_4

    return-void

    .line 441
    :cond_4
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v7

    iput-wide v7, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    .line 442
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    add-long/2addr v7, v2

    iput-wide v7, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    .line 443
    sget-boolean v2, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v2, :cond_5

    return-void

    .line 446
    :cond_5
    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    const-string v5, "acache"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    .line 447
    sget-boolean v2, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v2, :cond_6

    return-void

    .line 450
    :cond_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v4}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->cacheEmojiSize:J

    .line 451
    sget-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v0, :cond_7

    return-void

    .line 454
    :cond_7
    iget-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->cacheEmojiSize:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    .line 455
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    const/4 v0, 0x6

    .line 456
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    .line 457
    sget-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v0, :cond_8

    return-void

    .line 460
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

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculated:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculatedTime:J

    .line 464
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_a

    .line 465
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRootDirs()Ljava/util/ArrayList;

    move-result-object v0

    .line 466
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 467
    sget-object v3, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 468
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_b

    .line 469
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 470
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

    .line 477
    :cond_a
    new-instance v2, Ljava/io/File;

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 480
    :cond_b
    :goto_1
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 483
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_c

    .line 484
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    goto :goto_2

    .line 486
    :cond_c
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    :goto_2
    if-lt v1, v2, :cond_d

    .line 490
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5

    goto :goto_3

    .line 492
    :cond_d
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    :goto_3
    if-lt v1, v2, :cond_e

    .line 496
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    goto :goto_4

    .line 498
    :cond_e
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    :goto_4
    mul-long/2addr v0, v3

    .line 501
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    mul-long/2addr v5, v3

    .line 502
    iput-wide v5, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 504
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 507
    :goto_5
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 515
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->loadDialogEntities()V

    return-void
.end method

.method private static synthetic lambda$showClearCacheArchive$1(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p0, 0x1

    .line 179
    sput-boolean p0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    return-void
.end method

.method private static synthetic lambda$showClearCacheDialog$0(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p0, 0x1

    .line 168
    sput-boolean p0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    return-void
.end method

.method private static synthetic lambda$showDiagramBottomSheet$2(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p0, 0x1

    .line 191
    sput-boolean p0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    return-void
.end method

.method private static synthetic lambda$sort$12(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)I
    .locals 3

    .line 678
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

.method private synthetic lambda$updateActionBar$24(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1580
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShownT:F

    .line 1581
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShownT:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1582
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShownT:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1583
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$updateRows$13(Lorg/telegram/ui/CacheControlActivity$ItemInner;Lorg/telegram/ui/CacheControlActivity$ItemInner;)I
    .locals 2

    .line 849
    iget-wide v0, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    iget-wide p0, p0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private loadDialogEntities()V
    .locals 2

    .line 556
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FilePathDatabase;->getQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static newInstanceAsBackend(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/CacheControlActivity;
    .locals 2

    .line 139
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CacheControlActivity$1;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v1, 0x1

    .line 155
    iput-boolean v1, v0, Lorg/telegram/ui/CacheControlActivity;->isUseAsBackend:Z

    .line 156
    iput-object p0, v0, Lorg/telegram/ui/CacheControlActivity;->frontendFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method private pathContains(Ljava/lang/String;I)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1750
    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1753
    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public static resetCalculatedTotalSIze()V
    .locals 1

    const/4 v0, 0x0

    .line 345
    sput-object v0, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculated:Ljava/lang/Long;

    return-void
.end method

.method private sectionsSelected()I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_1

    .line 1335
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
    .locals 8

    if-eqz p1, :cond_2

    .line 1592
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1596
    :cond_0
    new-instance v0, Lorg/telegram/ui/DilogCacheBottomSheet;

    iget-boolean v1, p0, Lorg/telegram/ui/CacheControlActivity;->isUseAsBackend:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->frontendFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->createCacheModel()Lorg/telegram/ui/Storage/CacheModel;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$7;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/CacheControlActivity$7;-><init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    iget-boolean v6, p0, Lorg/telegram/ui/CacheControlActivity;->isUseAsBackend:Z

    iget-boolean v7, p0, Lorg/telegram/ui/CacheControlActivity;->isArchivedChatsOnly:Z

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/DilogCacheBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;Lorg/telegram/ui/Storage/CacheModel;Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;ZZ)V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 1614
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_2
    :goto_1
    return-void
.end method

.method private size(I)J
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1327
    :pswitch_0
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    return-wide v0

    .line 1326
    :pswitch_1
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    return-wide v0

    .line 1325
    :pswitch_2
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    return-wide v0

    .line 1324
    :pswitch_3
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    return-wide v0

    .line 1323
    :pswitch_4
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    return-wide v0

    .line 1322
    :pswitch_5
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    return-wide v0

    .line 1321
    :pswitch_6
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    return-wide v0

    .line 1320
    :pswitch_7
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    return-wide v0

    .line 1319
    :pswitch_8
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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

    .line 677
    sget-object v0, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda23;->INSTANCE:Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda23;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private toggleOtherSelected(Landroid/view/View;)V
    .locals 8

    .line 2412
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->isOtherSelected()Z

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    move v4, v2

    .line 2416
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 2417
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 2418
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

    .line 2425
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    if-eqz p1, :cond_2

    const/high16 v0, -0x3fc00000    # -3.0f

    .line 2427
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    :cond_2
    return-void

    .line 2433
    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    if-eqz p1, :cond_7

    .line 2434
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    array-length p1, p1

    new-array v4, p1, [Z

    move v5, v2

    .line 2435
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 2436
    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 2437
    iget v7, v6, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v7, v1, :cond_4

    iget-boolean v7, v6, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    if-nez v7, :cond_4

    iget v6, v6, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-ltz v6, :cond_4

    .line 2438
    aput-boolean v3, v4, v6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move v5, v2

    :goto_3
    if-ge v5, p1, :cond_9

    .line 2442
    aget-boolean v6, v4, v5

    if-nez v6, :cond_6

    .line 2443
    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    xor-int/lit8 v7, v0, 0x1

    aput-boolean v7, v6, v5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    move p1, v2

    .line 2447
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_9

    .line 2448
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 2449
    iget v5, v4, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v5, v1, :cond_8

    iget-boolean v5, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    if-eqz v5, :cond_8

    iget v4, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-ltz v4, :cond_8

    .line 2450
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    xor-int/lit8 v6, v0, 0x1

    aput-boolean v6, v5, v4

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 2455
    :cond_9
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v2, p1, :cond_c

    .line 2456
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2457
    instance-of v4, p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v4, :cond_b

    .line 2458
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_b

    .line 2460
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 2461
    iget v5, v4, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v5, v1, :cond_b

    .line 2462
    iget v4, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez v4, :cond_a

    .line 2463
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto :goto_6

    .line 2465
    :cond_a
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v4, v5, v4

    invoke-virtual {p1, v4, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    :cond_b
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2471
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void
.end method

.method private toggleSection(Lorg/telegram/ui/CacheControlActivity$ItemInner;Landroid/view/View;)V
    .locals 6

    .line 2371
    iget v0, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez v0, :cond_0

    .line 2372
    invoke-direct {p0, p2}, Lorg/telegram/ui/CacheControlActivity;->toggleOtherSelected(Landroid/view/View;)V

    return-void

    .line 2375
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v0, v1, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->sectionsSelected()I

    move-result v0

    if-gt v0, v1, :cond_2

    .line 2376
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    if-eqz p2, :cond_1

    const/high16 p1, -0x3fc00000    # -3.0f

    .line 2378
    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    :cond_1
    return-void

    .line 2382
    :cond_2
    instance-of v0, p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2383
    check-cast p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    iget v3, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    aget-boolean v4, v0, v3

    xor-int/2addr v4, v1

    aput-boolean v4, v0, v3

    invoke-virtual {p2, v4, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto :goto_1

    .line 2385
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    iget v0, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    aget-boolean v3, p2, v0

    xor-int/2addr v3, v1

    aput-boolean v3, p2, v0

    .line 2386
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_5

    move v0, v2

    .line 2388
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 2389
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2390
    instance-of v4, v3, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ne p2, v4, :cond_4

    .line 2391
    check-cast v3, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    iget v5, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    aget-boolean v4, v4, v5

    invoke-virtual {v3, v4, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2396
    :cond_5
    :goto_1
    iget-boolean p1, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    if-eqz p1, :cond_7

    .line 2397
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v2, p1, :cond_7

    .line 2398
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2399
    instance-of p2, p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz p2, :cond_6

    .line 2400
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-ltz p2, :cond_6

    .line 2401
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

    .line 2402
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->isOtherSelected()Z

    move-result p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2408
    :cond_7
    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void
.end method

.method private updateActionBar(Z)V
    .locals 3

    .line 1573
    iget-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShown:Z

    if-eq p1, v0, :cond_2

    .line 1574
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1575
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 1578
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

    .line 1579
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1585
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1586
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x17c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1587
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method private updateActionMode()V
    .locals 9

    .line 2831
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFiles()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5

    .line 2832
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    if-eqz v0, :cond_4

    .line 2834
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-object v0, v0, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const-string v2, "Files"

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 2836
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

    .line 2837
    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-object v6, v6, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    iget-wide v7, v5, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2838
    iget v5, v5, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->filesCount:I

    add-int/2addr v4, v5

    goto :goto_0

    .line 2841
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFiles()I

    move-result v0

    sub-int/2addr v0, v4

    const-string v4, "Chats"

    if-lez v0, :cond_2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 2843
    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-object v6, v6, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    .line 2844
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

    .line 2845
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v2, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "%s, %s"

    .line 2843
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2848
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

    .line 2851
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

    .line 2853
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v1}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFilesSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    .line 2854
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2855
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2856
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    :cond_4
    return-void

    .line 2859
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    return-void
.end method

.method private updateChart()V
    .locals 8

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChart:Lorg/telegram/ui/Components/CacheChart;

    if-eqz v0, :cond_6

    .line 526
    iget-boolean v1, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_4

    iget-wide v6, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    cmp-long v6, v6, v2

    if-lez v6, :cond_4

    const/16 v0, 0xa

    new-array v0, v0, [Lorg/telegram/ui/Components/CacheChart$SegmentSize;

    .line 528
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_2

    .line 529
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 530
    iget v2, v1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 531
    iget v2, v1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez v2, :cond_0

    .line 532
    iget-boolean v2, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    if-eqz v2, :cond_1

    .line 533
    iget-wide v1, v1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    const/16 v6, 0x9

    aget-boolean v3, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->of(JZ)Lorg/telegram/ui/Components/CacheChart$SegmentSize;

    move-result-object v1

    aput-object v1, v0, v6

    goto :goto_1

    .line 536
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

    .line 540
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/telegram/ui/CacheControlActivity;->fragmentCreateTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x50

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 541
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChart:Lorg/telegram/ui/Components/CacheChart;

    iget-object v1, v1, Lorg/telegram/ui/Components/CacheChart;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 543
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChart:Lorg/telegram/ui/Components/CacheChart;

    iget-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    invoke-virtual {v1, v2, v3, v5, v0}, Lorg/telegram/ui/Components/CacheChart;->setSegments(JZ[Lorg/telegram/ui/Components/CacheChart$SegmentSize;)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    const-wide/16 v1, -0x1

    new-array v3, v4, [Lorg/telegram/ui/Components/CacheChart$SegmentSize;

    .line 545
    invoke-virtual {v0, v1, v2, v5, v3}, Lorg/telegram/ui/Components/CacheChart;->setSegments(JZ[Lorg/telegram/ui/Components/CacheChart$SegmentSize;)V

    goto :goto_2

    :cond_5
    new-array v1, v4, [Lorg/telegram/ui/Components/CacheChart$SegmentSize;

    .line 547
    invoke-virtual {v0, v2, v3, v5, v1}, Lorg/telegram/ui/Components/CacheChart;->setSegments(JZ[Lorg/telegram/ui/Components/CacheChart$SegmentSize;)V

    .line 550
    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->clearCacheButton:Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    if-nez v1, :cond_7

    .line 551
    invoke-virtual {v0}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->updateSize()V

    :cond_7
    return-void
.end method

.method private updateDatabaseItemSize()V
    .locals 3

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->clearDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 295
    sget v1, Lorg/telegram/messenger/R$string;->ClearLocalDatabase:I

    const-string v2, "ClearLocalDatabase"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 300
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->clearDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateRows()V
    .locals 1

    const/4 v0, 0x1

    .line 795
    invoke-direct {p0, v0}, Lorg/telegram/ui/CacheControlActivity;->updateRows(Z)V

    return-void
.end method

.method private updateRows(Z)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 799
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

    .line 803
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 804
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->oldItems:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 806
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 807
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v7, 0xa

    invoke-direct {v4, v7, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/CacheControlActivity;->sectionsStartRow:I

    .line 812
    iget-boolean v3, v0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    const/16 v4, 0x8

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x7

    const/4 v12, 0x1

    const-wide/16 v13, 0x0

    if-eqz v3, :cond_2

    .line 813
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v7, 0xc

    invoke-direct {v5, v7, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v5, v7, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v5, v7, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v5, v7, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v5, v7, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    move v3, v12

    goto/16 :goto_4

    .line 820
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 821
    iget-wide v5, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    cmp-long v5, v5, v13

    if-lez v5, :cond_3

    .line 822
    sget v5, Lorg/telegram/messenger/R$string;->LocalPhotoCache:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-wide v7, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_lightblue:I

    invoke-static {v5, v1, v7, v8, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    :cond_3
    iget-wide v5, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    cmp-long v5, v5, v13

    if-lez v5, :cond_4

    .line 825
    sget v5, Lorg/telegram/messenger/R$string;->LocalVideoCache:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_blue:I

    invoke-static {v5, v12, v6, v7, v8}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    :cond_4
    iget-wide v5, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    cmp-long v5, v5, v13

    if-lez v5, :cond_5

    .line 828
    sget v5, Lorg/telegram/messenger/R$string;->LocalDocumentCache:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_green:I

    invoke-static {v5, v9, v6, v7, v8}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    :cond_5
    iget-wide v5, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    cmp-long v5, v5, v13

    if-lez v5, :cond_6

    .line 831
    sget v5, Lorg/telegram/messenger/R$string;->LocalMusicCache:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_purple:I

    invoke-static {v5, v10, v6, v7, v8}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    :cond_6
    iget-wide v5, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    cmp-long v5, v5, v13

    const/4 v7, 0x4

    if-lez v5, :cond_7

    .line 834
    sget v5, Lorg/telegram/messenger/R$string;->LocalAudioCache:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_lightgreen:I

    invoke-static {v5, v7, v9, v10, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_7
    iget-wide v5, v0, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    cmp-long v5, v5, v13

    const/4 v6, 0x5

    if-lez v5, :cond_8

    .line 837
    sget v5, Lorg/telegram/messenger/R$string;->LocalStoriesCache:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_red:I

    invoke-static {v5, v6, v9, v10, v8}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_8
    iget-wide v8, v0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    cmp-long v5, v8, v13

    if-lez v5, :cond_9

    .line 840
    sget v5, Lorg/telegram/messenger/R$string;->LocalStickersCache:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x6

    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_orange:I

    invoke-static {v5, v8, v9, v10, v15}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    :cond_9
    iget-wide v8, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    cmp-long v5, v8, v13

    if-lez v5, :cond_a

    .line 843
    sget v5, Lorg/telegram/messenger/R$string;->LocalProfilePhotosCache:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-wide v8, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_cyan:I

    invoke-static {v5, v11, v8, v9, v10}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    :cond_a
    iget-wide v8, v0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    cmp-long v5, v8, v13

    if-lez v5, :cond_b

    .line 846
    sget v5, Lorg/telegram/messenger/R$string;->LocalMiscellaneousCache:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-wide v8, v0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_purple:I

    invoke-static {v5, v4, v8, v9, v10}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    .line 849
    sget-object v5, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda24;->INSTANCE:Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda24;

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 850
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v12

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iput-boolean v12, v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;->last:Z

    .line 853
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->tempSizes:[F

    if-nez v5, :cond_c

    const/16 v5, 0xa

    new-array v8, v5, [F

    .line 854
    iput-object v8, v0, Lorg/telegram/ui/CacheControlActivity;->tempSizes:[F

    :cond_c
    move v5, v1

    .line 856
    :goto_2
    iget-object v8, v0, Lorg/telegram/ui/CacheControlActivity;->tempSizes:[F

    array-length v9, v8

    if-ge v5, v9, :cond_d

    .line 857
    invoke-direct {v0, v5}, Lorg/telegram/ui/CacheControlActivity;->size(I)J

    move-result-wide v9

    long-to-float v9, v9

    aput v9, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 859
    :cond_d
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    if-nez v5, :cond_e

    const/16 v5, 0xa

    new-array v5, v5, [I

    .line 860
    iput-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    .line 862
    :cond_e
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    invoke-static {v8, v5}, Lorg/telegram/messenger/AndroidUtilities;->roundPercents([F[I)[I

    .line 865
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_10

    .line 866
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v6, v1

    move v5, v7

    move-wide v8, v13

    .line 869
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_f

    .line 870
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iput-boolean v12, v10, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    .line 871
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget-wide v13, v10, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    add-long/2addr v8, v13

    .line 872
    iget-object v10, v0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget v13, v13, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    aget v10, v10, v13

    add-int/2addr v6, v10

    add-int/lit8 v5, v5, 0x1

    const-wide/16 v13, 0x0

    goto :goto_3

    .line 874
    :cond_f
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    const/16 v10, 0x9

    aput v6, v5, v10

    .line 875
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/messenger/R$string;->LocalOther:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_golden:I

    const/4 v13, -0x1

    invoke-static {v6, v13, v8, v9, v10}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    iget-boolean v5, v0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    if-nez v5, :cond_1

    .line 877
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 880
    :cond_10
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_11
    move v3, v1

    .line 885
    :goto_4
    iget-boolean v5, v0, Lorg/telegram/ui/CacheControlActivity;->isUseAsBackend:Z

    if-eqz v5, :cond_15

    iget-boolean v5, v0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    if-nez v5, :cond_15

    if-nez v3, :cond_15

    .line 886
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v1, :cond_12

    .line 887
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 889
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v1, :cond_13

    .line 890
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 892
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->cacheRemovedTooltip:Lorg/telegram/ui/Components/UndoView;

    if-eqz v1, :cond_14

    .line 893
    sget v2, Lorg/telegram/messenger/R$string;->dialogs_empty_cache:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/UndoView;->setInfoText(Ljava/lang/CharSequence;)V

    .line 894
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->cacheRemovedTooltip:Lorg/telegram/ui/Components/UndoView;

    const-wide/16 v4, 0x0

    const/16 v6, 0x13

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_14
    return-void

    :cond_15
    if-eqz v3, :cond_19

    .line 901
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/CacheControlActivity;->sectionsEndRow:I

    .line 902
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v8}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    iget-boolean v5, v0, Lorg/telegram/ui/CacheControlActivity;->isUseAsBackend:Z

    if-eqz v5, :cond_16

    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-nez v5, :cond_16

    iget-boolean v5, v0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    if-nez v5, :cond_16

    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v5, :cond_16

    .line 905
    new-instance v5, Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    iput-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 906
    invoke-virtual {v5, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 907
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v6, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 908
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 910
    :cond_16
    iget-boolean v5, v0, Lorg/telegram/ui/CacheControlActivity;->isDiagramOnly:Z

    if-eqz v5, :cond_18

    .line 911
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    if-eqz v1, :cond_17

    .line 912
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_17
    return-void

    .line 917
    :cond_18
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/messenger/R$string;->StorageUsageInfo:I

    const-string v7, "StorageUsageInfo"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asInfo(Ljava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_19
    const/4 v5, -0x1

    .line 919
    iput v5, v0, Lorg/telegram/ui/CacheControlActivity;->sectionsEndRow:I

    .line 922
    :goto_5
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    sget v7, Lorg/telegram/messenger/R$string;->AutoDeleteCachedMedia:I

    const-string v8, "AutoDeleteCachedMedia"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-direct {v6, v8, v7, v9}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v6, v11, v1}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(II)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v5, v11, v12}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/4 v6, 0x2

    invoke-direct {v5, v11, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/4 v6, 0x3

    invoke-direct {v5, v11, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/messenger/R$string;->KeepMediaInfoPart:I

    const-string v6, "KeepMediaInfoPart"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asInfo(Ljava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    iget-wide v5, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-lez v1, :cond_1a

    .line 930
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    sget v6, Lorg/telegram/messenger/R$string;->MaxCacheSize:I

    const-string v7, "MaxCacheSize"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-direct {v5, v7, v6, v8}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v6, 0xe

    invoke-direct {v5, v6, v8}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILorg/telegram/ui/CacheControlActivity$1;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/messenger/R$string;->MaxCacheSizeInfo:I

    const-string v6, "MaxCacheSizeInfo"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asInfo(Ljava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    if-eqz v3, :cond_1b

    .line 935
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lorg/telegram/ui/Storage/CacheModel;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 936
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v5}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    if-eqz v1, :cond_1d

    if-eqz v2, :cond_1c

    .line 941
    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->oldItems:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_6

    .line 943
    :cond_1c
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 946
    :cond_1d
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    if-eqz v1, :cond_1e

    .line 947
    invoke-virtual {v1}, Lorg/telegram/ui/CachedMediaLayout;->update()V

    :cond_1e
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 14

    .line 1349
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1350
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 1351
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 1352
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 1353
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v4, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1354
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 1355
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 1356
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v4, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1357
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 1358
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->StorageUsage:I

    const-string v5, "StorageUsage"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1359
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/CacheControlActivity$2;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 1384
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 1385
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1386
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

    .line 1388
    new-instance v6, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v6, p1, v2, v2, v2}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    .line 1389
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v7, 0x3eb33333    # 0.35f

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x15e

    move-object v12, v4

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 1390
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v6, 0x12

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 1391
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string v6, "fonts/rmedium.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1392
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 1393
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

    .line 1395
    new-instance v7, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v7, p1, v2, v2, v2}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v7, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const v8, 0x3eb33333    # 0.35f

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x15e

    move-object v13, v4

    .line 1396
    invoke-virtual/range {v7 .. v13}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 1397
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v5, 0xe

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 1398
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 1399
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

    .line 1401
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    .line 1402
    invoke-virtual {v3, v2, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1403
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v3, v7, v1, v5, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1404
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1405
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    new-array v7, v2, [F

    const/high16 v8, 0x40c00000    # 6.0f

    aput v8, v7, v1

    invoke-static {v5, v7}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRectByKey(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1406
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1407
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1408
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->CacheClear:I

    const-string v6, "CacheClear"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1409
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1410
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

    .line 1412
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    .line 1413
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v6, Lorg/telegram/messenger/R$string;->ClearLocalDatabase:I

    const-string v7, "ClearLocalDatabase"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v0, v7, v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->clearDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1414
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    .line 1415
    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->clearDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 1416
    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->clearDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    const v10, 0x3df5c28f    # 0.12f

    invoke-static {v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 1418
    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    const-string v9, "Full Reset Database"

    .line 1419
    invoke-virtual {v0, v6, v3, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->resetDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1420
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    .line 1421
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->resetDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 1422
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->resetDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v3, v10}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 1424
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateDatabaseItemSize()V

    .line 1426
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/CacheControlActivity$ListAdapter;-><init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    .line 1428
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/CacheControlActivity$3;-><init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

    .line 1446
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 1448
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1450
    new-instance v3, Lorg/telegram/ui/CacheControlActivity$4;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/CacheControlActivity$4;-><init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1465
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1466
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1467
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v7

    div-int/2addr v7, v5

    add-int/2addr v6, v7

    invoke-virtual {v3, v1, v6, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1468
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5, p1, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1469
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, -0x1

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1470
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1471
    new-instance v2, Lorg/telegram/ui/CacheControlActivity$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$5;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    const-wide/16 v5, 0x15e

    .line 1477
    invoke-virtual {v2, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 1478
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1479
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 1480
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 1481
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1482
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 1517
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$6;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1531
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, -0x2

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1533
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

    .line 1534
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1535
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->setTargetListView(Landroid/view/View;)V

    .line 1536
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 1803
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didClearDatabase:I

    if-ne p1, p2, :cond_1

    .line 1805
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_0

    .line 1806
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1809
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 1811
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1812
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    if-eqz p1, :cond_1

    .line 1813
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabaseSize()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    .line 1815
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateDatabaseItemSize()V

    .line 1816
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    :cond_1
    return-void
.end method

.method public fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 16
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

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    if-nez p1, :cond_0

    return-void

    .line 700
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 704
    :cond_1
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_d

    aget-object v6, v3, v5

    .line 705
    sget-boolean v7, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v7, :cond_2

    return-void

    .line 708
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    move/from16 v7, p2

    .line 709
    invoke-virtual {v0, v6, v7, v1, v2}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    goto/16 :goto_4

    :cond_3
    move/from16 v7, p2

    .line 711
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".nomedia"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_4

    .line 714
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Lorg/telegram/messenger/FilePathDatabase;->getFileDialogId(Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    move-result-object v8

    .line 716
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".mp3"

    .line 717
    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, ".m4a"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_1

    :cond_5
    move v10, v7

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v10, 0x3

    .line 720
    :goto_2
    new-instance v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    invoke-direct {v11, v6}, Lorg/telegram/ui/Storage/CacheModel$FileInfo;-><init>(Ljava/io/File;)V

    .line 721
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    iput-wide v12, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    const-wide/16 v14, 0x0

    move v6, v10

    if-eqz v8, :cond_7

    .line 723
    iget-wide v9, v8, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->dialogId:J

    iput-wide v9, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    .line 724
    iget v9, v8, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageId:I

    iput v9, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->messageId:I

    .line 725
    iget v8, v8, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageType:I

    iput v8, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->messageType:I

    const/16 v9, 0x17

    if-ne v8, v9, :cond_7

    cmp-long v8, v12, v14

    if-lez v8, :cond_7

    const/4 v10, 0x7

    goto :goto_3

    :cond_7
    move v10, v6

    .line 731
    :goto_3
    iget-wide v8, v0, Lorg/telegram/ui/CacheControlActivity;->filterDialogId:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_8

    iget-wide v12, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    cmp-long v6, v12, v8

    if-eqz v6, :cond_8

    goto :goto_4

    .line 734
    :cond_8
    iget-boolean v6, v0, Lorg/telegram/ui/CacheControlActivity;->isArchivedChatsOnly:Z

    if-eqz v6, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v8, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    invoke-virtual {v6, v8, v9}, Lorg/telegram/messenger/MessagesController;->isArchivedDialog(J)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_4

    .line 738
    :cond_9
    iput v10, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->type:I

    .line 740
    iget-wide v8, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    .line 741
    invoke-virtual {v1, v8, v9, v6}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    if-nez v6, :cond_a

    .line 743
    new-instance v6, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    iget-wide v8, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    invoke-direct {v6, v8, v9}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;-><init>(J)V

    .line 744
    iget-wide v8, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    invoke-virtual {v1, v8, v9, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 746
    :cond_a
    invoke-virtual {v6, v11, v10}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->addFile(Lorg/telegram/ui/Storage/CacheModel$FileInfo;I)V

    :cond_b
    if-eqz v2, :cond_c

    const/4 v6, 0x6

    if-eq v10, v6, :cond_c

    .line 749
    invoke-virtual {v2, v10, v11}, Lorg/telegram/ui/Storage/CacheModel;->add(ILorg/telegram/ui/Storage/CacheModel$FileInfo;)V

    :cond_c
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2866
    new-instance v7, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda26;

    invoke-direct {v7, v0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    .line 2875
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2877
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

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2878
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2880
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v13, 0x0

    move-object v10, v1

    move/from16 v17, v20

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2881
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2882
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2883
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2884
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2886
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2888
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v6, v5, v3

    const-string v6, "textView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v22

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v20, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v21, v5

    move/from16 v26, v8

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2889
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v13, v4, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v2, v13, v3

    const-string v2, "valueTextView"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v14

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    const/4 v12, 0x0

    const/16 v17, 0x0

    move-object v10, v1

    move/from16 v18, v23

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2891
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v10, v4, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v11, v10, v3

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v24, v1

    move-object/from16 v25, v5

    move-object/from16 v27, v10

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2892
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v14, v3

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v15

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/4 v13, 0x0

    const/16 v18, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2893
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v10, v4, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v11, v10, v3

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v28

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v26, 0x0

    const/16 v31, 0x0

    move-object/from16 v24, v1

    move-object/from16 v25, v5

    move-object/from16 v27, v10

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2894
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/StorageUsageView;

    aput-object v5, v14, v3

    const-string v5, "paintFill"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v15

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_player_progressBackground:I

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2895
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v10, v4, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Components/StorageUsageView;

    aput-object v11, v10, v3

    const-string v11, "paintProgress"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v28

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_player_progress:I

    move-object/from16 v24, v1

    move-object/from16 v25, v5

    move-object/from16 v27, v10

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2896
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/StorageUsageView;

    aput-object v5, v14, v3

    const-string v5, "telegramCacheTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v15

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    move-object v11, v1

    move/from16 v19, v5

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2897
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v4, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Components/StorageUsageView;

    aput-object v12, v11, v3

    const-string v12, "freeSizeTextView"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v28

    move-object/from16 v24, v1

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move/from16 v32, v5

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2898
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v4, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Components/StorageUsageView;

    aput-object v12, v11, v3

    const-string v12, "calculationgTextView"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v28

    move-object/from16 v24, v1

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2900
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v15, v4, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v10, v15, v3

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    const/4 v14, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2901
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v4, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v12, v11, v3

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    const/16 v28, 0x0

    move-object/from16 v24, v1

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2902
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v4, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v12, v11, v3

    move-object/from16 v24, v1

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move/from16 v31, v5

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2904
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    const/16 v27, 0x0

    move-object/from16 v24, v1

    move-object/from16 v25, v10

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2905
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    new-array v13, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/CheckBoxCell;

    aput-object v5, v13, v3

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v14

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object v10, v1

    move/from16 v18, v8

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2906
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    new-array v10, v4, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/CheckBoxCell;

    aput-object v11, v10, v3

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v19

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v15, v1

    move-object/from16 v16, v5

    move-object/from16 v18, v10

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2907
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/CheckBoxCell;

    aput-object v10, v5, v3

    sget-object v28, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move-object/from16 v27, v5

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2908
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    new-array v13, v4, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Components/StorageDiagramView;

    aput-object v2, v13, v3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v1

    move/from16 v17, v8

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2910
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    new-array v13, v4, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    aput-object v2, v13, v3

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v14

    const/4 v11, 0x0

    const/16 v17, 0x0

    move-object v10, v1

    move/from16 v18, v8

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2911
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2913
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_blue:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2914
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_green:I

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2915
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_red:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2916
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_golden:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2917
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_lightblue:I

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2918
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_lightgreen:I

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2919
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_orange:I

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2920
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_indigo:I

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v9
.end method

.method public isLightStatusBar()Z
    .locals 2

    .line 1311
    iget-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->changeStatusBar:Z

    if-nez v0, :cond_0

    .line 1312
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v0

    return v0

    .line 1314
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

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

    .line 3321
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3322
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 3323
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

    .line 3326
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

    .line 3334
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3335
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->clearSelection()V

    .line 3336
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3337
    invoke-virtual {v0, v1}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    .line 3338
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/CachedMediaLayout;->updateVisibleRows()V

    :cond_0
    return v1

    .line 3342
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 3

    .line 409
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    const/4 v0, 0x0

    .line 410
    sput-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    .line 411
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didClearDatabase:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 412
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getDatabaseSize()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    .line 415
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/CacheControlActivity;->fragmentCreateTime:J

    .line 519
    invoke-direct {p0, v0}, Lorg/telegram/ui/CacheControlActivity;->updateRows(Z)V

    .line 520
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 958
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 959
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didClearDatabase:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 961
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    .line 962
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 968
    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v0, 0x1

    .line 969
    sput-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    move p2, p1

    .line 3125
    :goto_0
    array-length v0, p3

    if-ge p2, v0, :cond_1

    .line 3126
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

    .line 3131
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_2

    sget-object p1, Lorg/telegram/messenger/FilesMigrationService;->filesMigrationBottomSheet:Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;

    if-eqz p1, :cond_2

    .line 3132
    invoke-virtual {p1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;->migrateOldFolder()V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1794
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1795
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onTransitionAnimationProgress(ZF)V
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 1302
    iget-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->changeStatusBar:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1303
    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->changeStatusBar:Z

    .line 1304
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1306
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    return-void
.end method

.method public setCacheModel(Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 1

    .line 690
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0, p1}, Lorg/telegram/ui/CachedMediaLayout;->setCacheModel(Lorg/telegram/ui/Storage/CacheModel;)V

    :cond_0
    return-void
.end method

.method public showClearCacheArchive()V
    .locals 3

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->isArchivedChatsOnly:Z

    .line 178
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->frontendFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 179
    sget-object v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->frontendFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->frontendFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/DialogsActivity;

    if-eqz v1, :cond_0

    .line 182
    check-cast v0, Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheRemovedTooltip:Lorg/telegram/ui/Components/UndoView;

    .line 184
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/CacheControlActivity;->onFragmentCreate()Z

    return-void
.end method

.method public showClearCacheDialog(JLcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 0

    .line 165
    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->filterDialogId:J

    .line 166
    iput-object p3, p0, Lorg/telegram/ui/CacheControlActivity;->clearCallback:Lcom/iMe/fork/utils/Callbacks$Callback;

    .line 167
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->frontendFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 p3, 0x3

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 168
    sget-object p2, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda2;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 169
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->frontendFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 170
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->frontendFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p2, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz p2, :cond_0

    .line 171
    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheRemovedTooltip:Lorg/telegram/ui/Components/UndoView;

    .line 173
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/CacheControlActivity;->onFragmentCreate()Z

    return-void
.end method

.method public showDiagramBottomSheet(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->isDiagramOnly:Z

    .line 189
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 190
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->frontendFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 191
    sget-object v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->frontendFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 193
    invoke-virtual {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 194
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 195
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->frontendFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p1, Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_0

    .line 196
    check-cast p1, Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheRemovedTooltip:Lorg/telegram/ui/Components/UndoView;

    .line 198
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/CacheControlActivity;->onFragmentCreate()Z

    return-void
.end method
