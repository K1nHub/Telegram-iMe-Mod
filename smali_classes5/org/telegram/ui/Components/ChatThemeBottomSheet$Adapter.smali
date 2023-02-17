.class public Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ChatThemeBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatThemeBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final currentAccount:I

.field private final currentViewType:I

.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;",
            ">;"
        }
    .end annotation
.end field

.field private loadingThemes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private loadingWallpapers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectedItemPosition:I

.field private selectedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/telegram/ui/Components/ThemeSmallPreviewView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$C63WpGlrxaMTjoVnbGLuuOGCg70(Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->lambda$parseTheme$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O1DkC9pBBGaYIEjzdwvHJhZm3Fc(Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->lambda$parseTheme$1(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 1

    .line 681
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 674
    iput v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->selectedItemPosition:I

    .line 678
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->loadingThemes:Ljava/util/HashMap;

    .line 679
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->loadingWallpapers:Ljava/util/HashMap;

    .line 682
    iput p3, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->currentViewType:I

    .line 683
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 684
    iput p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->currentAccount:I

    return-void
.end method

.method private synthetic lambda$parseTheme$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 3

    .line 859
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 860
    check-cast p1, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 861
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    .line 862
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->loadingThemes:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 863
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->loadingThemes:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    iget p2, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->account:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {p2, v0, p1, v1, v1}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    goto :goto_0

    .line 867
    :cond_0
    iput-boolean v1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->badWallpaper:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$parseTheme$1(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 858
    new-instance p3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private parseTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)Z
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "chat_inBubble"

    if-eqz v2, :cond_1c

    .line 722
    iget-object v4, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-nez v4, :cond_0

    goto/16 :goto_10

    .line 726
    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v5, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 727
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 732
    :goto_0
    :try_start_1
    sget-object v8, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->bytes:[B

    invoke-virtual {v6, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_18

    move v12, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v8, :cond_16

    .line 736
    sget-object v13, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->bytes:[B

    aget-byte v14, v13, v10

    const/16 v15, 0xa

    if-ne v14, v15, :cond_15

    sub-int v14, v10, v11

    add-int/2addr v14, v5

    .line 739
    new-instance v15, Ljava/lang/String;

    add-int/lit8 v9, v14, -0x1

    const-string v3, "UTF-8"

    invoke-direct {v15, v13, v11, v9, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string v3, "WLS="

    .line 740
    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v9, 0x4

    if-eqz v3, :cond_8

    .line 741
    :try_start_2
    invoke-virtual {v15, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 742
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string/jumbo v13, "slug"

    .line 743
    invoke-virtual {v9, v13}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->slug:Ljava/lang/String;

    .line 744
    new-instance v13, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".wp"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v15, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToWallpaper:Ljava/lang/String;

    const-string v3, "mode"

    .line 746
    invoke-virtual {v9, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 748
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, " "

    .line 749
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 750
    array-length v5, v3

    if-lez v5, :cond_2

    const/4 v5, 0x0

    .line 751
    :goto_2
    array-length v13, v3

    if-ge v5, v13, :cond_2

    const-string v13, "blur"

    .line 752
    aget-object v15, v3, v5

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    .line 753
    iput-boolean v13, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isBlured:Z

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    const-string v3, "pattern"

    .line 759
    invoke-virtual {v9, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 760
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_13

    :try_start_3
    const-string v3, "bg_color"

    .line 762
    invoke-virtual {v9, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 763
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x6

    const/4 v13, 0x0

    .line 764
    invoke-virtual {v3, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/16 v13, 0x10

    invoke-static {v15, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    const/high16 v16, -0x1000000

    or-int v15, v15, v16

    iput v15, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgColor:I

    .line 765
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v13, 0xd

    if-lt v15, v13, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->isValidWallChar(C)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x7

    .line 766
    invoke-virtual {v3, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x10

    invoke-static {v5, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    or-int v5, v5, v16

    iput v5, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor1:I

    .line 768
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v15, 0x14

    if-lt v5, v15, :cond_4

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->isValidWallChar(C)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0xe

    .line 769
    invoke-virtual {v3, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v13, 0x10

    invoke-static {v5, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    or-int v5, v5, v16

    iput v5, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor2:I

    .line 771
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v13, 0x1b

    if-ne v5, v13, :cond_5

    invoke-virtual {v3, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->isValidWallChar(C)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x15

    .line 772
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    or-int v3, v3, v16

    iput v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor3:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    :cond_5
    :try_start_4
    const-string/jumbo v3, "rotation"

    .line 779
    invoke-virtual {v9, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 780
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 781
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientRotation:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    :cond_6
    :try_start_5
    const-string v3, "intensity"

    .line 786
    invoke-virtual {v9, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 787
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 788
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternIntensity:I

    .line 790
    :cond_7
    iget v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternIntensity:I

    if-nez v3, :cond_13

    const/16 v3, 0x32

    .line 791
    iput v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternIntensity:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v19, v6

    goto/16 :goto_d

    :cond_8
    :try_start_6
    const-string v3, "WPS"

    .line 794
    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_9

    add-int/2addr v14, v12

    .line 795
    :try_start_7
    iput v14, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewWallpaperOffset:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v19, v6

    const/4 v7, 0x1

    goto/16 :goto_a

    :cond_9
    const/16 v3, 0x3d

    .line 799
    :try_start_8
    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v13, -0x1

    if-eq v3, v13, :cond_13

    const/4 v5, 0x0

    .line 800
    invoke-virtual {v15, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 801
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const-string v9, "key_chat_wallpaper_gradient_to3"

    move/from16 v17, v7

    const-string v7, "key_chat_wallpaper_gradient_to2"

    move/from16 v18, v8

    const-string v8, "chat_wallpaper_gradient_to"

    const-string v1, "chat_wallpaper"

    move-object/from16 v19, v6

    const-string v6, "chat_outBubble"

    if-nez v5, :cond_a

    :try_start_9
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 802
    invoke-virtual {v15, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 804
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/16 v5, 0x23

    if-ne v15, v5, :cond_b

    .line 806
    :try_start_a
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    .line 808
    :catch_2
    :try_start_b
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_4

    .line 811
    :cond_b
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 813
    :goto_4
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v15, 0x2

    sparse-switch v5, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v13, 0x1

    goto :goto_6

    :sswitch_1
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v13, 0x5

    goto :goto_6

    :sswitch_2
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v13, 0x4

    goto :goto_6

    :sswitch_3
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v13, 0x0

    goto :goto_6

    :sswitch_4
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v13, 0x3

    goto :goto_6

    :sswitch_5
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v13, 0x2

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v13, -0x1

    :goto_6
    if-eqz v13, :cond_12

    const/4 v1, 0x1

    if-eq v13, v1, :cond_11

    if-eq v13, v15, :cond_10

    const/4 v1, 0x3

    if-eq v13, v1, :cond_f

    const/4 v1, 0x4

    if-eq v13, v1, :cond_e

    const/4 v1, 0x5

    if-eq v13, v1, :cond_d

    goto :goto_8

    .line 830
    :cond_d
    iput v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewBackgroundGradientColor3:I

    goto :goto_8

    .line 827
    :cond_e
    iput v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewBackgroundGradientColor2:I

    goto :goto_8

    .line 824
    :cond_f
    iput v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewBackgroundGradientColor1:I

    goto :goto_8

    .line 821
    :cond_10
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->setPreviewBackgroundColor(I)V

    goto :goto_8

    .line 818
    :cond_11
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->setPreviewOutColor(I)V

    goto :goto_8

    .line 815
    :cond_12
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->setPreviewInColor(I)V

    goto :goto_8

    :cond_13
    :goto_7
    move-object/from16 v19, v6

    move/from16 v17, v7

    move/from16 v18, v8

    :cond_14
    :goto_8
    add-int/2addr v11, v14

    add-int/2addr v12, v14

    goto :goto_9

    :cond_15
    move-object/from16 v19, v6

    move/from16 v17, v7

    move/from16 v18, v8

    :goto_9
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    move/from16 v7, v17

    move/from16 v8, v18

    move-object/from16 v6, v19

    const/4 v5, 0x1

    const/4 v9, -0x1

    goto/16 :goto_1

    :cond_16
    move-object/from16 v19, v6

    move/from16 v17, v7

    :goto_a
    if-nez v7, :cond_19

    if-ne v4, v12, :cond_17

    goto :goto_b

    .line 843
    :cond_17
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    int-to-long v3, v12

    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object/from16 v1, p0

    move v4, v12

    move-object/from16 v6, v19

    const/4 v5, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_c

    :cond_18
    move-object/from16 v19, v6

    .line 845
    :cond_19
    :goto_b
    :try_start_c
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_f

    :catchall_2
    move-exception v0

    move-object/from16 v19, v6

    :goto_c
    move-object v1, v0

    .line 727
    :goto_d
    :try_start_d
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_e
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception v0

    .line 846
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 849
    :goto_f
    iget-object v0, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToWallpaper:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-boolean v0, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->badWallpaper:Z

    if-nez v0, :cond_1b

    .line 850
    new-instance v0, Ljava/io/File;

    iget-object v1, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToWallpaper:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1b

    move-object/from16 v1, p0

    .line 852
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->loadingWallpapers:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 853
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->loadingWallpapers:Ljava/util/HashMap;

    iget-object v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->slug:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPaper;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPaper;-><init>()V

    .line 855
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperSlug;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperSlug;-><init>()V

    .line 856
    iget-object v4, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->slug:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperSlug;->slug:Ljava/lang/String;

    .line 857
    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPaper;->wallpaper:Lorg/telegram/tgnet/TLRPC$InputWallPaper;

    .line 858
    iget v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->account:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-virtual {v3, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1a
    const/4 v2, 0x0

    return v2

    :cond_1b
    move-object/from16 v1, p0

    const/4 v3, 0x1

    .line 874
    iput-boolean v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewParsed:Z

    return v3

    :cond_1c
    :goto_10
    const/4 v2, 0x0

    return v2

    :sswitch_data_0
    .sparse-switch
        -0x60e8b225 -> :sswitch_5
        -0x25c9567a -> :sswitch_4
        0x4bb25f18 -> :sswitch_3
        0x525ead8c -> :sswitch_2
        0x525ead8d -> :sswitch_1
        0x7a585d53 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 880
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 695
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    .line 696
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget v1, v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->themeIndex:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getThemeInfo(I)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 697
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewParsed:Z

    if-nez v1, :cond_0

    .line 698
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->parseTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)Z

    .line 705
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    .line 706
    iget-object v1, p1, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lorg/telegram/ui/Cells/DrawerProfileCell;->switchingTheme:Z

    if-nez v1, :cond_2

    iget v1, p1, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->lastThemeIndex:I

    iget v4, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->themeIndex:I

    if-eq v1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 710
    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 711
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const-string v4, "dialogBackgroundGray"

    .line 713
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->setBackgroundColor(I)V

    .line 714
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->setItem(Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;Z)V

    .line 715
    iget v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->selectedItemPosition:I

    if-ne p2, v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->setSelected(ZZ)V

    .line 716
    iget v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->selectedItemPosition:I

    if-ne p2, v0, :cond_4

    .line 717
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->selectedViewRef:Ljava/lang/ref/WeakReference;

    :cond_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    .line 690
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget v3, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->currentViewType:I

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    invoke-direct {p2, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;",
            ">;)V"
        }
    .end annotation

    .line 884
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    .line 885
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedItem(I)V
    .locals 2

    .line 889
    iget v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->selectedItemPosition:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz v0, :cond_2

    .line 893
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 894
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->selectedViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 896
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 899
    :cond_2
    iput p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->selectedItemPosition:I

    .line 900
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
