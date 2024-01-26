.class public Lorg/telegram/ui/WallpapersListActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "WallpapersListActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/WallpapersListActivity$ListAdapter;,
        Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;,
        Lorg/telegram/ui/WallpapersListActivity$ColorCell;,
        Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;,
        Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;,
        Lorg/telegram/ui/WallpapersListActivity$EmojiWallpaper;
    }
.end annotation


# static fields
.field private static final defaultColorsDark:[[I

.field private static final defaultColorsLight:[[I

.field private static final searchColors:[I

.field private static final searchColorsNames:[Ljava/lang/String;

.field private static final searchColorsNamesR:[I


# instance fields
.field private actionModeViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private addedColorWallpaper:Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

.field private addedFileWallpaper:Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

.field private allWallPapers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private allWallPapersDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private catsWallpaper:Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

.field private colorFramePaint:Landroid/graphics/Paint;

.field private colorPaint:Landroid/graphics/Paint;

.field private columnsCount:I

.field private currentType:I

.field private final dialogId:J

.field private galleryHintRow:I

.field private galleryRow:I

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/WallpapersListActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private localDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private localWallPapers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;",
            ">;"
        }
    .end annotation
.end field

.field private patterns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private patternsDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private resetInfoRow:I

.field private resetRow:I

.field private resetSectionRow:I

.field private rowCount:I

.field private scrolling:Z

.field private searchAdapter:Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;

.field private searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private sectionRow:I

.field private selectedBackgroundBlurred:Z

.field private selectedBackgroundMotion:Z

.field private selectedBackgroundSlug:Ljava/lang/String;

.field private selectedColor:I

.field private selectedGradientColor1:I

.field private selectedGradientColor2:I

.field private selectedGradientColor3:I

.field private selectedGradientRotation:I

.field private selectedIntensity:F

.field private selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

.field private final selectedWallPapers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private setColorRow:I

.field private themeWallpaper:Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

.field private totalWallpaperRows:I

.field private updater:Lorg/telegram/ui/Components/WallpaperUpdater;

.field private uploadImageRow:I

.field private wallPaperStartRow:I

.field private wallPapers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$BiNv_QmbwVkN9nNahGgVNVNTIMk(Lorg/telegram/ui/WallpapersListActivity;Lorg/telegram/tgnet/TLRPC$WallPaper;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/WallpapersListActivity;->lambda$onItemClick$5(Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C6l1cXcnQSA7mjMvpbA-83ktUws(Lorg/telegram/ui/WallpapersListActivity;JLjava/lang/String;ZLjava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/WallpapersListActivity;->lambda$fillWallpapersWithCustom$9(JLjava/lang/String;ZLjava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$D_pAck2Z7YoAdrSKmAkYDmPscHA()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/WallpapersListActivity;->lambda$showAsSheet$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$ROk5LtzpY6Az9GBjSmCs9_tvdTQ(Lorg/telegram/ui/WallpapersListActivity;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/WallpapersListActivity;->lambda$loadWallpapers$7(Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$WkuCYEYPVO7Mjas8FRh87zxXi1c(Lorg/telegram/ui/WallpapersListActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/WallpapersListActivity;->lambda$createView$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XAspS349Ma-l8ACWFo9kqvnOG98(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/WallpapersListActivity;->lambda$createView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZW0sDZ7P7occjmvt3iXTmJJtas4(Lorg/telegram/ui/WallpapersListActivity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/WallpapersListActivity;->lambda$loadWallpapers$8(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l2b9221XouyKC2n8MPdq2_8l57g(Lorg/telegram/ui/WallpapersListActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/WallpapersListActivity;->lambda$createView$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lHcET2mxGVmOXMVhtpVlcy4PkGw(Lorg/telegram/ui/WallpapersListActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/WallpapersListActivity;->lambda$createView$4(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oboz0HCGjXJuxrc2SM-XsG7hX5I(Lorg/telegram/ui/WallpapersListActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/WallpapersListActivity;->lambda$createView$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 28

    const/16 v0, 0x24

    new-array v1, v0, [[I

    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 152
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    const/4 v6, 0x2

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v7, 0x3

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v10, 0x7

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v11, 0x8

    aput-object v3, v1, v11

    new-array v3, v5, [I

    const v12, -0x2c2016

    aput v12, v3, v4

    const/16 v12, 0x9

    aput-object v3, v1, v12

    new-array v3, v5, [I

    const v13, -0x5a3a25

    aput v13, v3, v4

    const/16 v13, 0xa

    aput-object v3, v1, v13

    new-array v3, v5, [I

    const v14, -0x906638

    aput v14, v3, v4

    const/16 v14, 0xb

    aput-object v3, v1, v14

    new-array v3, v5, [I

    const v15, -0x2d1c57

    aput v15, v3, v4

    const/16 v15, 0xc

    aput-object v3, v1, v15

    new-array v3, v5, [I

    const v16, -0x5b2b72

    aput v16, v3, v4

    const/16 v16, 0xd

    aput-object v3, v1, v16

    new-array v3, v5, [I

    const v17, -0x824492

    aput v17, v3, v4

    const/16 v17, 0xe

    aput-object v3, v1, v17

    new-array v3, v5, [I

    const v18, -0x192252

    aput v18, v3, v4

    const/16 v18, 0xf

    aput-object v3, v1, v18

    new-array v3, v5, [I

    const v19, -0x2a416f

    aput v19, v3, v4

    const/16 v19, 0x10

    aput-object v3, v1, v19

    new-array v3, v5, [I

    const v20, -0x345b87

    aput v20, v3, v4

    const/16 v20, 0x11

    aput-object v3, v1, v20

    new-array v3, v5, [I

    const v21, -0x143f47

    aput v21, v3, v4

    const/16 v21, 0x12

    aput-object v3, v1, v21

    new-array v3, v5, [I

    const v22, -0x1f5863

    aput v22, v3, v4

    const/16 v22, 0x13

    aput-object v3, v1, v22

    new-array v3, v5, [I

    const v23, -0x368790

    aput v23, v3, v4

    const/16 v23, 0x14

    aput-object v3, v1, v23

    new-array v3, v5, [I

    const v24, -0x144638

    aput v24, v3, v4

    const/16 v24, 0x15

    aput-object v3, v1, v24

    new-array v3, v5, [I

    const v24, -0x1f6249

    aput v24, v3, v4

    const/16 v24, 0x16

    aput-object v3, v1, v24

    new-array v3, v5, [I

    const v24, -0x2d8a6d

    aput v24, v3, v4

    const/16 v24, 0x17

    aput-object v3, v1, v24

    new-array v3, v5, [I

    const v24, -0x253d13

    aput v24, v3, v4

    const/16 v24, 0x18

    aput-object v3, v1, v24

    new-array v3, v5, [I

    const v24, -0x2c5a19

    aput v24, v3, v4

    const/16 v24, 0x19

    aput-object v3, v1, v24

    new-array v3, v5, [I

    const v24, -0x4a782e

    aput v24, v3, v4

    const/16 v24, 0x1a

    aput-object v3, v1, v24

    new-array v3, v5, [I

    const v24, -0x3d3d13

    aput v24, v3, v4

    const/16 v24, 0x1b

    aput-object v3, v1, v24

    new-array v3, v5, [I

    const v24, -0x5a5a19

    aput v24, v3, v4

    const/16 v24, 0x1c

    aput-object v3, v1, v24

    new-array v3, v5, [I

    const v24, -0x808030

    aput v24, v3, v4

    const/16 v24, 0x1d

    aput-object v3, v1, v24

    new-array v3, v5, [I

    const v24, -0x3d1d13

    aput v24, v3, v4

    const/16 v24, 0x1e

    aput-object v3, v1, v24

    new-array v3, v5, [I

    const v24, -0x5a2919

    aput v24, v3, v4

    const/16 v24, 0x1f

    aput-object v3, v1, v24

    new-array v3, v5, [I

    const v24, -0x804530

    aput v24, v3, v4

    const/16 v24, 0x20

    aput-object v3, v1, v24

    new-array v3, v5, [I

    const v24, -0x293d47

    aput v24, v3, v4

    const/16 v24, 0x21

    aput-object v3, v1, v24

    new-array v3, v5, [I

    const v24, -0x63777e

    aput v24, v3, v4

    const/16 v24, 0x22

    aput-object v3, v1, v24

    new-array v3, v5, [I

    const/high16 v24, -0x1000000

    aput v24, v3, v4

    const/16 v24, 0x23

    aput-object v3, v1, v24

    sput-object v1, Lorg/telegram/ui/WallpapersListActivity;->defaultColorsLight:[[I

    new-array v0, v0, [[I

    new-array v1, v2, [I

    .line 191
    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v6

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    new-array v1, v2, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v8

    new-array v1, v2, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v9

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v10

    new-array v1, v2, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v11

    new-array v1, v5, [I

    const v3, -0xe2d2c4

    aput v3, v1, v4

    aput-object v1, v0, v12

    new-array v1, v5, [I

    const v3, -0xeee4da

    aput v3, v1, v4

    aput-object v1, v0, v13

    new-array v1, v5, [I

    const v3, -0xf4ebe2

    aput v3, v1, v4

    aput-object v1, v0, v14

    new-array v1, v5, [I

    const v3, -0xe0c9e1

    aput v3, v1, v4

    aput-object v1, v0, v15

    new-array v1, v5, [I

    const v3, -0xece0eb

    aput v3, v1, v4

    aput-object v1, v0, v16

    new-array v1, v5, [I

    const v3, -0xf1e8f0

    aput v3, v1, v4

    aput-object v1, v0, v17

    new-array v1, v5, [I

    const v3, -0xd0d1d9

    aput v3, v1, v4

    aput-object v1, v0, v18

    new-array v1, v5, [I

    const v3, -0xd5d9e1

    aput v3, v1, v4

    aput-object v1, v0, v19

    new-array v1, v5, [I

    const v3, -0xe6e7e9

    aput v3, v1, v4

    aput-object v1, v0, v20

    new-array v1, v5, [I

    const v3, -0xbcd1d0

    aput v3, v1, v4

    aput-object v1, v0, v21

    new-array v1, v5, [I

    const v3, -0xd1e3e2

    aput v3, v1, v4

    aput-object v1, v0, v22

    new-array v1, v5, [I

    const v3, -0xe0ecec

    aput v3, v1, v4

    aput-object v1, v0, v23

    new-array v1, v5, [I

    const v3, -0xbcd1c4

    aput v3, v1, v4

    const/16 v3, 0x15

    aput-object v1, v0, v3

    new-array v1, v5, [I

    const v3, -0xd1e3d8

    aput v3, v1, v4

    const/16 v3, 0x16

    aput-object v1, v0, v3

    new-array v1, v5, [I

    const v3, -0xe0ece5

    aput v3, v1, v4

    const/16 v3, 0x17

    aput-object v1, v0, v3

    new-array v1, v5, [I

    const v3, -0xc3d1bd

    aput v3, v1, v4

    const/16 v3, 0x18

    aput-object v1, v0, v3

    new-array v1, v5, [I

    const v3, -0xd6e3d2

    aput v3, v1, v4

    const/16 v3, 0x19

    aput-object v1, v0, v3

    new-array v1, v5, [I

    const v3, -0xe2eddf

    aput v3, v1, v4

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    new-array v1, v5, [I

    const v3, -0xced1bd

    aput v3, v1, v4

    const/16 v3, 0x1b

    aput-object v1, v0, v3

    new-array v1, v5, [I

    const v3, -0xe1e3d2

    aput v3, v1, v4

    const/16 v3, 0x1c

    aput-object v1, v0, v3

    new-array v1, v5, [I

    const v3, -0xebeddf

    aput v3, v1, v4

    const/16 v3, 0x1d

    aput-object v1, v0, v3

    new-array v1, v5, [I

    const v3, -0xd0c0c1

    aput v3, v1, v4

    const/16 v3, 0x1e

    aput-object v1, v0, v3

    new-array v1, v5, [I

    const v3, -0xded2d0

    aput v3, v1, v4

    const/16 v3, 0x1f

    aput-object v1, v0, v3

    new-array v1, v5, [I

    const v3, -0xebe1e0

    aput v3, v1, v4

    const/16 v3, 0x20

    aput-object v1, v0, v3

    new-array v1, v5, [I

    const v3, -0xd8dadc

    aput v3, v1, v4

    const/16 v3, 0x21

    aput-object v1, v0, v3

    new-array v1, v5, [I

    const v3, -0xe6e8ea

    aput v3, v1, v4

    const/16 v3, 0x22

    aput-object v1, v0, v3

    new-array v1, v5, [I

    const/high16 v3, -0x1000000

    aput v3, v1, v4

    const/16 v3, 0x23

    aput-object v1, v0, v3

    sput-object v0, Lorg/telegram/ui/WallpapersListActivity;->defaultColorsDark:[[I

    new-array v0, v15, [I

    .line 230
    fill-array-data v0, :array_12

    sput-object v0, Lorg/telegram/ui/WallpapersListActivity;->searchColors:[I

    const-string v16, "Blue"

    const-string v17, "Red"

    const-string v18, "Orange"

    const-string v19, "Yellow"

    const-string v20, "Green"

    const-string v21, "Teal"

    const-string v22, "Purple"

    const-string v23, "Pink"

    const-string v24, "Brown"

    const-string v25, "Black"

    const-string v26, "Gray"

    const-string v27, "White"

    .line 245
    filled-new-array/range {v16 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/WallpapersListActivity;->searchColorsNames:[Ljava/lang/String;

    new-array v0, v15, [I

    .line 260
    sget v1, Lorg/telegram/messenger/R$string;->Blue:I

    aput v1, v0, v4

    sget v1, Lorg/telegram/messenger/R$string;->Red:I

    aput v1, v0, v5

    sget v1, Lorg/telegram/messenger/R$string;->Orange:I

    aput v1, v0, v6

    sget v1, Lorg/telegram/messenger/R$string;->Yellow:I

    aput v1, v0, v7

    sget v1, Lorg/telegram/messenger/R$string;->Green:I

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/R$string;->Teal:I

    aput v1, v0, v8

    sget v1, Lorg/telegram/messenger/R$string;->Purple:I

    aput v1, v0, v9

    sget v1, Lorg/telegram/messenger/R$string;->Pink:I

    aput v1, v0, v10

    sget v1, Lorg/telegram/messenger/R$string;->Brown:I

    aput v1, v0, v11

    sget v1, Lorg/telegram/messenger/R$string;->Black:I

    aput v1, v0, v12

    sget v1, Lorg/telegram/messenger/R$string;->Gray:I

    aput v1, v0, v13

    sget v1, Lorg/telegram/messenger/R$string;->White:I

    aput v1, v0, v14

    sput-object v0, Lorg/telegram/ui/WallpapersListActivity;->searchColorsNamesR:[I

    return-void

    :array_0
    .array-data 4
        -0x242245
        -0x945a79
        -0x2a2773
        -0x77477c
    .end array-data

    :array_1
    .array-data 4
        -0x723f15
        -0x462e16
        -0x394e11
        -0x142811
    .end array-data

    :array_2
    .array-data 4
        -0x684115
        -0x4e1616
        -0x394e11
        -0x104824
    .end array-data

    :array_3
    .array-data 4
        -0x75240e
        -0x777214
        -0x1c6016
        -0x986313
    .end array-data

    :array_4
    .array-data 4
        -0x4f3215
        -0x604f16
        -0x44152b
        -0x4d1c23
    .end array-data

    :array_5
    .array-data 4
        -0x251538
        -0x5d4b01
        -0x133401
        -0x461d01
    .end array-data

    :array_6
    .array-data 4
        -0x23146e
        -0x701e2a
        -0x985c0e
        -0x7a297b
    .end array-data

    :array_7
    .array-data 4
        -0x155c92
        -0xf1b7a
        -0xd6141
        -0x173f92
    .end array-data

    :array_8
    .array-data 4
        -0x3c4e
        -0x1d3f01
        -0x184e
        -0x73132
    .end array-data

    :array_9
    .array-data 4
        -0xe1caa9
        -0xeae5ca
        -0xe3bcae
        -0xd5babf
    .end array-data

    :array_a
    .array-data 4
        -0xe2ddc1
        -0xe2e7ce
        -0xe4d6bd
        -0xebe9cf
    .end array-data

    :array_b
    .array-data 4
        -0xdfcbc7
        -0xefdfd8
        -0xe2c3c6
        -0xe8d9cb
    .end array-data

    :array_c
    .array-data 4
        -0xe3d8cf
        -0xe5e3db
        -0xd8cfc5
        -0xe4e4df
    .end array-data

    :array_d
    .array-data 4
        -0xc5e3c6
        -0xdbe6c4
        -0xc6d1c2
        -0xe5e9ce
    .end array-data

    :array_e
    .array-data 4
        -0xd3dee5
        -0xbbccd6
        -0xdde6e1
        -0xc4d2ca
    .end array-data

    :array_f
    .array-data 4
        -0xe1caa9
        -0xe7dfca
        -0xe3bcae
        -0xe9d9c6
    .end array-data

    :array_10
    .array-data 4
        -0xeeedca
        -0xebbdb1
        -0xf4dccc
        -0xc4cea3
    .end array-data

    :array_11
    .array-data 4
        -0xd2b7ca
        -0xe8d4e7
        -0xc9bccf
        -0xefcdcf
    .end array-data

    :array_12
    .array-data 4
        -0xff8901
        -0x10000
        -0x7600
        -0x3600
        -0xff1bce
        -0xe05655
        -0x8cff56
        -0x6413b
        -0x8cbfdf
        -0x1000000
        -0xa3a7a1
        -0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 421
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/WallpapersListActivity;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 425
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->actionModeViews:Ljava/util/ArrayList;

    const/4 v0, 0x3

    .line 125
    iput v0, p0, Lorg/telegram/ui/WallpapersListActivity;->columnsCount:I

    const-string v0, ""

    .line 127
    iput-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->allWallPapers:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->allWallPapersDict:Ljava/util/HashMap;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->localDict:Ljava/util/HashMap;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->localWallPapers:Ljava/util/ArrayList;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->patterns:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->patternsDict:Ljava/util/HashMap;

    .line 146
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedWallPapers:Landroid/util/LongSparseArray;

    .line 426
    iput p1, p0, Lorg/telegram/ui/WallpapersListActivity;->currentType:I

    .line 427
    iput-wide p2, p0, Lorg/telegram/ui/WallpapersListActivity;->dialogId:J

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/WallpapersListActivity;)J
    .locals 2

    .line 88
    iget-wide v0, p0, Lorg/telegram/ui/WallpapersListActivity;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/WallpapersListActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/WallpapersListActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/WallpapersListActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/WallpapersListActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0

    .line 88
    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/WallpapersListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/WallpapersListActivity;->localWallPapers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/WallpapersListActivity;)Ljava/util/HashMap;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/WallpapersListActivity;->localDict:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/WallpapersListActivity;)Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/WallpapersListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 88
    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/WallpapersListActivity;Z)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lorg/telegram/ui/WallpapersListActivity;->loadWallpapers(Z)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/WallpapersListActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/WallpapersListActivity;)Landroid/util/LongSparseArray;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedWallPapers:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/WallpapersListActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/WallpapersListActivity;)Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/WallpapersListActivity;->searchAdapter:Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/WallpapersListActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/WallpapersListActivity;)Lorg/telegram/ui/WallpapersListActivity$ListAdapter;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/WallpapersListActivity;->listAdapter:Lorg/telegram/ui/WallpapersListActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/WallpapersListActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/WallpapersListActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/WallpapersListActivity;->resetInfoRow:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/WallpapersListActivity;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lorg/telegram/ui/WallpapersListActivity;->scrolling:Z

    return p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/WallpapersListActivity;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lorg/telegram/ui/WallpapersListActivity;->scrolling:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/WallpapersListActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/WallpapersListActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/WallpapersListActivity;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lorg/telegram/ui/WallpapersListActivity;->fixLayoutInternal()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/WallpapersListActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/WallpapersListActivity;)Landroid/graphics/Paint;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/WallpapersListActivity;->colorPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/WallpapersListActivity;)Landroid/graphics/Paint;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/WallpapersListActivity;->colorFramePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3300()[I
    .locals 1

    .line 88
    sget-object v0, Lorg/telegram/ui/WallpapersListActivity;->searchColors:[I

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/WallpapersListActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/WallpapersListActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/WallpapersListActivity;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lorg/telegram/ui/WallpapersListActivity;->updateRowsSelection()V

    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/WallpapersListActivity;->columnsCount:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/WallpapersListActivity;->currentType:I

    return p0
.end method

.method static synthetic access$4900()[Ljava/lang/String;
    .locals 1

    .line 88
    sget-object v0, Lorg/telegram/ui/WallpapersListActivity;->searchColorsNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/WallpapersListActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$5000()[I
    .locals 1

    .line 88
    sget-object v0, Lorg/telegram/ui/WallpapersListActivity;->searchColorsNamesR:[I

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/WallpapersListActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/WallpapersListActivity;->wallPaperStartRow:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/WallpapersListActivity;Lorg/telegram/ui/Cells/WallpaperCell;Ljava/lang/Object;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/WallpapersListActivity;->onItemClick(Lorg/telegram/ui/Cells/WallpaperCell;Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$5600(Lorg/telegram/ui/WallpapersListActivity;Lorg/telegram/ui/Cells/WallpaperCell;Ljava/lang/Object;I)Z
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/WallpapersListActivity;->onItemLongClick(Lorg/telegram/ui/Cells/WallpaperCell;Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/WallpapersListActivity;->uploadImageRow:I

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/WallpapersListActivity;->setColorRow:I

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/WallpapersListActivity;->resetRow:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/WallpapersListActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/WallpapersListActivity;->galleryRow:I

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/WallpapersListActivity;->galleryHintRow:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/WallpapersListActivity;->totalWallpaperRows:I

    return p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/WallpapersListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedColor:I

    return p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor1:I

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor2:I

    return p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor3:I

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientRotation:I

    return p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/WallpapersListActivity;)F
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedIntensity:F

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/WallpapersListActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/WallpapersListActivity;->sectionRow:I

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/WallpapersListActivity;->resetSectionRow:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/WallpapersListActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method public static fillDefaultColors(Ljava/util/ArrayList;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 449
    sget-object p1, Lorg/telegram/ui/WallpapersListActivity;->defaultColorsDark:[[I

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/telegram/ui/WallpapersListActivity;->defaultColorsLight:[[I

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    .line 450
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 451
    aget-object v2, p1, v1

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 452
    new-instance v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    aget-object v3, p1, v1

    aget v3, v3, v0

    const/16 v4, 0x2d

    const-string v5, "c"

    invoke-direct {v2, v5, v3, v0, v4}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;-><init>(Ljava/lang/String;III)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 454
    :cond_1
    new-instance v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    aget-object v4, p1, v1

    aget v8, v4, v0

    aget-object v4, p1, v1

    aget v9, v4, v3

    aget-object v3, p1, v1

    const/4 v4, 0x2

    aget v10, v3, v4

    aget-object v3, p1, v1

    const/4 v4, 0x3

    aget v11, v3, v4

    const-string v7, "c"

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private fillWallpapersWithCustom()V
    .locals 22

    move-object/from16 v7, p0

    .line 1204
    iget v0, v7, Lorg/telegram/ui/WallpapersListActivity;->currentType:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 1207
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    .line 1208
    iget-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->addedColorWallpaper:Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 1209
    iget-object v1, v7, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1210
    iput-object v8, v7, Lorg/telegram/ui/WallpapersListActivity;->addedColorWallpaper:Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 1212
    :cond_1
    iget-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->addedFileWallpaper:Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz v0, :cond_2

    .line 1213
    iget-object v1, v7, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1214
    iput-object v8, v7, Lorg/telegram/ui/WallpapersListActivity;->addedFileWallpaper:Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    .line 1216
    :cond_2
    iget-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->catsWallpaper:Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-nez v0, :cond_3

    .line 1217
    new-instance v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    const v3, -0x242245

    const v4, -0x945a79

    const v5, -0x2a2773

    const v6, -0x77477c

    const-string v2, "d"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->catsWallpaper:Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    const v1, 0x3eae147b    # 0.34f

    .line 1218
    iput v1, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->intensity:F

    goto :goto_0

    .line 1221
    :cond_3
    iget-object v1, v7, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1223
    :goto_0
    iget-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->themeWallpaper:Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz v0, :cond_4

    .line 1224
    iget-object v1, v7, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1227
    :cond_4
    iget-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x0

    move v1, v9

    :goto_1
    const v2, 0x3a83126f    # 0.001f

    const/high16 v3, 0x42c80000    # 100.0f

    const-string v10, "c"

    if-ge v1, v0, :cond_a

    .line 1228
    iget-object v4, v7, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1229
    instance-of v5, v4, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v5, :cond_7

    .line 1230
    check-cast v4, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 1231
    iget-object v5, v4, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 1232
    iget-object v6, v7, Lorg/telegram/ui/WallpapersListActivity;->allWallPapersDict:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-object v5, v4, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 1234
    :cond_5
    iget-object v5, v4, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v4, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v6, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_6
    iget v5, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedColor:I

    iget v6, v4, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->color:I

    if-ne v5, v6, :cond_9

    iget v5, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor1:I

    iget v6, v4, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor1:I

    if-ne v5, v6, :cond_9

    iget v6, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor2:I

    iget v11, v4, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor2:I

    if-ne v6, v11, :cond_9

    iget v6, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor3:I

    iget v11, v4, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor3:I

    if-ne v6, v11, :cond_9

    if-eqz v5, :cond_b

    iget v5, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientRotation:I

    iget v6, v4, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientRotation:I

    if-ne v5, v6, :cond_9

    goto/16 :goto_2

    .line 1243
    :cond_7
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v5, :cond_9

    .line 1244
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 1245
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v5, :cond_9

    iget-object v5, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedColor:I

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    .line 1246
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getWallpaperColor(I)I

    move-result v6

    if-ne v5, v6, :cond_9

    iget v5, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor1:I

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    .line 1247
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getWallpaperColor(I)I

    move-result v6

    if-ne v5, v6, :cond_9

    iget v5, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor2:I

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    .line 1248
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getWallpaperColor(I)I

    move-result v6

    if-ne v5, v6, :cond_9

    iget v5, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor3:I

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    .line 1249
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getWallpaperColor(I)I

    move-result v6

    if-ne v5, v6, :cond_9

    iget v5, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor1:I

    if-eqz v5, :cond_8

    iget v5, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientRotation:I

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    .line 1250
    invoke-static {v6, v9}, Lorg/telegram/messenger/AndroidUtilities;->getWallpaperRotation(IZ)I

    move-result v6

    if-ne v5, v6, :cond_9

    :cond_8
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 1251
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemeIntensity(F)F

    move-result v5

    iget v6, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedIntensity:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v2

    if-gtz v5, :cond_9

    goto :goto_2

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_a
    move-object v4, v8

    .line 1260
    :cond_b
    :goto_2
    instance-of v0, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v0, :cond_e

    .line 1261
    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 1262
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    .line 1263
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v1, :cond_d

    if-eqz v1, :cond_c

    iget v5, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedColor:I

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    .line 1264
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getWallpaperColor(I)I

    move-result v1

    if-ne v5, v1, :cond_d

    iget v1, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor1:I

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    .line 1265
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getWallpaperColor(I)I

    move-result v5

    if-ne v1, v5, :cond_d

    iget v1, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor2:I

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    .line 1266
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getWallpaperColor(I)I

    move-result v5

    if-ne v1, v5, :cond_d

    iget v1, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor3:I

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    .line 1267
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getWallpaperColor(I)I

    move-result v5

    if-ne v1, v5, :cond_d

    iget v1, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor1:I

    if-eqz v1, :cond_c

    iget v1, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor2:I

    if-nez v1, :cond_c

    iget v1, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientRotation:I

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    .line 1268
    invoke-static {v5, v9}, Lorg/telegram/messenger/AndroidUtilities;->getWallpaperRotation(IZ)I

    move-result v5

    if-eq v1, v5, :cond_c

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    .line 1269
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemeIntensity(F)F

    move-result v1

    iget v3, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedIntensity:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c

    goto :goto_3

    .line 1274
    :cond_c
    iget-object v1, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    move-object v2, v8

    goto :goto_4

    :cond_d
    :goto_3
    const-string v1, ""

    move-object v2, v0

    move-object v4, v8

    .line 1276
    :goto_4
    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    move-object v11, v2

    move-object v12, v4

    move-wide v3, v5

    move-object v5, v1

    goto :goto_6

    .line 1278
    :cond_e
    iget-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    .line 1279
    instance-of v1, v4, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v1, :cond_f

    move-object v1, v4

    check-cast v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-object v1, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->parentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v1, :cond_f

    .line 1280
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    goto :goto_5

    :cond_f
    const-wide/16 v1, 0x0

    :goto_5
    move-object v5, v0

    move-object v12, v4

    move-object v11, v8

    move-wide v3, v1

    .line 1285
    :goto_6
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v6

    .line 1287
    :try_start_0
    iget-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    new-instance v13, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda5;

    move-object v1, v13

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/WallpapersListActivity;JLjava/lang/String;Z)V

    invoke-static {v0, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 1344
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1346
    :goto_7
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasWallpaperFromTheme()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isThemeWallpaperPublic()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1347
    iget-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->themeWallpaper:Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-nez v0, :cond_10

    .line 1348
    new-instance v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    const-string v1, "t"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;-><init>(Ljava/lang/String;II)V

    iput-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->themeWallpaper:Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    .line 1350
    :cond_10
    iget-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    iget-object v1, v7, Lorg/telegram/ui/WallpapersListActivity;->themeWallpaper:Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    invoke-virtual {v0, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_8

    .line 1352
    :cond_11
    iput-object v8, v7, Lorg/telegram/ui/WallpapersListActivity;->themeWallpaper:Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    .line 1354
    :goto_8
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    .line 1355
    iget-object v1, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "d"

    if-nez v1, :cond_14

    iget-object v1, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    if-nez v12, :cond_12

    goto :goto_a

    :cond_12
    if-nez v12, :cond_19

    .line 1376
    iget v0, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedColor:I

    if-eqz v0, :cond_19

    iget-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1377
    iget v13, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor1:I

    if-eqz v13, :cond_13

    iget v14, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor2:I

    if-eqz v14, :cond_13

    iget v15, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor3:I

    if-eqz v15, :cond_13

    .line 1378
    new-instance v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-object v11, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    iget v12, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedColor:I

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->addedColorWallpaper:Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 1379
    iget v1, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientRotation:I

    iput v1, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientRotation:I

    goto :goto_9

    .line 1381
    :cond_13
    new-instance v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-object v1, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    iget v4, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedColor:I

    iget v5, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientRotation:I

    invoke-direct {v0, v1, v4, v13, v5}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;-><init>(Ljava/lang/String;III)V

    iput-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->addedColorWallpaper:Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 1383
    :goto_9
    iget-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    iget-object v1, v7, Lorg/telegram/ui/WallpapersListActivity;->addedColorWallpaper:Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    invoke-virtual {v0, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_d

    .line 1356
    :cond_14
    :goto_a
    iget-object v1, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget v14, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedColor:I

    if-eqz v14, :cond_15

    .line 1357
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    if-eqz v1, :cond_19

    .line 1358
    new-instance v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-object v13, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    iget v15, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor1:I

    iget v4, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor2:I

    iget v5, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor3:I

    iget v6, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientRotation:I

    iget v8, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedIntensity:F

    iget-boolean v10, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundMotion:Z

    new-instance v12, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v3

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->fileName:Ljava/lang/String;

    invoke-direct {v12, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v12

    move-object v12, v1

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v8

    move/from16 v20, v10

    move-object/from16 v21, v0

    invoke-direct/range {v12 .. v21}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;-><init>(Ljava/lang/String;IIIIIFZLjava/io/File;)V

    iput-object v1, v7, Lorg/telegram/ui/WallpapersListActivity;->addedColorWallpaper:Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 1359
    iput-object v11, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 1360
    iget-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    invoke-virtual {v0, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_d

    .line 1362
    :cond_15
    iget v12, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedColor:I

    if-eqz v12, :cond_17

    .line 1363
    iget v13, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor1:I

    if-eqz v13, :cond_16

    iget v14, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor2:I

    if-eqz v14, :cond_16

    .line 1364
    new-instance v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-object v11, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    iget v15, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor3:I

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->addedColorWallpaper:Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 1365
    iget v1, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientRotation:I

    iput v1, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientRotation:I

    goto :goto_b

    .line 1367
    :cond_16
    new-instance v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-object v1, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    iget v3, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientRotation:I

    invoke-direct {v0, v1, v12, v13, v3}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;-><init>(Ljava/lang/String;III)V

    iput-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->addedColorWallpaper:Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 1369
    :goto_b
    iget-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    iget-object v1, v7, Lorg/telegram/ui/WallpapersListActivity;->addedColorWallpaper:Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    invoke-virtual {v0, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_d

    .line 1371
    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    if-eqz v1, :cond_19

    iget-object v1, v7, Lorg/telegram/ui/WallpapersListActivity;->allWallPapersDict:Ljava/util/HashMap;

    iget-object v3, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1372
    new-instance v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    iget-object v3, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->fileName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v6

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->originalFileName:Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v3, v4, v5}, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    iput-object v1, v7, Lorg/telegram/ui/WallpapersListActivity;->addedFileWallpaper:Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    .line 1373
    iget-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    iget-object v3, v7, Lorg/telegram/ui/WallpapersListActivity;->themeWallpaper:Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    goto :goto_c

    :cond_18
    move v3, v9

    :goto_c
    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1385
    :cond_19
    :goto_d
    iget-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_e

    .line 1388
    :cond_1a
    iget-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    iget-object v1, v7, Lorg/telegram/ui/WallpapersListActivity;->catsWallpaper:Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_f

    .line 1386
    :cond_1b
    :goto_e
    iget-object v0, v7, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    iget-object v1, v7, Lorg/telegram/ui/WallpapersListActivity;->catsWallpaper:Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    invoke-virtual {v0, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1390
    :goto_f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/WallpapersListActivity;->updateRows()V

    return-void
.end method

.method private fixLayout()V
    .locals 2

    .line 1437
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    .line 1438
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1439
    new-instance v1, Lorg/telegram/ui/WallpapersListActivity$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/WallpapersListActivity$8;-><init>(Lorg/telegram/ui/WallpapersListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method private fixLayoutInternal()V
    .locals 3

    .line 1453
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1456
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1457
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1459
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    .line 1460
    iput v2, p0, Lorg/telegram/ui/WallpapersListActivity;->columnsCount:I

    goto :goto_1

    :cond_1
    if-eq v0, v2, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 1465
    :cond_2
    iput v2, p0, Lorg/telegram/ui/WallpapersListActivity;->columnsCount:I

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x5

    .line 1463
    iput v0, p0, Lorg/telegram/ui/WallpapersListActivity;->columnsCount:I

    .line 1468
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/WallpapersListActivity;->updateRows()V

    return-void
.end method

.method private getWallPaperSlug(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1019
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_0

    .line 1020
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    return-object p1

    .line 1021
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v0, :cond_1

    .line 1022
    check-cast p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-object p1, p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    return-object p1

    .line 1023
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz v0, :cond_2

    .line 1024
    check-cast p1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    iget-object p1, p1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->slug:Ljava/lang/String;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private static synthetic lambda$createView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$createView$1()V
    .locals 1

    const/4 v0, 0x0

    .line 795
    invoke-direct {p0, v0}, Lorg/telegram/ui/WallpapersListActivity;->loadWallpapers(Z)V

    return-void
.end method

.method private synthetic lambda$createView$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 795
    new-instance p1, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/WallpapersListActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 786
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 787
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedWallPapers:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->clear()V

    .line 788
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 789
    invoke-direct {p0}, Lorg/telegram/ui/WallpapersListActivity;->updateRowsSelection()V

    .line 791
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 p2, 0x0

    .line 792
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 793
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 794
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_account_resetWallPapers;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_account_resetWallPapers;-><init>()V

    .line 795
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/WallpapersListActivity;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;I)V
    .locals 1

    .line 772
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->searchAdapter:Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 775
    :cond_0
    iget p1, p0, Lorg/telegram/ui/WallpapersListActivity;->uploadImageRow:I

    if-ne p2, p1, :cond_1

    .line 776
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity;->updater:Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/WallpaperUpdater;->openGallery()V

    goto :goto_0

    .line 777
    :cond_1
    iget p1, p0, Lorg/telegram/ui/WallpapersListActivity;->setColorRow:I

    if-ne p2, p1, :cond_2

    .line 778
    new-instance p1, Lorg/telegram/ui/WallpapersListActivity;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lorg/telegram/ui/WallpapersListActivity;-><init>(I)V

    .line 779
    iget-object p2, p0, Lorg/telegram/ui/WallpapersListActivity;->patterns:Ljava/util/ArrayList;

    iput-object p2, p1, Lorg/telegram/ui/WallpapersListActivity;->patterns:Ljava/util/ArrayList;

    .line 780
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 781
    :cond_2
    iget p1, p0, Lorg/telegram/ui/WallpapersListActivity;->resetRow:I

    if-ne p2, p1, :cond_3

    .line 782
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 783
    sget p2, Lorg/telegram/messenger/R$string;->ResetChatBackgroundsAlertTitle:I

    const-string v0, "ResetChatBackgroundsAlertTitle"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 784
    sget p2, Lorg/telegram/messenger/R$string;->ResetChatBackgroundsAlert:I

    const-string v0, "ResetChatBackgroundsAlert"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 785
    sget p2, Lorg/telegram/messenger/R$string;->Reset:I

    const-string v0, "Reset"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/WallpapersListActivity;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 797
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v0, "Cancel"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 798
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 799
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p2, -0x1

    .line 800
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 802
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$fillWallpapersWithCustom$9(JLjava/lang/String;ZLjava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 1288
    instance-of v0, p5, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v0, :cond_0

    .line 1289
    check-cast p5, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-object p5, p5, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->parentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 1291
    :cond_0
    instance-of v0, p6, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v0, :cond_1

    .line 1292
    check-cast p6, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-object p6, p6, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->parentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 1294
    :cond_1
    instance-of v0, p5, Lorg/telegram/tgnet/TLRPC$WallPaper;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    instance-of v0, p6, Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v0, :cond_10

    .line 1295
    check-cast p5, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 1296
    check-cast p6, Lorg/telegram/tgnet/TLRPC$WallPaper;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_3

    .line 1298
    iget-wide v4, p5, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    cmp-long p3, v4, p1

    if-nez p3, :cond_2

    return v3

    .line 1300
    :cond_2
    iget-wide v4, p6, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    cmp-long p1, v4, p1

    if-nez p1, :cond_5

    return v2

    .line 1304
    :cond_3
    iget-object p1, p5, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v3

    .line 1306
    :cond_4
    iget-object p1, p6, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    if-nez p4, :cond_7

    .line 1311
    iget-object p1, p5, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    const-string p2, "qeZWES8rGVIEAAAARfWlK1lnfiI"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v3

    .line 1313
    :cond_6
    iget-object p1, p6, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v2

    .line 1317
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity;->allWallPapers:Ljava/util/ArrayList;

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1318
    iget-object p2, p0, Lorg/telegram/ui/WallpapersListActivity;->allWallPapers:Ljava/util/ArrayList;

    invoke-virtual {p2, p6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 1319
    iget-boolean p3, p5, Lorg/telegram/tgnet/TLRPC$WallPaper;->dark:Z

    if-eqz p3, :cond_8

    iget-boolean p5, p6, Lorg/telegram/tgnet/TLRPC$WallPaper;->dark:Z

    if-nez p5, :cond_9

    :cond_8
    if-nez p3, :cond_c

    iget-boolean p5, p6, Lorg/telegram/tgnet/TLRPC$WallPaper;->dark:Z

    if-nez p5, :cond_c

    :cond_9
    if-le p1, p2, :cond_a

    return v2

    :cond_a
    if-ge p1, p2, :cond_b

    return v3

    :cond_b
    return v1

    :cond_c
    if-eqz p3, :cond_e

    .line 1327
    iget-boolean p1, p6, Lorg/telegram/tgnet/TLRPC$WallPaper;->dark:Z

    if-nez p1, :cond_e

    if-eqz p4, :cond_d

    return v3

    :cond_d
    return v2

    :cond_e
    if-eqz p4, :cond_f

    return v2

    :cond_f
    return v3

    :cond_10
    return v1
.end method

.method private synthetic lambda$loadWallpapers$7(Lorg/telegram/tgnet/TLObject;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1145
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    .line 1146
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;

    .line 1147
    iget-object v2, v0, Lorg/telegram/ui/WallpapersListActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1148
    iget-object v2, v0, Lorg/telegram/ui/WallpapersListActivity;->patternsDict:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1149
    iget v2, v0, Lorg/telegram/ui/WallpapersListActivity;->currentType:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_0

    if-eq v2, v4, :cond_0

    .line 1150
    iget-object v2, v0, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1151
    iget-object v2, v0, Lorg/telegram/ui/WallpapersListActivity;->allWallPapersDict:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1152
    iget-object v2, v0, Lorg/telegram/ui/WallpapersListActivity;->allWallPapers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1153
    iget-object v2, v0, Lorg/telegram/ui/WallpapersListActivity;->allWallPapers:Ljava/util/ArrayList;

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1154
    iget-object v2, v0, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/WallpapersListActivity;->localWallPapers:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1156
    :cond_0
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v6, v3

    :goto_0
    if-ge v6, v2, :cond_a

    .line 1157
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 1158
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    const-string v9, "fqv01SQemVIBAAAApND8LDRUhRU"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_2

    .line 1161
    :cond_1
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v8, :cond_6

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-nez v8, :cond_6

    .line 1162
    iget-object v8, v0, Lorg/telegram/ui/WallpapersListActivity;->allWallPapersDict:Ljava/util/HashMap;

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v8, :cond_2

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v8, :cond_2

    iget-object v9, v0, Lorg/telegram/ui/WallpapersListActivity;->patternsDict:Ljava/util/HashMap;

    iget-wide v10, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1164
    iget-object v8, v0, Lorg/telegram/ui/WallpapersListActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    iget-object v8, v0, Lorg/telegram/ui/WallpapersListActivity;->patternsDict:Ljava/util/HashMap;

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    :cond_2
    iget v8, v0, Lorg/telegram/ui/WallpapersListActivity;->currentType:I

    if-eq v8, v5, :cond_9

    iget-boolean v9, v7, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v9, :cond_3

    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v10, :cond_9

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    if-eqz v10, :cond_9

    :cond_3
    if-ne v8, v4, :cond_4

    if-eqz v9, :cond_9

    .line 1168
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v8, :cond_5

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    if-gez v8, :cond_5

    goto :goto_2

    .line 1171
    :cond_5
    iget-object v8, v0, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1173
    :cond_6
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    if-eqz v8, :cond_9

    .line 1174
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v8, :cond_7

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    if-gez v8, :cond_7

    goto :goto_2

    .line 1178
    :cond_7
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v12, v8, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    if-eqz v12, :cond_8

    iget v13, v8, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    if-eqz v13, :cond_8

    .line 1179
    new-instance v15, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    const/4 v10, 0x0

    iget v11, v8, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    iget v14, v8, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;-><init>(Ljava/lang/String;IIII)V

    goto :goto_1

    .line 1181
    :cond_8
    new-instance v15, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    const/4 v9, 0x0

    iget v10, v8, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    invoke-direct {v15, v9, v10, v12, v8}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;-><init>(Ljava/lang/String;III)V

    .line 1183
    :goto_1
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    iput-object v8, v15, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    .line 1184
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    int-to-float v9, v9

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    iput v9, v15, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->intensity:F

    .line 1185
    iget v8, v8, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    invoke-static {v8, v3}, Lorg/telegram/messenger/AndroidUtilities;->getWallpaperRotation(IZ)I

    move-result v8

    iput v8, v15, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientRotation:I

    .line 1186
    iput-object v7, v15, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->parentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 1187
    iget-object v7, v0, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1190
    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/WallpapersListActivity;->fillWallpapersWithCustom()V

    .line 1191
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v5}, Lorg/telegram/messenger/MessagesStorage;->putWallpapers(Ljava/util/ArrayList;I)V

    .line 1193
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/WallpapersListActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v1, :cond_c

    .line 1194
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    if-nez p2, :cond_c

    .line 1196
    iget-object v1, v0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$loadWallpapers$8(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1144
    new-instance p3, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/WallpapersListActivity;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onItemClick$5(Lorg/telegram/tgnet/TLRPC$WallPaper;)V
    .locals 0

    .line 995
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    return-void
.end method

.method private static synthetic lambda$showAsSheet$6()V
    .locals 2

    .line 1012
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    return-void
.end method

.method private loadWallpapers(Z)V
    .locals 9

    const-wide/16 v0, 0x0

    if-nez p1, :cond_3

    const/4 v2, 0x0

    .line 1130
    iget-object v3, p0, Lorg/telegram/ui/WallpapersListActivity;->allWallPapers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-wide v4, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 1131
    iget-object v6, p0, Lorg/telegram/ui/WallpapersListActivity;->allWallPapers:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1132
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-nez v7, :cond_0

    goto :goto_1

    .line 1135
    :cond_0
    check-cast v6, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 1136
    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    cmp-long v8, v6, v0

    if-gez v8, :cond_1

    goto :goto_1

    .line 1139
    :cond_1
    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-wide v0, v4

    .line 1142
    :cond_3
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPapers;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPapers;-><init>()V

    .line 1143
    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPapers;->hash:J

    .line 1144
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/WallpapersListActivity;Z)V

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 1200
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void
.end method

.method private onItemClick(Lorg/telegram/ui/Cells/WallpaperCell;Ljava/lang/Object;I)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    .line 955
    iget-object v1, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_5

    .line 957
    instance-of v1, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v1, :cond_0

    .line 958
    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 959
    iget-object v1, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->parentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 961
    :goto_0
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-nez v3, :cond_1

    return-void

    .line 964
    :cond_1
    check-cast v1, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 965
    iget-object v3, v6, Lorg/telegram/ui/WallpapersListActivity;->selectedWallPapers:Landroid/util/LongSparseArray;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_2

    .line 966
    iget-object v0, v6, Lorg/telegram/ui/WallpapersListActivity;->selectedWallPapers:Landroid/util/LongSparseArray;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_1

    .line 968
    :cond_2
    iget-object v3, v6, Lorg/telegram/ui/WallpapersListActivity;->selectedWallPapers:Landroid/util/LongSparseArray;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    invoke-virtual {v3, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 970
    :goto_1
    iget-object v0, v6, Lorg/telegram/ui/WallpapersListActivity;->selectedWallPapers:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 971
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    goto :goto_2

    .line 973
    :cond_3
    iget-object v0, v6, Lorg/telegram/ui/WallpapersListActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    iget-object v3, v6, Lorg/telegram/ui/WallpapersListActivity;->selectedWallPapers:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    invoke-virtual {v0, v3, v7}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 975
    :goto_2
    iput-boolean v2, v6, Lorg/telegram/ui/WallpapersListActivity;->scrolling:Z

    .line 976
    iget-object v0, v6, Lorg/telegram/ui/WallpapersListActivity;->selectedWallPapers:Landroid/util/LongSparseArray;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_4

    move-object/from16 v0, p1

    move/from16 v1, p3

    move v2, v7

    goto :goto_3

    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, p3

    :goto_3
    invoke-virtual {v0, v1, v2, v7}, Lorg/telegram/ui/Cells/WallpaperCell;->setChecked(IZZ)V

    goto/16 :goto_4

    .line 978
    :cond_5
    invoke-direct {v6, v0}, Lorg/telegram/ui/WallpapersListActivity;->getWallPaperSlug(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 979
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v1, :cond_6

    .line 980
    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 981
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v3, :cond_6

    .line 982
    new-instance v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-object v10, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v11, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    iget v12, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    iget v13, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    iget v14, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->getWallpaperRotation(IZ)I

    move-result v15

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v16, v3, v4

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    const/16 v18, 0x0

    move-object v9, v0

    move/from16 v17, v2

    invoke-direct/range {v9 .. v18}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;-><init>(Ljava/lang/String;IIIIIFZLjava/io/File;)V

    .line 983
    iput-object v1, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 984
    iput-object v1, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->parentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    :cond_6
    move-object v2, v0

    .line 988
    new-instance v9, Lorg/telegram/ui/WallpapersListActivity$7;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/WallpapersListActivity$7;-><init>(Lorg/telegram/ui/WallpapersListActivity;Ljava/lang/Object;Landroid/graphics/Bitmap;ZZ)V

    .line 994
    iget v0, v6, Lorg/telegram/ui/WallpapersListActivity;->currentType:I

    if-eq v0, v7, :cond_7

    iget-wide v0, v6, Lorg/telegram/ui/WallpapersListActivity;->dialogId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    .line 995
    :cond_7
    new-instance v0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, v6}, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/WallpapersListActivity;)V

    invoke-virtual {v9, v0}, Lorg/telegram/ui/ThemePreviewActivity;->setDelegate(Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;)V

    .line 997
    :cond_8
    iget-object v0, v6, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 998
    iget-boolean v0, v6, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundBlurred:Z

    iget-boolean v1, v6, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundMotion:Z

    iget v2, v6, Lorg/telegram/ui/WallpapersListActivity;->selectedIntensity:F

    invoke-virtual {v9, v0, v1, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setInitialModes(ZZF)V

    .line 1000
    :cond_9
    iget-object v0, v6, Lorg/telegram/ui/WallpapersListActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Lorg/telegram/ui/ThemePreviewActivity;->setPatterns(Ljava/util/ArrayList;)V

    .line 1001
    iget-wide v0, v6, Lorg/telegram/ui/WallpapersListActivity;->dialogId:J

    invoke-virtual {v9, v0, v1}, Lorg/telegram/ui/ThemePreviewActivity;->setDialogId(J)V

    .line 1002
    invoke-direct {v6, v9}, Lorg/telegram/ui/WallpapersListActivity;->showAsSheet(Lorg/telegram/ui/ThemePreviewActivity;)V

    :goto_4
    return-void
.end method

.method private onItemLongClick(Lorg/telegram/ui/Cells/WallpaperCell;Ljava/lang/Object;I)Z
    .locals 8

    .line 923
    iget v0, p0, Lorg/telegram/ui/WallpapersListActivity;->currentType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto/16 :goto_2

    .line 927
    :cond_0
    instance-of v0, p2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v0, :cond_1

    .line 928
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 929
    iget-object v0, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->parentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 931
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_4

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-nez v3, :cond_2

    goto :goto_2

    .line 934
    :cond_2
    check-cast v0, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 935
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 936
    iget-object v3, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedWallPapers:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    invoke-virtual {v3, v4, v5, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 937
    iget-object p2, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, v2}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 938
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 939
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 940
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/WallpapersListActivity;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 941
    iget-object v5, p0, Lorg/telegram/ui/WallpapersListActivity;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 942
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 943
    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v1, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 945
    :cond_3
    invoke-virtual {p2, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v3, 0xfa

    .line 946
    invoke-virtual {p2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 947
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 948
    iput-boolean v2, p0, Lorg/telegram/ui/WallpapersListActivity;->scrolling:Z

    .line 949
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    .line 950
    invoke-virtual {p1, p3, v0, v0}, Lorg/telegram/ui/Cells/WallpaperCell;->setChecked(IZZ)V

    return v0

    :cond_4
    :goto_2
    return v2

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showAsSheet(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 3

    .line 1007
    new-instance v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v1, 0x1

    .line 1008
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    const/4 v2, 0x0

    .line 1009
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    .line 1010
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1011
    sget-object v2, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda4;

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->onOpenAnimationFinished:Ljava/lang/Runnable;

    .line 1014
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->occupyNavigationBar:Z

    .line 1015
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void
.end method

.method private updateRows()V
    .locals 5

    const/4 v0, 0x0

    .line 1394
    iput v0, p0, Lorg/telegram/ui/WallpapersListActivity;->rowCount:I

    .line 1395
    iget v1, p0, Lorg/telegram/ui/WallpapersListActivity;->currentType:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    add-int/2addr v1, v2

    .line 1396
    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/WallpapersListActivity;->uploadImageRow:I

    add-int/lit8 v0, v1, 0x1

    .line 1397
    iput v0, p0, Lorg/telegram/ui/WallpapersListActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->setColorRow:I

    add-int/lit8 v1, v0, 0x1

    .line 1398
    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/WallpapersListActivity;->sectionRow:I

    .line 1399
    iput v3, p0, Lorg/telegram/ui/WallpapersListActivity;->galleryRow:I

    .line 1400
    iput v3, p0, Lorg/telegram/ui/WallpapersListActivity;->galleryHintRow:I

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 1402
    iput v3, p0, Lorg/telegram/ui/WallpapersListActivity;->uploadImageRow:I

    .line 1403
    iput v3, p0, Lorg/telegram/ui/WallpapersListActivity;->setColorRow:I

    .line 1404
    iput v3, p0, Lorg/telegram/ui/WallpapersListActivity;->sectionRow:I

    const/4 v1, 0x0

    add-int/2addr v1, v2

    .line 1405
    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/WallpapersListActivity;->galleryRow:I

    add-int/lit8 v0, v1, 0x1

    .line 1406
    iput v0, p0, Lorg/telegram/ui/WallpapersListActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->galleryHintRow:I

    goto :goto_0

    .line 1408
    :cond_1
    iput v3, p0, Lorg/telegram/ui/WallpapersListActivity;->uploadImageRow:I

    .line 1409
    iput v3, p0, Lorg/telegram/ui/WallpapersListActivity;->setColorRow:I

    .line 1410
    iput v3, p0, Lorg/telegram/ui/WallpapersListActivity;->sectionRow:I

    .line 1411
    iput v3, p0, Lorg/telegram/ui/WallpapersListActivity;->galleryRow:I

    .line 1412
    iput v3, p0, Lorg/telegram/ui/WallpapersListActivity;->galleryHintRow:I

    .line 1414
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1415
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/WallpapersListActivity;->columnsCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/WallpapersListActivity;->totalWallpaperRows:I

    .line 1416
    iget v1, p0, Lorg/telegram/ui/WallpapersListActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->wallPaperStartRow:I

    add-int/2addr v1, v0

    .line 1417
    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->rowCount:I

    goto :goto_1

    .line 1419
    :cond_2
    iput v3, p0, Lorg/telegram/ui/WallpapersListActivity;->wallPaperStartRow:I

    .line 1421
    :goto_1
    iget v0, p0, Lorg/telegram/ui/WallpapersListActivity;->currentType:I

    if-nez v0, :cond_3

    .line 1422
    iget v0, p0, Lorg/telegram/ui/WallpapersListActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/WallpapersListActivity;->resetSectionRow:I

    add-int/lit8 v0, v1, 0x1

    .line 1423
    iput v0, p0, Lorg/telegram/ui/WallpapersListActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->resetRow:I

    add-int/lit8 v1, v0, 0x1

    .line 1424
    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/WallpapersListActivity;->resetInfoRow:I

    goto :goto_2

    .line 1426
    :cond_3
    iput v3, p0, Lorg/telegram/ui/WallpapersListActivity;->resetSectionRow:I

    .line 1427
    iput v3, p0, Lorg/telegram/ui/WallpapersListActivity;->resetRow:I

    .line 1428
    iput v3, p0, Lorg/telegram/ui/WallpapersListActivity;->resetInfoRow:I

    .line 1430
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->listAdapter:Lorg/telegram/ui/WallpapersListActivity$ListAdapter;

    if-eqz v0, :cond_4

    .line 1431
    iput-boolean v2, p0, Lorg/telegram/ui/WallpapersListActivity;->scrolling:Z

    .line 1432
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method private updateRowsSelection()V
    .locals 6

    .line 1031
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1033
    iget-object v3, p0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1034
    instance-of v4, v3, Lorg/telegram/ui/Cells/WallpaperCell;

    if-eqz v4, :cond_0

    .line 1035
    check-cast v3, Lorg/telegram/ui/Cells/WallpaperCell;

    move v4, v1

    :goto_1
    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    const/4 v5, 0x1

    .line 1037
    invoke-virtual {v3, v4, v1, v5}, Lorg/telegram/ui/Cells/WallpaperCell;->setChecked(IZZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 12

    .line 475
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->colorPaint:Landroid/graphics/Paint;

    .line 476
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->colorFramePaint:Landroid/graphics/Paint;

    .line 477
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->colorFramePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->colorFramePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x33000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 481
    new-instance v0, Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/WallpapersListActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/WallpapersListActivity$1;-><init>(Lorg/telegram/ui/WallpapersListActivity;)V

    invoke-direct {v0, v2, p0, v3}, Lorg/telegram/ui/Components/WallpaperUpdater;-><init>(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;)V

    iput-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->updater:Lorg/telegram/ui/Components/WallpaperUpdater;

    .line 498
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    .line 499
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 500
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 501
    iget v0, p0, Lorg/telegram/ui/WallpapersListActivity;->currentType:I

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->ChatBackground:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 504
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "Channel Wallpaper"

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->SelectColorTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 508
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/WallpapersListActivity$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/WallpapersListActivity$2;-><init>(Lorg/telegram/ui/WallpapersListActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 667
    iget v0, p0, Lorg/telegram/ui/WallpapersListActivity;->currentType:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 668
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 669
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/WallpapersListActivity$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/WallpapersListActivity$3;-><init>(Lorg/telegram/ui/WallpapersListActivity;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 696
    sget v4, Lorg/telegram/messenger/R$string;->SearchBackgrounds:I

    const-string v5, "SearchBackgrounds"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 698
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode(ZLjava/lang/String;)Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 699
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 700
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 701
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 703
    new-instance v4, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v6, 0x12

    .line 704
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 705
    iget-object v4, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string v6, "fonts/rmedium.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 706
    iget-object v4, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 707
    iget-object v4, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget-object v5, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda1;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 708
    iget-object v4, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, 0x41

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 710
    iget-object v4, p0, Lorg/telegram/ui/WallpapersListActivity;->actionModeViews:Ljava/util/ArrayList;

    const/4 v5, 0x3

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_forward:I

    const/16 v7, 0x36

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sget v9, Lorg/telegram/messenger/R$string;->Forward:I

    const-string v10, "Forward"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v5, v6, v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    iget-object v4, p0, Lorg/telegram/ui/WallpapersListActivity;->actionModeViews:Ljava/util/ArrayList;

    const/4 v5, 0x4

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sget v8, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v9, "Delete"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v5, v6, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedWallPapers:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 716
    :cond_3
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 718
    check-cast v0, Landroid/widget/FrameLayout;

    .line 720
    new-instance v4, Lorg/telegram/ui/WallpapersListActivity$4;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/WallpapersListActivity$4;-><init>(Lorg/telegram/ui/WallpapersListActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 756
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 757
    iget-object v4, p0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 758
    iget-object v4, p0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 759
    iget-object v4, p0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 760
    iget-object v4, p0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 761
    iget-object v2, p0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/WallpapersListActivity$5;

    invoke-direct {v4, p0, p1, v1, v3}, Lorg/telegram/ui/WallpapersListActivity$5;-><init>(Lorg/telegram/ui/WallpapersListActivity;Landroid/content/Context;IZ)V

    iput-object v4, p0, Lorg/telegram/ui/WallpapersListActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 767
    iget-object v2, p0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x33

    const/4 v4, -0x1

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    iget-object v2, p0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;-><init>(Lorg/telegram/ui/WallpapersListActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/WallpapersListActivity;->listAdapter:Lorg/telegram/ui/WallpapersListActivity$ListAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 769
    new-instance v2, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;-><init>(Lorg/telegram/ui/WallpapersListActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/WallpapersListActivity;->searchAdapter:Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;

    .line 770
    iget-object v2, p0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundActionBarBlue:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 771
    iget-object v2, p0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/WallpapersListActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 807
    iget-object v2, p0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/WallpapersListActivity$6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/WallpapersListActivity$6;-><init>(Lorg/telegram/ui/WallpapersListActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 831
    new-instance v2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/WallpapersListActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 p1, 0x8

    .line 832
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 833
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    .line 834
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 835
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v1, Lorg/telegram/messenger/R$string;->NoResult:I

    const-string v2, "NoResult"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 836
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/WallpapersListActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 837
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 839
    invoke-direct {p0}, Lorg/telegram/ui/WallpapersListActivity;->updateRows()V

    .line 841
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1046
    sget v2, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoad:I

    if-ne v1, v2, :cond_10

    const/4 v1, 0x0

    .line 1047
    aget-object v2, p3, v1

    check-cast v2, Ljava/util/ArrayList;

    .line 1048
    iget-object v3, v0, Lorg/telegram/ui/WallpapersListActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1049
    iget-object v3, v0, Lorg/telegram/ui/WallpapersListActivity;->patternsDict:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1050
    iget v3, v0, Lorg/telegram/ui/WallpapersListActivity;->currentType:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    if-eq v3, v4, :cond_0

    .line 1051
    iget-object v3, v0, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1052
    iget-object v3, v0, Lorg/telegram/ui/WallpapersListActivity;->localWallPapers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1053
    iget-object v3, v0, Lorg/telegram/ui/WallpapersListActivity;->localDict:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1054
    iget-object v3, v0, Lorg/telegram/ui/WallpapersListActivity;->allWallPapers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1055
    iget-object v3, v0, Lorg/telegram/ui/WallpapersListActivity;->allWallPapersDict:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1056
    iget-object v3, v0, Lorg/telegram/ui/WallpapersListActivity;->allWallPapers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1059
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x0

    move v7, v1

    move-object v8, v6

    :goto_0
    const-wide/16 v9, 0x0

    if-ge v7, v3, :cond_d

    .line 1060
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 1061
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    const-string v13, "fqv01SQemVIBAAAApND8LDRUhRU"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto/16 :goto_2

    .line 1064
    :cond_1
    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v12, :cond_6

    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v13, v12, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-nez v13, :cond_6

    .line 1065
    iget-boolean v9, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v9, :cond_2

    if-eqz v12, :cond_2

    iget-object v9, v0, Lorg/telegram/ui/WallpapersListActivity;->patternsDict:Ljava/util/HashMap;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1066
    iget-object v9, v0, Lorg/telegram/ui/WallpapersListActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1067
    iget-object v9, v0, Lorg/telegram/ui/WallpapersListActivity;->patternsDict:Ljava/util/HashMap;

    iget-object v10, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v12, v10, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    :cond_2
    iget-object v9, v0, Lorg/telegram/ui/WallpapersListActivity;->allWallPapersDict:Ljava/util/HashMap;

    iget-object v10, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    iget v9, v0, Lorg/telegram/ui/WallpapersListActivity;->currentType:I

    if-eq v9, v5, :cond_c

    iget-boolean v10, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v10, :cond_3

    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v12, :cond_c

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    if-eqz v12, :cond_c

    :cond_3
    if-ne v9, v4, :cond_4

    if-eqz v10, :cond_c

    .line 1071
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v9, :cond_5

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    if-gez v9, :cond_5

    goto/16 :goto_2

    .line 1074
    :cond_5
    iget-object v9, v0, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1076
    :cond_6
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v15, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    if-eqz v15, :cond_c

    .line 1078
    iget v14, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    if-eqz v14, :cond_7

    iget v13, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    if-eqz v13, :cond_7

    .line 1079
    new-instance v19, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    const/16 v16, 0x0

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    move/from16 v17, v13

    move-object/from16 v13, v19

    move/from16 p1, v14

    move-object/from16 v14, v16

    move/from16 v16, p1

    move/from16 v18, v12

    invoke-direct/range {v13 .. v18}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;-><init>(Ljava/lang/String;IIII)V

    goto :goto_1

    :cond_7
    move/from16 p1, v14

    .line 1081
    new-instance v13, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    move/from16 v14, p1

    invoke-direct {v13, v6, v15, v14, v12}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;-><init>(Ljava/lang/String;III)V

    .line 1083
    :goto_1
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    iput-object v12, v13, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    .line 1084
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v14, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    int-to-float v14, v14

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v14, v15

    iput v14, v13, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->intensity:F

    .line 1085
    iget v12, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    invoke-static {v12, v1}, Lorg/telegram/messenger/AndroidUtilities;->getWallpaperRotation(IZ)I

    move-result v12

    iput v12, v13, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientRotation:I

    .line 1086
    iput-object v11, v13, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->parentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 1087
    iget-wide v14, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    cmp-long v9, v14, v9

    if-gez v9, :cond_a

    .line 1088
    invoke-virtual {v13}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->getHash()Ljava/lang/String;

    move-result-object v9

    .line 1089
    iget-object v10, v0, Lorg/telegram/ui/WallpapersListActivity;->localDict:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    if-nez v8, :cond_8

    .line 1091
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1093
    :cond_8
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1096
    :cond_9
    iget-object v10, v0, Lorg/telegram/ui/WallpapersListActivity;->localWallPapers:Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    iget-object v10, v0, Lorg/telegram/ui/WallpapersListActivity;->localDict:Ljava/util/HashMap;

    invoke-virtual {v10, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    :cond_a
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v9, :cond_b

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    if-gez v9, :cond_b

    goto :goto_2

    .line 1102
    :cond_b
    iget-object v9, v0, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_d
    if-eqz v8, :cond_e

    .line 1106
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_3
    if-ge v3, v2, :cond_e

    .line 1107
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->deleteWallpaper(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1110
    :cond_e
    iget-wide v2, v0, Lorg/telegram/ui/WallpapersListActivity;->dialogId:J

    cmp-long v2, v2, v9

    if-nez v2, :cond_f

    .line 1111
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getSelectedBackgroundSlug()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    .line 1113
    :cond_f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/WallpapersListActivity;->fillWallpapersWithCustom()V

    .line 1114
    invoke-direct {v0, v1}, Lorg/telegram/ui/WallpapersListActivity;->loadWallpapers(Z)V

    goto :goto_4

    .line 1115
    :cond_10
    sget v2, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    if-ne v1, v2, :cond_12

    .line 1116
    iget-object v1, v0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_11

    .line 1117
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1119
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v1, :cond_13

    .line 1120
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    goto :goto_4

    .line 1122
    :cond_12
    sget v2, Lorg/telegram/messenger/NotificationCenter;->wallpapersNeedReload:I

    if-ne v1, v2, :cond_13

    .line 1123
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getWallpapers()V

    :cond_13
    :goto_4
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2010
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2012
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    move/from16 v9, v18

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2013
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v26, v12

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2015
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    move/from16 v11, v26

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2016
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2017
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2018
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2019
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2021
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2023
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v13, 0x0

    aput-object v4, v7, v13

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object v4, v2

    move/from16 v11, v26

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2024
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int/2addr v6, v4

    new-array v7, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v4, v7, v13

    move-object v4, v2

    move v11, v12

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2025
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v5, v13

    const-string v14, "textView"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v31

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/16 v29, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v27, v2

    move-object/from16 v28, v4

    move-object/from16 v30, v5

    invoke-direct/range {v27 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2027
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v6, v5, v13

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2028
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int/2addr v6, v4

    new-array v7, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v4, v7, v13

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2030
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCell;

    aput-object v6, v5, v13

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v23

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v21, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2031
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCell;

    aput-object v6, v5, v13

    const-string v6, "valueTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v32

    sget v36, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    const/16 v30, 0x0

    const/16 v35, 0x0

    move-object/from16 v28, v2

    move-object/from16 v29, v4

    move-object/from16 v31, v5

    invoke-direct/range {v28 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2032
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCell;

    aput-object v6, v5, v13

    const-string v6, "imageView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v23

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2034
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v6, v5, v13

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v32

    sget v36, Lorg/telegram/ui/ActionBar/Theme;->key_graySectionText:I

    move-object/from16 v28, v2

    move-object/from16 v29, v4

    move-object/from16 v31, v5

    invoke-direct/range {v28 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2035
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/WallpapersListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v3, v13

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    const/16 v23, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v22, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2037
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/WallpapersListActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    const/4 v11, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2038
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/WallpapersListActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    const/16 v22, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2039
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/WallpapersListActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->updater:Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/WallpaperUpdater;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 900
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 901
    invoke-direct {p0}, Lorg/telegram/ui/WallpapersListActivity;->fixLayout()V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 432
    iget v0, p0, Lorg/telegram/ui/WallpapersListActivity;->currentType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->wallPapers:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/WallpapersListActivity;->fillDefaultColors(Ljava/util/ArrayList;Z)V

    .line 439
    iget v0, p0, Lorg/telegram/ui/WallpapersListActivity;->currentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 441
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getWallpapers()V

    goto :goto_1

    .line 433
    :cond_1
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 434
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 435
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 436
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getWallpapers()V

    .line 444
    :cond_2
    :goto_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 461
    iget v0, p0, Lorg/telegram/ui/WallpapersListActivity;->currentType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 467
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_1

    .line 462
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->searchAdapter:Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->onDestroy()V

    .line 463
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 464
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 465
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 469
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->updater:Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WallpaperUpdater;->cleanup()V

    .line 470
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 846
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 847
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    .line 848
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    .line 849
    iget-wide v1, p0, Lorg/telegram/ui/WallpapersListActivity;->dialogId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 850
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/WallpapersListActivity;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 851
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v0, :cond_5

    .line 852
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 854
    iput-object v2, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    .line 856
    :cond_0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v0, :cond_5

    .line 857
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedColor:I

    .line 858
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor1:I

    .line 859
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor2:I

    .line 860
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor3:I

    .line 861
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientRotation:I

    .line 862
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedIntensity:F

    .line 863
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    iput-boolean v1, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundMotion:Z

    .line 864
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->blur:Z

    iput-boolean v0, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundBlurred:Z

    goto :goto_1

    .line 868
    :cond_1
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    if-eqz v0, :cond_3

    .line 870
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 872
    iput-object v2, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    .line 874
    :cond_2
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->color:I

    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedColor:I

    .line 875
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor1:I

    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor1:I

    .line 876
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor2:I

    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor2:I

    .line 877
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor3:I

    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor3:I

    .line 878
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->rotation:I

    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientRotation:I

    .line 879
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->intensity:F

    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedIntensity:F

    .line 880
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isMotion:Z

    iput-boolean v1, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundMotion:Z

    .line 881
    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isBlurred:Z

    iput-boolean v0, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundBlurred:Z

    goto :goto_1

    .line 883
    :cond_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasWallpaperFromTheme()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "t"

    goto :goto_0

    :cond_4
    const-string v0, "d"

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundSlug:Ljava/lang/String;

    const/4 v0, 0x0

    .line 884
    iput v0, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedColor:I

    .line 885
    iput v0, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor1:I

    .line 886
    iput v0, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor2:I

    .line 887
    iput v0, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientColor3:I

    const/16 v1, 0x2d

    .line 888
    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedGradientRotation:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 889
    iput v1, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedIntensity:F

    .line 890
    iput-boolean v0, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundMotion:Z

    .line 891
    iput-boolean v0, p0, Lorg/telegram/ui/WallpapersListActivity;->selectedBackgroundBlurred:Z

    .line 894
    :cond_5
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/WallpapersListActivity;->fillWallpapersWithCustom()V

    .line 895
    invoke-direct {p0}, Lorg/telegram/ui/WallpapersListActivity;->fixLayout()V

    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .locals 2

    .line 919
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->updater:Lorg/telegram/ui/Components/WallpaperUpdater;

    const-string v1, "path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/WallpaperUpdater;->setCurrentPicturePath(Ljava/lang/String;)V

    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 2

    .line 911
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity;->updater:Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WallpaperUpdater;->getCurrentPicturePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "path"

    .line 913
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
