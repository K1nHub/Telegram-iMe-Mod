.class public Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
.super Ljava/lang/Object;
.source "Theme.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/Theme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeInfo"
.end annotation


# instance fields
.field public accentBaseColor:I

.field public accentsByThemeId:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;",
            ">;"
        }
    .end annotation
.end field

.field public account:I

.field public assetName:Ljava/lang/String;

.field public badWallpaper:Z

.field public chatAccentsByThemeId:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;",
            ">;"
        }
    .end annotation
.end field

.field public currentAccentId:I

.field public defaultAccentCount:I

.field public firstAccentIsDefault:Z

.field public info:Lorg/telegram/tgnet/TLRPC$TL_theme;

.field public isBlured:Z

.field private isDark:I

.field public isMotion:Z

.field public lastAccentId:I

.field public lastChatThemeId:I

.field public loaded:Z

.field private loadingThemeWallpaperName:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field private newPathToWallpaper:Ljava/lang/String;

.field public overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

.field public pathToFile:Ljava/lang/String;

.field public pathToWallpaper:Ljava/lang/String;

.field public patternBgColor:I

.field public patternBgGradientColor1:I

.field public patternBgGradientColor2:I

.field public patternBgGradientColor3:I

.field public patternBgGradientRotation:I

.field public patternIntensity:I

.field public prevAccentId:I

.field private previewBackgroundColor:I

.field public previewBackgroundGradientColor1:I

.field public previewBackgroundGradientColor2:I

.field public previewBackgroundGradientColor3:I

.field private previewInColor:I

.field private previewOutColor:I

.field public previewParsed:Z

.field public previewWallpaperOffset:I

.field public slug:Ljava/lang/String;

.field public sortIndex:I

.field public themeAccents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;",
            ">;"
        }
    .end annotation
.end field

.field public themeAccentsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;",
            ">;"
        }
    .end annotation
.end field

.field public themeLoaded:Z

.field public uploadedFile:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public uploadedThumb:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public uploadingFile:Ljava/lang/String;

.field public uploadingThumb:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$EPq7nNE8qK2kmCFQv3iwyD_7VlQ(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->onFinishLoadingRemoteTheme()V

    return-void
.end method

.method public static synthetic $r8$lambda$RPyncWWhks_GM0tMpGsP5KUrDIM(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->lambda$didReceivedNotification$2(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xnrlpbk9EOduG25dnlzY6XAaGag(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->lambda$didReceivedNotification$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k86F0W73hBcB1E5CmitIr0fPA88(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->lambda$didReceivedNotification$0(Ljava/io/File;)V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 2370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2d

    .line 2321
    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientRotation:I

    const/4 v0, 0x1

    .line 2327
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->loaded:Z

    .line 2343
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeLoaded:Z

    const/4 v0, -0x1

    .line 2352
    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->prevAccentId:I

    .line 2356
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->chatAccentsByThemeId:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    .line 2357
    iput v1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->lastChatThemeId:I

    const/16 v1, 0x64

    .line 2358
    iput v1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->lastAccentId:I

    .line 2364
    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark:I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 2

    .line 2374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2d

    .line 2321
    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientRotation:I

    const/4 v0, 0x1

    .line 2327
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->loaded:Z

    .line 2343
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeLoaded:Z

    const/4 v0, -0x1

    .line 2352
    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->prevAccentId:I

    .line 2356
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->chatAccentsByThemeId:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    .line 2357
    iput v1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->lastChatThemeId:I

    const/16 v1, 0x64

    .line 2358
    iput v1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->lastAccentId:I

    .line 2364
    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark:I

    .line 2375
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    .line 2376
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    .line 2377
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToWallpaper:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToWallpaper:Ljava/lang/String;

    .line 2378
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    .line 2379
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->slug:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->slug:Ljava/lang/String;

    .line 2380
    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->badWallpaper:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->badWallpaper:Z

    .line 2381
    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isBlured:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isBlured:Z

    .line 2382
    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isMotion:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isMotion:Z

    .line 2383
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgColor:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgColor:I

    .line 2384
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor1:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor1:I

    .line 2385
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor2:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor2:I

    .line 2386
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor3:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor3:I

    .line 2387
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientRotation:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientRotation:I

    .line 2388
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternIntensity:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternIntensity:I

    .line 2389
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->account:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->account:I

    .line 2390
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    .line 2391
    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->loaded:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->loaded:Z

    .line 2392
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->uploadingThumb:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->uploadingThumb:Ljava/lang/String;

    .line 2393
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->uploadingFile:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->uploadingFile:Ljava/lang/String;

    .line 2394
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->uploadedThumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->uploadedThumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 2395
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->uploadedFile:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->uploadedFile:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 2396
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewBackgroundColor:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewBackgroundColor:I

    .line 2397
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewBackgroundGradientColor1:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewBackgroundGradientColor1:I

    .line 2398
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewBackgroundGradientColor2:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewBackgroundGradientColor2:I

    .line 2399
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewBackgroundGradientColor3:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewBackgroundGradientColor3:I

    .line 2400
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewWallpaperOffset:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewWallpaperOffset:I

    .line 2401
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewInColor:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewInColor:I

    .line 2402
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewOutColor:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewOutColor:I

    .line 2403
    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->firstAccentIsDefault:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->firstAccentIsDefault:Z

    .line 2404
    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewParsed:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewParsed:Z

    .line 2405
    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeLoaded:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeLoaded:Z

    .line 2406
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->sortIndex:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->sortIndex:I

    .line 2407
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->defaultAccentCount:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->defaultAccentCount:I

    .line 2408
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->accentBaseColor:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->accentBaseColor:I

    .line 2409
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    .line 2410
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->prevAccentId:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->prevAccentId:I

    .line 2411
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    .line 2412
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccents:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccents:Ljava/util/ArrayList;

    .line 2413
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->accentsByThemeId:Landroid/util/LongSparseArray;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->accentsByThemeId:Landroid/util/LongSparseArray;

    .line 2414
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->lastAccentId:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->lastAccentId:I

    .line 2415
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->loadingThemeWallpaperName:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->loadingThemeWallpaperName:Ljava/lang/String;

    .line 2416
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->newPathToWallpaper:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->newPathToWallpaper:Ljava/lang/String;

    .line 2417
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    return-void
.end method

.method public static accentEquals(Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Lorg/telegram/tgnet/TLRPC$ThemeSettings;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2810
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/high16 v3, -0x1000000

    const/4 v4, 0x0

    if-lez v2, :cond_0

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/2addr v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 2811
    :goto_0
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    or-int/2addr v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    if-ne v2, v5, :cond_2

    move v5, v4

    .line 2815
    :cond_2
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_3

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    or-int/2addr v7, v3

    goto :goto_2

    :cond_3
    move v7, v4

    .line 2816
    :goto_2
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_4

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    or-int/2addr v3, v8

    goto :goto_3

    :cond_4
    move v3, v4

    .line 2824
    :goto_3
    iget-object v10, v1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    const-wide/16 v11, 0x0

    if-eqz v10, :cond_9

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v10, :cond_9

    .line 2825
    iget v10, v10, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getWallpaperColor(I)I

    move-result v10

    .line 2826
    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    const-wide v12, 0x100000000L

    if-nez v11, :cond_5

    move-wide v14, v12

    goto :goto_4

    .line 2829
    :cond_5
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getWallpaperColor(I)I

    move-result v11

    int-to-long v14, v11

    .line 2831
    :goto_4
    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    if-nez v11, :cond_6

    move-wide v8, v12

    goto :goto_5

    .line 2834
    :cond_6
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getWallpaperColor(I)I

    move-result v11

    int-to-long v8, v11

    .line 2836
    :goto_5
    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    if-nez v11, :cond_7

    move-wide v11, v12

    goto :goto_6

    .line 2839
    :cond_7
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getWallpaperColor(I)I

    move-result v11

    int-to-long v11, v11

    .line 2841
    :goto_6
    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    invoke-static {v13, v4}, Lorg/telegram/messenger/AndroidUtilities;->getWallpaperRotation(IZ)I

    move-result v13

    .line 2842
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_wallPaperNoFile;

    if-nez v6, :cond_8

    iget-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v6, :cond_8

    .line 2843
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    .line 2844
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    int-to-float v4, v4

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v4, v4, v16

    move-wide/from16 v18, v8

    move v9, v4

    move-object v8, v6

    move v4, v13

    goto :goto_7

    :cond_8
    move v4, v13

    move-wide/from16 v18, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_7
    move-wide/from16 v20, v11

    move-wide v11, v14

    move-wide/from16 v13, v18

    move-wide/from16 v15, v20

    goto :goto_8

    :cond_9
    move-wide v13, v11

    move-wide v15, v13

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2847
    :goto_8
    iget v6, v1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->accent_color:I

    move/from16 v17, v9

    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    if-ne v6, v9, :cond_a

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->outbox_accent_color:I

    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-ne v6, v9, :cond_a

    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    if-ne v2, v6, :cond_a

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-ne v5, v2, :cond_a

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-ne v7, v2, :cond_a

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-ne v3, v2, :cond_a

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors_animated:Z

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    if-ne v1, v2, :cond_a

    int-to-long v1, v10

    iget-wide v5, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_a

    iget-wide v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    cmp-long v1, v11, v1

    if-nez v1, :cond_a

    iget-wide v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    cmp-long v1, v13, v1

    if-nez v1, :cond_a

    iget-wide v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    cmp-long v1, v15, v1

    if-nez v1, :cond_a

    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    if-ne v4, v1, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    .line 2859
    invoke-static {v8, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    sub-float v9, v17, v0

    .line 2860
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a

    const/4 v4, 0x1

    goto :goto_9

    :cond_a
    const/4 v4, 0x0

    :goto_9
    return v4
.end method

.method static synthetic access$2102(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;I)I
    .locals 0

    .line 2308
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewBackgroundColor:I

    return p1
.end method

.method static synthetic access$2202(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;I)I
    .locals 0

    .line 2308
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewInColor:I

    return p1
.end method

.method static synthetic access$2302(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;I)I
    .locals 0

    .line 2308
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewOutColor:I

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;[I[I[I[I[I[I[I[I[Ljava/lang/String;[I[I)V
    .locals 0

    .line 2308
    invoke-direct/range {p0 .. p11}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->setAccentColorOptions([I[I[I[I[I[I[I[I[Ljava/lang/String;[I[I)V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 2308
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->loadWallpapers(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 0

    .line 2308
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->removeObservers()V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 0

    .line 2308
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->loadThemeDocument()V

    return-void
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)I
    .locals 0

    .line 2308
    iget p0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark:I

    return p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;I)I
    .locals 0

    .line 2308
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark:I

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)Z
    .locals 0

    .line 2308
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDefaultMyMessagesBubbles()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)Z
    .locals 0

    .line 2308
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDefaultMyMessages()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)Z
    .locals 0

    .line 2308
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDefaultMainAccent()Z

    move-result p0

    return p0
.end method

.method private addObservers()V
    .locals 2

    .line 2789
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->account:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2790
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->account:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method static createWithJson(Lorg/json/JSONObject;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    .locals 6

    const-string v0, "loaded"

    const-string v1, "info"

    const-string v2, "account"

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return-object v3

    .line 2662
    :cond_0
    :try_start_0
    new-instance v4, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-direct {v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;-><init>()V

    const-string v5, "name"

    .line 2663
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    const-string v5, "path"

    .line 2664
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    .line 2665
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2666
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->account:I

    .line 2668
    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    .line 2670
    :try_start_1
    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    const/4 v1, 0x1

    .line 2671
    invoke-virtual {v2, v1}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {v2, v5, v1}, Lorg/telegram/tgnet/TLRPC$Theme;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 2673
    :try_start_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2676
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2677
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->loaded:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return-object v4

    :catch_0
    move-exception p0

    .line 2681
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v3
.end method

.method static createWithString(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    .locals 3

    .line 2687
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "\\|"

    .line 2690
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2691
    array-length v0, p0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return-object v1

    .line 2694
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;-><init>()V

    const/4 v1, 0x0

    .line 2695
    aget-object v1, p0, v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    const/4 v1, 0x1

    .line 2696
    aget-object p0, p0, v1

    iput-object p0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    return-object v0
.end method

.method public static fillAccentValues(Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Lorg/telegram/tgnet/TLRPC$ThemeSettings;)V
    .locals 5

    .line 2864
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->accent_color:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    .line 2865
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->outbox_accent_color:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    .line 2866
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/high16 v1, -0x1000000

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    .line 2867
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/2addr v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    .line 2868
    iget v3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    if-ne v3, v0, :cond_2

    .line 2869
    iput v2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    .line 2871
    :cond_2
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_3

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/2addr v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    .line 2872
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_4

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/2addr v0, v1

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    .line 2873
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors_animated:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    .line 2874
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v0, :cond_9

    .line 2875
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    const-wide v3, 0x100000000L

    if-nez v0, :cond_5

    .line 2876
    iput-wide v3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    goto :goto_4

    .line 2878
    :cond_5
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getWallpaperColor(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    .line 2880
    :goto_4
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    if-nez v1, :cond_6

    .line 2881
    iput-wide v3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    goto :goto_5

    .line 2883
    :cond_6
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getWallpaperColor(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    .line 2885
    :goto_5
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_7

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    if-nez v1, :cond_7

    .line 2886
    iput-wide v3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    goto :goto_6

    .line 2888
    :cond_7
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getWallpaperColor(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    .line 2890
    :goto_6
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_8

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    if-nez v1, :cond_8

    .line 2891
    iput-wide v3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    goto :goto_7

    .line 2893
    :cond_8
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getWallpaperColor(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    .line 2895
    :goto_7
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->getWallpaperRotation(IZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    .line 2896
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaperNoFile;

    if-nez v0, :cond_9

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v0, :cond_9

    .line 2897
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    .line 2898
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    .line 2899
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternMotion:Z

    :cond_9
    return-void
.end method

.method private isDefaultMainAccent()Z
    .locals 5

    .line 2614
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->firstAccentIsDefault:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2617
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->DEFALT_THEME_ACCENT_ID:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    .line 2620
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    .line 2621
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    iget v4, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 2622
    iget v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    if-ne v0, v2, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method private isDefaultMyMessages()Z
    .locals 6

    .line 2594
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->firstAccentIsDefault:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2597
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->DEFALT_THEME_ACCENT_ID:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    .line 2600
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    .line 2601
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    iget v4, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v0, :cond_3

    if-nez v2, :cond_2

    goto :goto_0

    .line 2605
    :cond_2
    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    iget v5, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-ne v4, v5, :cond_3

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    iget v5, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    if-ne v4, v5, :cond_3

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    iget v5, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-ne v4, v5, :cond_3

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    iget v5, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-ne v4, v5, :cond_3

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    iget v5, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-ne v4, v5, :cond_3

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    iget-boolean v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    if-ne v0, v2, :cond_3

    move v1, v3

    :cond_3
    :goto_0
    return v1
.end method

.method private isDefaultMyMessagesBubbles()Z
    .locals 6

    .line 2575
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->firstAccentIsDefault:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2578
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->DEFALT_THEME_ACCENT_ID:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    .line 2581
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    .line 2582
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    iget v4, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v0, :cond_3

    if-nez v2, :cond_2

    goto :goto_0

    .line 2586
    :cond_2
    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    iget v5, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    if-ne v4, v5, :cond_3

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    iget v5, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-ne v4, v5, :cond_3

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    iget v5, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-ne v4, v5, :cond_3

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    iget v5, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-ne v4, v5, :cond_3

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    iget-boolean v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    if-ne v0, v2, :cond_3

    move v1, v3

    :cond_3
    :goto_0
    return v1
.end method

.method private synthetic lambda$didReceivedNotification$0(Ljava/io/File;)V
    .locals 1

    .line 3047
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->newPathToWallpaper:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->createBackground(Ljava/io/File;Ljava/lang/String;)Z

    .line 3048
    new-instance p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$didReceivedNotification$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 2

    .line 3074
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_0

    .line 3075
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 3076
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->loadingThemeWallpaperName:Ljava/lang/String;

    .line 3077
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->addObservers()V

    .line 3078
    iget p2, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->account:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1, v1}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    goto :goto_0

    .line 3080
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->onFinishLoadingRemoteTheme()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$didReceivedNotification$2(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 3073
    new-instance p3, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadOverrideWallpaper(Landroid/content/SharedPreferences;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Ljava/lang/String;)V
    .locals 3

    const-string v0, "wallId"

    const/4 v1, 0x0

    .line 2452
    :try_start_0
    invoke-interface {p1, p3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2453
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 2456
    :cond_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2457
    new-instance p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    invoke-direct {p1}, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;-><init>()V

    const-string v1, "wall"

    .line 2458
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->fileName:Ljava/lang/String;

    const-string v1, "owall"

    .line 2459
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->originalFileName:Ljava/lang/String;

    const-string v1, "pColor"

    .line 2460
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->color:I

    const-string v1, "pGrColor"

    .line 2461
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor1:I

    const-string v1, "pGrColor2"

    .line 2462
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor2:I

    const-string v1, "pGrColor3"

    .line 2463
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor3:I

    const-string v1, "pGrAngle"

    .line 2464
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->rotation:I

    const-string v1, "wallSlug"

    .line 2465
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    const-string v1, "wBlur"

    .line 2466
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isBlurred:Z

    const-string v1, "wMotion"

    .line 2467
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isMotion:Z

    const-string v1, "pIntensity"

    .line 2468
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->intensity:F

    .line 2469
    iput-object p0, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 2470
    iput-object p2, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->parentAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz p2, :cond_1

    .line 2472
    iput-object p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    goto :goto_0

    .line 2474
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    .line 2476
    :goto_0
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2477
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    const-wide/32 v0, 0xf4241

    cmp-long p2, p2, v0

    if-nez p2, :cond_2

    const-string p2, "d"

    .line 2479
    iput-object p2, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 2483
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private loadThemeDocument()V
    .locals 4

    const/4 v0, 0x0

    .line 2781
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->loaded:Z

    const/4 v0, 0x0

    .line 2782
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->loadingThemeWallpaperName:Ljava/lang/String;

    .line 2783
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->newPathToWallpaper:Ljava/lang/String;

    .line 2784
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->addObservers()V

    .line 2785
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->account:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_theme;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3, v3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    return-void
.end method

.method private loadWallpapers(Landroid/content/SharedPreferences;)V
    .locals 6

    .line 2440
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccents:Ljava/util/ArrayList;

    const-string v1, "_owp"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2441
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    .line 2442
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    .line 2443
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->loadOverrideWallpaper(Landroid/content/SharedPreferences;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->loadOverrideWallpaper(Landroid/content/SharedPreferences;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private onFinishLoadingRemoteTheme()V
    .locals 6

    const/4 v0, 0x1

    .line 2801
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->loaded:Z

    const/4 v1, 0x0

    .line 2802
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewParsed:Z

    .line 2803
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->access$1500(Z)V

    .line 2804
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$500()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    if-ne p0, v2, :cond_1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$1600()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2805
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$1700()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v5

    if-ne p0, v5, :cond_0

    move v1, v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$100()Landroid/util/SparseIntArray;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private removeObservers()V
    .locals 2

    .line 2796
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->account:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2797
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->account:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method private setAccentColorOptions([I[I[I[I[I[I[I[I[Ljava/lang/String;[I[I)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    .line 2705
    array-length v2, v1

    iput v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->defaultAccentCount:I

    .line 2706
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccents:Ljava/util/ArrayList;

    .line 2707
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    .line 2708
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->accentsByThemeId:Landroid/util/LongSparseArray;

    const/4 v2, 0x0

    move v3, v2

    .line 2710
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_10

    .line 2711
    new-instance v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    invoke-direct {v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;-><init>()V

    if-eqz p8, :cond_0

    .line 2712
    aget v5, p8, v3

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    iput v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    .line 2713
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->isHome(Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 2714
    iput-boolean v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->isDefault:Z

    .line 2716
    :cond_1
    aget v5, v1, v3

    iput v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    .line 2717
    iput-object v0, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    if-eqz p2, :cond_2

    .line 2719
    aget v5, p2, v3

    iput v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    :cond_2
    if-eqz p3, :cond_3

    .line 2722
    aget v5, p3, v3

    iput v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    :cond_3
    const-wide v5, 0x100000000L

    if-eqz p4, :cond_5

    .line 2725
    aget v7, p4, v3

    int-to-long v7, v7

    iput-wide v7, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    .line 2726
    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->firstAccentIsDefault:Z

    if-eqz v7, :cond_4

    iget v7, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->DEFALT_THEME_ACCENT_ID:I

    if-ne v7, v8, :cond_4

    .line 2727
    iput-wide v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    goto :goto_2

    .line 2729
    :cond_4
    aget v7, p4, v3

    int-to-long v7, v7

    iput-wide v7, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    :cond_5
    :goto_2
    if-eqz p5, :cond_7

    .line 2733
    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->firstAccentIsDefault:Z

    if-eqz v7, :cond_6

    iget v7, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->DEFALT_THEME_ACCENT_ID:I

    if-ne v7, v8, :cond_6

    .line 2734
    iput-wide v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    goto :goto_3

    .line 2736
    :cond_6
    aget v7, p5, v3

    int-to-long v7, v7

    iput-wide v7, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    :cond_7
    :goto_3
    if-eqz p6, :cond_9

    .line 2740
    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->firstAccentIsDefault:Z

    if-eqz v7, :cond_8

    iget v7, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->DEFALT_THEME_ACCENT_ID:I

    if-ne v7, v8, :cond_8

    .line 2741
    iput-wide v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    goto :goto_4

    .line 2743
    :cond_8
    aget v7, p6, v3

    int-to-long v7, v7

    iput-wide v7, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    :cond_9
    :goto_4
    if-eqz p7, :cond_b

    .line 2747
    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->firstAccentIsDefault:Z

    if-eqz v7, :cond_a

    iget v7, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->DEFALT_THEME_ACCENT_ID:I

    if-ne v7, v8, :cond_a

    .line 2748
    iput-wide v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    goto :goto_5

    .line 2750
    :cond_a
    aget v5, p7, v3

    int-to-long v5, v5

    iput-wide v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    :cond_b
    :goto_5
    if-eqz p9, :cond_c

    .line 2754
    aget v5, p11, v3

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    iput v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    .line 2755
    aget v5, p10, v3

    iput v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    .line 2756
    aget-object v5, p9, v3

    iput-object v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    .line 2760
    :cond_c
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->isHome(Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;)Z

    move-result v5

    const-string v6, "Night"

    if-eqz v5, :cond_d

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    const-string v7, "Dark Blue"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    :cond_d
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_e
    const v5, -0x9a8c08

    .line 2761
    iput v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    const v5, -0x89bb35

    .line 2762
    iput v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    const v5, -0x77b64c

    .line 2763
    iput v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    const v5, -0x58ae58

    .line 2764
    iput v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    .line 2765
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const v5, -0x40ee147b    # -0.57f

    .line 2766
    iput v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    const-wide/32 v5, -0x93805a

    .line 2767
    iput-wide v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    const-wide/32 v5, -0xd1cbb5

    .line 2768
    iput-wide v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    const-wide/32 v5, -0x878b59

    .line 2769
    iput-wide v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    const-wide/32 v5, -0xcccda8

    .line 2770
    iput-wide v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    .line 2773
    :cond_f
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    iget v6, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2774
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2776
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v1, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->accentBaseColor:I

    return-void
.end method


# virtual methods
.method public createBackground(Ljava/io/File;Ljava/lang/String;)Z
    .locals 11

    const/16 v0, 0x280

    const/4 v1, 0x0

    .line 3002
    :try_start_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v2, 0x168

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->getScaledBitmap(FFLjava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 3003
    iget v2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgColor:I

    if-eqz v2, :cond_2

    .line 3004
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3005
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3007
    iget v5, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor2:I

    const/4 v6, 0x2

    if-eqz v5, :cond_0

    .line 3008
    iget v7, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgColor:I

    iget v8, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor1:I

    iget v9, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor3:I

    invoke-static {v7, v8, v5, v9}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor(IIII)I

    move-result v5

    goto :goto_0

    .line 3009
    :cond_0
    iget v5, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor1:I

    if-eqz v5, :cond_1

    .line 3010
    iget v7, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgColor:I

    invoke-static {v7, v5}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v5

    .line 3011
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    iget v8, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientRotation:I

    invoke-static {v8}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v8

    new-array v9, v6, [I

    iget v10, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgColor:I

    aput v10, v9, v1

    iget v10, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor1:I

    aput v10, v9, v0

    invoke-direct {v7, v8, v9}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 3012
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v7, v1, v1, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 3013
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3015
    :cond_1
    iget v5, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgColor:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(I)I

    move-result v5

    .line 3016
    iget v7, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgColor:I

    invoke-virtual {v4, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 3018
    :goto_0
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 3019
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v5, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 3020
    iget v5, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternIntensity:I

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v5, 0x0

    .line 3021
    invoke-virtual {v4, p1, v5, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3023
    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object p1, v2

    .line 3025
    :cond_2
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isBlured:Z

    if-eqz v2, :cond_3

    .line 3026
    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->blurWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3028
    :cond_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 3029
    iget p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor2:I

    if-eqz p2, :cond_4

    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    :cond_4
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_1
    const/16 v3, 0x57

    invoke-virtual {p1, p2, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3030
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception p1

    .line 3033
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v1
.end method

.method public createNewAccent(Lorg/telegram/tgnet/TLRPC$TL_theme;I)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;
    .locals 1

    const/4 v0, 0x0

    .line 2912
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->createNewAccent(Lorg/telegram/tgnet/TLRPC$TL_theme;IZI)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    return-object p1
.end method

.method public createNewAccent(Lorg/telegram/tgnet/TLRPC$TL_theme;IZI)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2920
    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->settings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p4, v1, :cond_1

    .line 2921
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->settings:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ThemeSettings;

    :cond_1
    if-eqz p3, :cond_3

    .line 2924
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->chatAccentsByThemeId:Landroid/util/LongSparseArray;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    invoke-virtual {p3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz p3, :cond_2

    return-object p3

    .line 2928
    :cond_2
    iget p3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->lastChatThemeId:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->lastChatThemeId:I

    .line 2929
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->createNewAccent(Lorg/telegram/tgnet/TLRPC$ThemeSettings;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p4

    .line 2930
    iput p3, p4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    .line 2931
    iput-object p1, p4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    .line 2932
    iput p2, p4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->account:I

    .line 2933
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->chatAccentsByThemeId:Landroid/util/LongSparseArray;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object p4

    .line 2936
    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->accentsByThemeId:Landroid/util/LongSparseArray;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    invoke-virtual {p3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz p3, :cond_4

    return-object p3

    .line 2940
    :cond_4
    iget p3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->lastAccentId:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->lastAccentId:I

    .line 2941
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->createNewAccent(Lorg/telegram/tgnet/TLRPC$ThemeSettings;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p4

    .line 2942
    iput p3, p4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    .line 2943
    iput-object p1, p4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    .line 2944
    iput p2, p4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->account:I

    .line 2945
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p3, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2946
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccents:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2947
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->access$1800(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    .line 2948
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->accentsByThemeId:Landroid/util/LongSparseArray;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    invoke-virtual {p2, v0, v1, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object p4
.end method

.method public createNewAccent(Lorg/telegram/tgnet/TLRPC$ThemeSettings;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;
    .locals 1

    .line 2905
    new-instance v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;-><init>()V

    .line 2906
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->fillAccentValues(Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Lorg/telegram/tgnet/TLRPC$ThemeSettings;)V

    .line 2907
    iput-object p0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 3040
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    if-eq p1, p2, :cond_0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    if-ne p1, v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    .line 3041
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    .line 3042
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_theme;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_3

    .line 3043
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->loadingThemeWallpaperName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    .line 3044
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->loadingThemeWallpaperName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3045
    aget-object p1, p3, p1

    check-cast p1, Ljava/io/File;

    .line 3046
    sget-object p2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p3, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Ljava/io/File;)V

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3051
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_theme;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p3

    .line 3052
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 3053
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->removeObservers()V

    if-ne p1, p2, :cond_3

    .line 3055
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3056
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_theme;->title:Ljava/lang/String;

    invoke-static {p1, p3, p2}, Lorg/telegram/ui/ActionBar/Theme;->fillThemeValues(Ljava/io/File;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_theme;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3057
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToWallpaper:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 3058
    new-instance p2, Ljava/io/File;

    iget-object p3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToWallpaper:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3059
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_2

    .line 3060
    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgColor:I

    iput p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgColor:I

    .line 3061
    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor1:I

    iput p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor1:I

    .line 3062
    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor2:I

    iput p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor2:I

    .line 3063
    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor3:I

    iput p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor3:I

    .line 3064
    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientRotation:I

    iput p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientRotation:I

    .line 3065
    iget-boolean p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isBlured:Z

    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isBlured:Z

    .line 3066
    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternIntensity:I

    iput p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternIntensity:I

    .line 3067
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToWallpaper:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->newPathToWallpaper:Ljava/lang/String;

    .line 3069
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPaper;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPaper;-><init>()V

    .line 3070
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperSlug;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperSlug;-><init>()V

    .line 3071
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->slug:Ljava/lang/String;

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperSlug;->slug:Ljava/lang/String;

    .line 3072
    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPaper;->wallpaper:Lorg/telegram/tgnet/TLRPC$InputWallPaper;

    .line 3073
    iget p3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->account:I

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-virtual {p3, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 3086
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->onFinishLoadingRemoteTheme()V

    :cond_3
    :goto_0
    return-void
.end method

.method public generateWallpaperName(Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Z)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2531
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    :cond_0
    const-string v0, ".jpg"

    const-string v1, "_wp_o"

    const-string v2, "_wp"

    if-eqz p1, :cond_2

    .line 2534
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Ljava/security/SecureRandom;->nextInt()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2536
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;
    .locals 4

    .line 2954
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2957
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    iget v2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    if-eqz p1, :cond_3

    .line 2962
    iget p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->lastAccentId:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->lastAccentId:I

    .line 2963
    new-instance v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    invoke-direct {v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;-><init>()V

    .line 2964
    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    iput v2, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    .line 2965
    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    iput v2, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    .line 2966
    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    iput v2, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    .line 2967
    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    iput v2, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    .line 2968
    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    iput v2, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    .line 2969
    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    iput v2, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    .line 2970
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    iput-boolean v2, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    .line 2971
    iget-wide v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    iput-wide v2, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    .line 2972
    iget-wide v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    iput-wide v2, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    .line 2973
    iget-wide v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    iput-wide v2, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    .line 2974
    iget-wide v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    iput-wide v2, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    .line 2975
    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    iput v2, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    .line 2976
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    .line 2977
    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    iput v2, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    .line 2978
    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternMotion:Z

    iput-boolean v0, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternMotion:Z

    .line 2979
    iput-object p0, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 2980
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    if-eqz v0, :cond_2

    .line 2981
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    invoke-direct {v2, v0, p0, v1}, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;-><init>(Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;)V

    iput-object v2, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    .line 2983
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->prevAccentId:I

    .line 2984
    iput p1, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    .line 2985
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    .line 2986
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2987
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccents:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2988
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->access$1800(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    return-object v1

    :cond_3
    return-object v0
.end method

.method public getAccentColor(I)I
    .locals 1

    .line 2996
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz p1, :cond_0

    .line 2997
    iget p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getKey()Ljava/lang/String;
    .locals 3

    .line 2651
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v0, :cond_0

    .line 2652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remote"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2654
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 2507
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    const-string v1, "Blue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2508
    sget v0, Lorg/telegram/messenger/R$string;->ThemeClassic:I

    const-string v1, "ThemeClassic"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2509
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    const-string v1, "Dark Blue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2510
    sget v0, Lorg/telegram/messenger/R$string;->ThemeDark:I

    const-string v1, "ThemeDark"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2511
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    const-string v1, "Arctic Blue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2512
    sget v0, Lorg/telegram/messenger/R$string;->ThemeArcticBlue:I

    const-string v1, "ThemeArcticBlue"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2513
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    const-string v1, "Day"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2514
    sget v0, Lorg/telegram/messenger/R$string;->ThemeDay:I

    const-string v1, "ThemeDay"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2515
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    const-string v1, "Night"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2516
    sget v0, Lorg/telegram/messenger/R$string;->ThemeNight:I

    const-string v1, "ThemeNight"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2518
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_theme;->title:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getPreviewBackgroundColor()I
    .locals 2

    .line 2567
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->firstAccentIsDefault:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->DEFALT_THEME_ACCENT_ID:I

    if-ne v0, v1, :cond_0

    const v0, -0x30261d

    return v0

    .line 2570
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewBackgroundColor:I

    return v0
.end method

.method public getPreviewInColor()I
    .locals 2

    .line 2553
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->firstAccentIsDefault:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->DEFALT_THEME_ACCENT_ID:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2556
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewInColor:I

    return v0
.end method

.method public getPreviewOutColor()I
    .locals 2

    .line 2560
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->firstAccentIsDefault:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->DEFALT_THEME_ACCENT_ID:I

    if-ne v0, v1, :cond_0

    const v0, -0xf0120

    return v0

    .line 2563
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewOutColor:I

    return v0
.end method

.method getSaveJson()Lorg/json/JSONObject;
    .locals 3

    .line 2422
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    .line 2423
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "path"

    .line 2424
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "account"

    .line 2425
    iget v2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->account:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2426
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v1, :cond_0

    .line 2427
    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v1

    invoke-direct {v2, v1}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 2428
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/TLRPC$TL_theme;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const-string v1, "info"

    .line 2429
    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "loaded"

    .line 2431
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->loaded:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2434
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAccentColors()Z
    .locals 1

    .line 2626
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->defaultAccentCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDark()Z
    .locals 5

    .line 2630
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 2633
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    const-string v4, "Dark Blue"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    const-string v4, "Night"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2635
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    const-string v4, "Blue"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    const-string v4, "Arctic Blue"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    const-string v4, "Day"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2636
    :cond_3
    iput v2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark:I

    goto :goto_1

    .line 2634
    :cond_4
    :goto_0
    iput v3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark:I

    .line 2638
    :cond_5
    :goto_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark:I

    if-ne v0, v1, :cond_6

    new-array v0, v3, [Ljava/lang/String;

    .line 2640
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v1, v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->getThemeFileValues(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 2641
    invoke-static {v0, p0}, Lorg/telegram/ui/ActionBar/Theme;->access$600(Landroid/util/SparseIntArray;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    .line 2643
    :cond_6
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark:I

    if-ne v0, v3, :cond_7

    move v2, v3

    :cond_7
    return v2
.end method

.method public isLight()Z
    .locals 1

    .line 2647
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCurrentAccentId(I)V
    .locals 0

    .line 2522
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    const/4 p1, 0x0

    .line 2523
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2525
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    :cond_0
    return-void
.end method

.method public setOverrideWallpaper(Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;)V
    .locals 2

    .line 2488
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2491
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v0

    .line 2492
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    if-eqz v1, :cond_1

    .line 2493
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->access$1300(Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 2496
    iput-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->parentAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    .line 2497
    iput-object p0, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 2498
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->access$1400(Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;)V

    .line 2500
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    if-eqz v0, :cond_3

    .line 2502
    iput-object p1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    :cond_3
    return-void
.end method

.method public setPreviewBackgroundColor(I)V
    .locals 0

    .line 2549
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewBackgroundColor:I

    return-void
.end method

.method public setPreviewInColor(I)V
    .locals 0

    .line 2541
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewInColor:I

    return-void
.end method

.method public setPreviewOutColor(I)V
    .locals 0

    .line 2545
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewOutColor:I

    return-void
.end method
