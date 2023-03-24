.class public Lorg/telegram/ui/ThemePreviewActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ThemePreviewActivity.java"

# interfaces
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;,
        Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;,
        Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;,
        Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;
    }
.end annotation


# instance fields
.field private TAG:I

.field private accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

.field private actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

.field private animationHint:Lorg/telegram/ui/Components/HintView;

.field private applyColorAction:Ljava/lang/Runnable;

.field private applyColorScheduled:Z

.field private applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

.field private backgroundButtonsContainer:Landroid/widget/FrameLayout;

.field private backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

.field private backgroundColor:I

.field private backgroundGradientColor1:I

.field private backgroundGradientColor2:I

.field private backgroundGradientColor3:I

.field private backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

.field private backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

.field private backgroundPlayAnimationImageView:Landroid/widget/ImageView;

.field private backgroundPlayAnimationView:Landroid/widget/FrameLayout;

.field private backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

.field private backgroundRotation:I

.field private backupAccentColor:I

.field private backupAccentColor2:I

.field private backupBackgroundGradientOverrideColor1:J

.field private backupBackgroundGradientOverrideColor2:J

.field private backupBackgroundGradientOverrideColor3:J

.field private backupBackgroundOverrideColor:J

.field private backupBackgroundRotation:I

.field private backupIntensity:F

.field private backupMyMessagesAccentColor:I

.field private backupMyMessagesAnimated:Z

.field private backupMyMessagesGradientAccentColor1:I

.field private backupMyMessagesGradientAccentColor2:I

.field private backupMyMessagesGradientAccentColor3:I

.field private backupSlug:Ljava/lang/String;

.field private final blendMode:Landroid/graphics/PorterDuff$Mode;

.field private blurredBitmap:Landroid/graphics/Bitmap;

.field private bottomOverlayChat:Landroid/widget/FrameLayout;

.field private bottomOverlayChatText:Landroid/widget/TextView;

.field private cancelButton:Landroid/widget/TextView;

.field private checkColor:I

.field private colorPicker:Lorg/telegram/ui/Components/ColorPicker;

.field private colorType:I

.field private currentIntensity:F

.field private currentWallpaper:Ljava/lang/Object;

.field private currentWallpaperBitmap:Landroid/graphics/Bitmap;

.field private delegate:Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;

.field private deleteOnCancel:Z

.field private dialogsAdapter:Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;

.field private doneButton:Landroid/widget/TextView;

.field private dotsContainer:Landroid/view/View;

.field private dropDown:Landroid/widget/TextView;

.field private dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private editingTheme:Z

.field private floatingButton:Landroid/widget/ImageView;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private imageFilter:Ljava/lang/String;

.field private intensityCell:Lorg/telegram/ui/Cells/HeaderCell;

.field private intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

.field private isBlurred:Z

.field private isMotion:Z

.field private lastPickedColor:I

.field private lastPickedColorNum:I

.field private lastSelectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listView2:Lorg/telegram/ui/Components/RecyclerListView;

.field private maxWallpaperSize:I

.field private messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

.field private messagesButtonsContainer:Landroid/widget/FrameLayout;

.field private messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

.field private messagesPlayAnimationImageView:Landroid/widget/ImageView;

.field private messagesPlayAnimationView:Landroid/widget/FrameLayout;

.field private messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

.field private motionAnimation:Landroid/animation/AnimatorSet;

.field msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field msgOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field msgOutMediaDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private nightTheme:Z

.field private onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private originalBitmap:Landroid/graphics/Bitmap;

.field private page1:Landroid/widget/FrameLayout;

.field private page2:Landroid/widget/FrameLayout;

.field private parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

.field private parallaxScale:F

.field private patternColor:I

.field private patternLayout:[Landroid/widget/FrameLayout;

.field private patternViewAnimation:Landroid/animation/AnimatorSet;

.field private patterns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private patternsAdapter:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

.field private patternsButtonsContainer:[Landroid/widget/FrameLayout;

.field private patternsCancelButton:[Landroid/widget/TextView;

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

.field private patternsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private patternsSaveButton:[Landroid/widget/TextView;

.field private previousBackgroundColor:I

.field private previousBackgroundGradientColor1:I

.field private previousBackgroundGradientColor2:I

.field private previousBackgroundGradientColor3:I

.field private previousBackgroundRotation:I

.field private previousIntensity:F

.field private previousSelectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

.field private progressVisible:Z

.field private radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

.field private removeBackgroundOverride:Z

.field private rotatePreview:Z

.field private saveButtonsContainer:Landroid/widget/FrameLayout;

.field private saveItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private final screenType:I

.field private selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

.field private sheetDrawable:Landroid/graphics/drawable/Drawable;

.field private showColor:Z

.field private themeDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private undoView:Lorg/telegram/ui/Components/UndoView;

.field public useDefaultThemeForButtons:Z

.field private viewPager:Landroidx/viewpager/widget/ViewPager;

.field private wasScroll:Z

.field private watchForKeyboardEndTime:J


# direct methods
.method public static synthetic $r8$lambda$0sFc0_7hGKkmzhfAlk51WF-hwgc(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4NqfvFau_z6mUClUT3uRgJanGrs(Lorg/telegram/ui/ThemePreviewActivity;ILorg/telegram/ui/Components/WallpaperCheckBoxView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$7(ILorg/telegram/ui/Components/WallpaperCheckBoxView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4pADNsTEkUD07kzJekIcKeDIIoU(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$76nYvp7tP6eraTu8AVFGE60f4Ec(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$selectColorType$17(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9_LXSkMGFrhFaQ84Np6jmnOKo30(Lorg/telegram/ui/ThemePreviewActivity;ILorg/telegram/ui/Components/WallpaperCheckBoxView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$8(ILorg/telegram/ui/Components/WallpaperCheckBoxView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BrutZEzplcX-HQfhG0nxLNJXqws(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$CPKEPYxXwyE0lbDbPr-i3rGKPmg(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$11(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CgB0kD7fqURrqVCmbEa49m0V4UI(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$checkDiscard$18(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EU8X2oEwgqjf_gHyr5srXadTrNk(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$checkDiscard$19(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HIQbagGe0I7qGq2M2KeRZb0f7uY(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$didReceivedNotification$23(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NB93XeUo1-bjdI0j3PI-RhsfBuw(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NO7N9hKlG4DlLvhQE5bAI6Ax2pk(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$getThemeDescriptionsInternal$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$T_zGbEPOsEZO6ky-CTvYyflA0qE(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XLyTGpLgnZzSkgWkkwhsVFXEA-s(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$selectColorType$16(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$csbs872778iVXA3fkD5CoCFveV0(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$4(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$eTksUVFKP4ylYjd8u2XInjoUFx0(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$didReceivedNotification$21(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gTCw61X4R4ovNl6yV9R2EuScxTM(Lorg/telegram/ui/ThemePreviewActivity;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$10(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gY31pKcksQNaOAf5d5dnfUM8s-k(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hn1dcBNDTXu-zDlpJ2jFN1c5eTY(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$didReceivedNotification$22(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kNlwrGRkm59-ng7E5P4befQcZ6Y(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$didReceivedNotification$24(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kuzYdXlbD5hixXKLPCNcwJ3ilz8(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$lqQBpYO6XglcdH0_TVjlHjZjLNk()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$onFragmentDestroy$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$n41rQXyx-J3zFJ2tgAuqQ5LSo4o(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$showAnimationHint$25(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n8VLGXY5s1btl0O191oGVcc5S9I(Lorg/telegram/ui/ThemePreviewActivity;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$9(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pU8TdyH3kQzj0OtT5ZJodkaFnzc(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$2(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$rcqVmzH0BWIhl7XYa_Y--x9TFTs(Lorg/telegram/ui/ThemePreviewActivity;IIF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$5(IIF)V

    return-void
.end method

.method public static synthetic $r8$lambda$tUxs8w-e1HszHkqf6WLCXTyh-20(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$selectColorType$15(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 288
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Ljava/lang/Object;Landroid/graphics/Bitmap;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/graphics/Bitmap;ZZ)V
    .locals 3

    .line 292
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->useDefaultThemeForButtons:Z

    .line 138
    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    .line 162
    new-instance v1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 163
    new-instance v1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v1, v2, v0, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 164
    new-instance v1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v1, v0, v0, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 165
    new-instance v1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v1, v0, v0, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v1, -0x1

    .line 169
    iput v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    .line 170
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorAction:Ljava/lang/Runnable;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/widget/FrameLayout;

    .line 220
    iput-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    new-array v2, v1, [Landroid/widget/TextView;

    .line 221
    iput-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    new-array v2, v1, [Landroid/widget/TextView;

    .line 222
    iput-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    new-array v2, v1, [Landroid/widget/FrameLayout;

    .line 223
    iput-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    .line 230
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 246
    iput v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    .line 251
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->blendMode:Landroid/graphics/PorterDuff$Mode;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 259
    iput v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxScale:F

    const-string v2, "640_360"

    .line 278
    iput-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    const/16 v2, 0x780

    .line 279
    iput v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    .line 293
    iput v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    .line 294
    iput-boolean p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->showColor:Z

    .line 295
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    .line 296
    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 297
    iput-boolean p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->rotatePreview:Z

    .line 298
    instance-of p2, p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz p2, :cond_0

    .line 299
    check-cast p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 300
    iget-boolean p2, p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->motion:Z

    iput-boolean p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    .line 301
    iget-object p2, p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz p2, :cond_0

    .line 303
    iget p1, p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->intensity:F

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    .line 304
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p1

    if-nez p1, :cond_0

    .line 305
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    .line 309
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    .line 310
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    .line 311
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    .line 312
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 316
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZIZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZIZZ)V
    .locals 4

    .line 320
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->useDefaultThemeForButtons:Z

    .line 138
    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    .line 162
    new-instance v1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 163
    new-instance v1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v1, v2, v0, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 164
    new-instance v1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v1, v0, v0, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 165
    new-instance v1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v1, v0, v0, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v1, -0x1

    .line 169
    iput v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    .line 170
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorAction:Ljava/lang/Runnable;

    const/4 v1, 0x2

    new-array v3, v1, [Landroid/widget/FrameLayout;

    .line 220
    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    new-array v3, v1, [Landroid/widget/TextView;

    .line 221
    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    new-array v3, v1, [Landroid/widget/TextView;

    .line 222
    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    new-array v1, v1, [Landroid/widget/FrameLayout;

    .line 223
    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    .line 230
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 246
    iput v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    .line 251
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->blendMode:Landroid/graphics/PorterDuff$Mode;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 259
    iput v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxScale:F

    const-string v1, "640_360"

    .line 278
    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    const/16 v1, 0x780

    .line 279
    iput v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    .line 321
    iput p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    .line 322
    iput-boolean p5, p0, Lorg/telegram/ui/ThemePreviewActivity;->nightTheme:Z

    .line 323
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 324
    iput-boolean p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->deleteOnCancel:Z

    .line 325
    iput-boolean p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->editingTheme:Z

    if-ne p3, v0, :cond_0

    xor-int/lit8 p2, p4, 0x1

    .line 328
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz p1, :cond_2

    .line 330
    iput-boolean v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->useDefaultThemeForButtons:Z

    .line 331
    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupAccentColor:I

    .line 332
    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupAccentColor2:I

    .line 333
    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAccentColor:I

    .line 334
    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor1:I

    .line 335
    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor2:I

    .line 336
    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor3:I

    .line 337
    iget-boolean p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    iput-boolean p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAnimated:Z

    .line 338
    iget-wide p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    iput-wide p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundOverrideColor:J

    .line 339
    iget-wide p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    iput-wide p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor1:J

    .line 340
    iget-wide p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    iput-wide p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor2:J

    .line 341
    iget-wide p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    iput-wide p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor3:J

    .line 342
    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupIntensity:F

    .line 343
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupSlug:Ljava/lang/String;

    .line 344
    iget p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundRotation:I

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 348
    iput-boolean v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->useDefaultThemeForButtons:Z

    .line 350
    :cond_1
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz p1, :cond_2

    .line 352
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 355
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz p1, :cond_4

    .line 356
    iget-boolean p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternMotion:Z

    iput-boolean p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    .line 357
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 358
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    .line 360
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeTemporary(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Z)V

    .line 362
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->goingToPreviewTheme:I

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 363
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    .line 364
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    .line 365
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    .line 366
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->blendMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ThemePreviewActivity;)[Landroid/widget/FrameLayout;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    .line 126
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->checkDiscard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ThemePreviewActivity;Z)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->cancelThemeApply(Z)V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ThemePreviewActivity;I)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(I)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->removeBackgroundOverride:Z

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/tgnet/TLRPC$TL_wallPaper;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ThemePreviewActivity;)F
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/ThemePreviewActivity;F)F
    .locals 0

    .line 126
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->saveAccentWallpaper()V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->nightTheme:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ThemePreviewActivity;)Ljava/lang/Object;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor3:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ThemePreviewActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/UndoView;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ThemePreviewActivity;)F
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxScale:F

    return p0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/ThemePreviewActivity;F)F
    .locals 0

    .line 126
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxScale:F

    return p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/WallpaperParallaxEffect;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RadialProgress2;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->progressVisible:Z

    return p0
.end method

.method static synthetic access$4302(Lorg/telegram/ui/ThemePreviewActivity;Z)Z
    .locals 0

    .line 126
    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->progressVisible:Z

    return p1
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ThemePreviewActivity;)[Lorg/telegram/ui/Components/WallpaperCheckBoxView;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/ThemePreviewActivity;)[Lorg/telegram/ui/Components/WallpaperCheckBoxView;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->wasScroll:Z

    return p0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/ThemePreviewActivity;Z)Z
    .locals 0

    .line 126
    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->wasScroll:Z

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/ThemePreviewActivity;IZZ)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    return-void
.end method

.method static synthetic access$5200(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->onColorsRotate()V

    return-void
.end method

.method static synthetic access$5400(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/ColorPicker;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->sheetDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/ThemePreviewActivity;IIZZ)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    return-void
.end method

.method static synthetic access$5900(Lorg/telegram/ui/ThemePreviewActivity;IIZ)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemePreviewActivity;->scheduleApplyColor(IIZ)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/ThemePreviewActivity;)J
    .locals 2

    .line 126
    iget-wide v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->watchForKeyboardEndTime:J

    return-wide v0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/view/View;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dotsContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/ThemePreviewActivity;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/ThemePreviewActivity;Ljava/lang/String;)I
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->getButtonsColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$7002(Lorg/telegram/ui/ThemePreviewActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 126
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$7102(Lorg/telegram/ui/ThemePreviewActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 126
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->motionAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$7202(Lorg/telegram/ui/ThemePreviewActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 126
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$7302(Lorg/telegram/ui/ThemePreviewActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 126
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$7400(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    return p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    return p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    return p0
.end method

.method private animateMotionChange()V
    .locals 9

    .line 3391
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->motionAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 3392
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3394
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->motionAnimation:Landroid/animation/AnimatorSet;

    .line 3395
    iget-boolean v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    new-array v1, v2, [Landroid/animation/Animator;

    .line 3396
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v3, [F

    iget v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxScale:F

    aput v7, v6, v4

    .line 3397
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v3, [F

    iget v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxScale:F

    aput v7, v6, v4

    .line 3398
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v3

    .line 3396
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    .line 3400
    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v3, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v4

    .line 3401
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v1, v4

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v3, [F

    aput v8, v7, v4

    .line 3402
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v3, [F

    const/4 v8, 0x0

    aput v8, v7, v4

    .line 3403
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    aput v8, v3, v4

    .line 3404
    invoke-static {v5, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3400
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3406
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->motionAnimation:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3407
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->motionAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$30;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemePreviewActivity$30;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3413
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->motionAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private applyColor(II)V
    .locals 7

    .line 2937
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-nez p2, :cond_0

    .line 2939
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    .line 2940
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors()V

    goto/16 :goto_2

    :cond_0
    if-ne p2, v2, :cond_10

    .line 2942
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    .line 2943
    invoke-static {v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors(ZZ)V

    .line 2944
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 2945
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/ThemePreviewActivity;->hasChanges(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ColorPicker;->setHasChanges(Z)V

    .line 2946
    invoke-direct {p0, v2}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    goto/16 :goto_2

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_9

    .line 2949
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    if-nez v0, :cond_2

    .line 2950
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    int-to-long v3, p1

    iput-wide v3, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    goto :goto_0

    :cond_2
    const-wide v5, 0x100000000L

    if-ne p2, v2, :cond_4

    const-string p2, "chat_wallpaper_gradient_to"

    .line 2953
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(Ljava/lang/String;)I

    move-result p2

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 2955
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v5, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    goto :goto_0

    .line 2957
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    int-to-long v3, p1

    iput-wide v3, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    goto :goto_0

    :cond_4
    if-ne p2, v4, :cond_6

    const-string p2, "key_chat_wallpaper_gradient_to2"

    .line 2960
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(Ljava/lang/String;)I

    move-result p2

    if-nez p1, :cond_5

    if-eqz p2, :cond_5

    .line 2962
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v5, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    goto :goto_0

    .line 2964
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    int-to-long v3, p1

    iput-wide v3, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    goto :goto_0

    :cond_6
    if-ne p2, v3, :cond_8

    const-string p2, "key_chat_wallpaper_gradient_to3"

    .line 2967
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(Ljava/lang/String;)I

    move-result p2

    if-nez p1, :cond_7

    if-eqz p2, :cond_7

    .line 2969
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v5, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    goto :goto_0

    .line 2971
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    int-to-long v3, p1

    iput-wide v3, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    .line 2975
    :cond_8
    :goto_0
    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors(ZZ)V

    .line 2976
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/ThemePreviewActivity;->hasChanges(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ColorPicker;->setHasChanges(Z)V

    .line 2977
    invoke-direct {p0, v2}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    goto :goto_2

    :cond_9
    if-ne v0, v3, :cond_10

    .line 2979
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    if-nez p2, :cond_a

    .line 2980
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    goto :goto_1

    :cond_a
    if-ne p2, v2, :cond_b

    .line 2982
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    goto :goto_1

    :cond_b
    if-ne p2, v4, :cond_d

    .line 2984
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v0, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    .line 2985
    iput p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v0, :cond_c

    if-nez p1, :cond_c

    .line 2987
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_1

    :cond_c
    if-nez v0, :cond_e

    if-eqz p1, :cond_e

    .line 2989
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 2990
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->showAnimationHint()V

    goto :goto_1

    .line 2993
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    .line 2995
    :cond_e
    :goto_1
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    if-ltz p2, :cond_f

    .line 2996
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v0, v0, v2

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    .line 2998
    :cond_f
    invoke-static {v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors(ZZ)V

    .line 2999
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 3000
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/ThemePreviewActivity;->hasChanges(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ColorPicker;->setHasChanges(Z)V

    .line 3001
    invoke-direct {p0, v2}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    .line 3004
    :cond_10
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDescriptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move p2, v1

    :goto_3
    if-ge p2, p1, :cond_11

    .line 3005
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDescriptions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 3006
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 3009
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 3010
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 3011
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dotsContainer:Landroid/view/View;

    if-eqz p1, :cond_12

    .line 3012
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_12
    return-void
.end method

.method private cancelThemeApply(Z)V
    .locals 5

    .line 2806
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    .line 2808
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_0
    return-void

    .line 2812
    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->applyPreviousTheme()V

    .line 2813
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2814
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 2815
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->editingTheme:Z

    if-eqz v0, :cond_2

    .line 2816
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupAccentColor:I

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    .line 2817
    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupAccentColor2:I

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    .line 2818
    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAccentColor:I

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    .line 2819
    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor1:I

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    .line 2820
    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor2:I

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    .line 2821
    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor3:I

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    .line 2822
    iget-boolean v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAnimated:Z

    iput-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    .line 2823
    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundOverrideColor:J

    iput-wide v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    .line 2824
    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor1:J

    iput-wide v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    .line 2825
    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor2:J

    iput-wide v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    .line 2826
    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor3:J

    iput-wide v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    .line 2827
    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundRotation:I

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    .line 2828
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupSlug:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    .line 2829
    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupIntensity:F

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    .line 2831
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-static {v0, v2, v1, v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->saveThemeAccents(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZZZ)V

    goto :goto_0

    .line 2833
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v0, :cond_4

    .line 2834
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-boolean v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->deleteOnCancel:Z

    invoke-static {v0, v2, v1, v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->saveThemeAccents(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZZZ)V

    .line 2836
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0, v2, v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildAllFragmentViews(ZZ)V

    .line 2837
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->deleteOnCancel:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->isThemeInstalled(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2838
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_5
    :goto_0
    if-nez p1, :cond_6

    .line 2842
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_6
    return-void
.end method

.method private checkDiscard()Z
    .locals 6

    .line 2484
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupAccentColor:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupAccentColor2:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAccentColor:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor1:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor2:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor3:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    iget-boolean v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAnimated:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    iget-wide v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundOverrideColor:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    iget-wide v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor1:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    iget-wide v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor2:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    iget-wide v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor3:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupIntensity:F

    sub-float/2addr v0, v2

    .line 2496
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3a83126f    # 0.001f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundRotation:I

    if-ne v2, v3, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    .line 2498
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-boolean v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternMotion:Z

    iget-boolean v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    if-ne v2, v3, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    .line 2502
    :cond_2
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2503
    sget v1, Lorg/telegram/messenger/R$string;->SaveChangesAlertTitle:I

    const-string v2, "SaveChangesAlertTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2504
    sget v1, Lorg/telegram/messenger/R$string;->SaveChangesAlertText:I

    const-string v2, "SaveChangesAlertText"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2505
    sget v1, Lorg/telegram/messenger/R$string;->Save:I

    const-string v2, "Save"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2506
    sget v1, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    const-string v2, "PassportDiscard"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2507
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, 0x0

    return v0

    :cond_3
    return v1
.end method

.method private getButtonsColor(Ljava/lang/String;)I
    .locals 1

    .line 2847
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->useDefaultThemeForButtons:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColor(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method private getThemeDescriptionsInternal()Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 4641
    new-instance v9, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda22;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    .line 4651
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4652
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "windowBackgroundWhite"

    move-object v1, v11

    move-object v7, v9

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4653
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ThemePreviewActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "actionBarDefault"

    move-object v12, v1

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4655
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v27, "actionBarDefault"

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4656
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v14, 0x0

    const-string v18, "actionBarDefaultSelector"

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4657
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/16 v22, 0x0

    const-string v26, "actionBarDefaultTitle"

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4658
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const-string v18, "actionBarDefaultSearch"

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4659
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const-string v26, "actionBarDefaultSearchPlaceholder"

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4661
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v18, "actionBarDefault"

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4662
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v26, "actionBarDefaultTitle"

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4663
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBTITLECOLOR:I

    const-string v18, "actionBarDefaultSubtitle"

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4664
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v26, "actionBarDefaultSelector"

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4665
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const-string v8, "actionBarDefaultSubmenuBackground"

    move-object v1, v11

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4666
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const-string v8, "actionBarDefaultSubmenuItem"

    move-object v1, v11

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4668
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/16 v18, 0x0

    const-string v19, "actionBarDefault"

    move-object v12, v1

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4669
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "actionBarDefault"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4671
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v14, 0x0

    const-string v18, "chats_actionIcon"

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4672
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-string v9, "chats_actionBackground"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4673
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v13, v2, v3

    const-string v18, "chats_actionPressedBackground"

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4675
    iget-boolean v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->useDefaultThemeForButtons:Z

    if-nez v1, :cond_0

    .line 4676
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->saveButtonsContainer:Landroid/widget/FrameLayout;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4677
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "chat_fieldOverlayText"

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4678
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v9, "chat_fieldOverlayText"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4681
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v1, :cond_1

    .line 4682
    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/ColorPicker;->provideThemeDescriptions(Ljava/util/List;)V

    .line 4685
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    move v2, v1

    .line 4686
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 4687
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v12, v5, v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v1

    const/16 v17, 0x0

    const-string v18, "chat_messagePanelShadow"

    move-object v11, v3

    move-object/from16 v16, v4

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4688
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v20, v4, v2

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->chat_composeBackgroundPaint:Landroid/graphics/Paint;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, "chat_messagePanelBackground"

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    .line 4691
    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 4692
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v12, v5, v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v5, v4, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v1

    const/16 v17, 0x0

    const-string v18, "chat_messagePanelShadow"

    move-object v11, v3

    move-object/from16 v16, v5

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4693
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v20, v5, v2

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->chat_composeBackgroundPaint:Landroid/graphics/Paint;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, "chat_messagePanelBackground"

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4696
    :cond_3
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v3, v4, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v3, v1

    const/16 v17, 0x0

    const-string v18, "chat_messagePanelShadow"

    move-object v11, v2

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4697
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->chat_composeBackgroundPaint:Landroid/graphics/Paint;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, "chat_messagePanelBackground"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4698
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChatText:Landroid/widget/TextView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v16, 0x0

    const-string v18, "chat_fieldOverlayText"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v1

    .line 4700
    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 4701
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v12, v5, v2

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "chat_fieldOverlayText"

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v1

    .line 4703
    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 4704
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v12, v5, v2

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "chat_fieldOverlayText"

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4707
    :cond_5
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    const/4 v13, 0x0

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Components/SeekBarView;

    aput-object v3, v14, v1

    const-string v3, "innerPaint1"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "player_progressBackground"

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4708
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    const/16 v22, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/SeekBarView;

    aput-object v6, v5, v1

    const-string v6, "outerPaint1"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v28, "player_progress"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v5

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4710
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->intensityCell:Lorg/telegram/ui/Cells/HeaderCell;

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v3, v14, v1

    const-string v3, "textView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v15

    const-string v19, "windowBackgroundWhiteBlueHeader"

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4712
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v6, v5, v1

    const/16 v24, 0x0

    const/4 v6, 0x2

    new-array v7, v6, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v8, v7, v1

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v8, v7, v4

    const-string v27, "chat_inBubble"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v5

    move-object/from16 v25, v7

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4713
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v3, v14, v1

    const/4 v15, 0x0

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v3, v1

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v3, v4

    const-string v18, "chat_inBubbleSelected"

    move-object v11, v2

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4715
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v2, :cond_6

    .line 4716
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v13, 0x0

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v3, v14, v1

    const/4 v15, 0x0

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v16

    const/16 v17, 0x0

    const-string v18, "chat_inBubbleShadow"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4717
    :cond_6
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v21, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v7, v5, v1

    const/16 v23, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v24

    const/16 v25, 0x0

    const-string v26, "chat_inBubbleShadow"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4718
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v13, 0x0

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v3, v14, v1

    const/4 v15, 0x0

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v3, v1

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v3, v4

    const/16 v17, 0x0

    const-string v18, "chat_outBubble"

    move-object v11, v2

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4719
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v7, v5, v1

    new-array v7, v6, [Landroid/graphics/drawable/Drawable;

    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v8, v7, v1

    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v8, v7, v4

    const-string v26, "chat_outBubbleGradient"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    move-object/from16 v24, v7

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4720
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v3, v14, v1

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v3, v1

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v3, v4

    const-string v18, "chat_outBubbleGradient2"

    move-object v11, v2

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4721
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v7, v5, v1

    new-array v7, v6, [Landroid/graphics/drawable/Drawable;

    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v8, v7, v1

    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v8, v7, v4

    const-string v26, "chat_outBubbleGradient3"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    move-object/from16 v24, v7

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4722
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v3, v14, v1

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v3, v1

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v3, v4

    const-string v18, "chat_outBubbleSelected"

    move-object v11, v2

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4723
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v7, v5, v1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v24

    const-string v26, "chat_outBubbleShadow"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4724
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v3, v14, v1

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v16

    const-string v18, "chat_outBubbleShadow"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4725
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v7, v5, v1

    const/16 v24, 0x0

    const-string v26, "chat_messageTextIn"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4726
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v3, v14, v1

    const/16 v16, 0x0

    const-string v18, "chat_messageTextOut"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4727
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v7, v5, v1

    new-array v7, v4, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v1

    const-string v26, "chat_outSentCheck"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    move-object/from16 v24, v7

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4728
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v3, v14, v1

    new-array v3, v4, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v3, v1

    const-string v18, "chat_outSentCheckSelected"

    move-object v11, v2

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4729
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v7, v5, v1

    new-array v7, v6, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckReadDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v1

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutHalfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v4

    const-string v26, "chat_outSentCheckRead"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    move-object/from16 v24, v7

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4730
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v3, v14, v1

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckReadSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v3, v1

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutHalfCheckSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v3, v4

    const-string v18, "chat_outSentCheckReadSelected"

    move-object v11, v2

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4731
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v7, v5, v1

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaHalfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v4

    const-string v26, "chat_mediaSentCheck"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    move-object/from16 v24, v6

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4732
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v3, v14, v1

    const/16 v16, 0x0

    const-string v18, "chat_inReplyLine"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4733
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v6, v5, v1

    const/16 v24, 0x0

    const-string v26, "chat_outReplyLine"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4734
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v3, v14, v1

    const-string v18, "chat_inReplyNameText"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4735
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v6, v5, v1

    const-string v26, "chat_outReplyNameText"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4736
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v3, v14, v1

    const-string v18, "chat_inReplyMessageText"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4737
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v6, v5, v1

    const-string v26, "chat_outReplyMessageText"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4738
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v3, v14, v1

    const-string v18, "chat_inReplyMediaMessageSelectedText"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4739
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v6, v5, v1

    const-string v26, "chat_outReplyMediaMessageSelectedText"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4740
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v3, v14, v1

    const-string v18, "chat_inTimeText"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4741
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v6, v5, v1

    const-string v26, "chat_outTimeText"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4742
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v4, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v3, v14, v1

    const-string v18, "chat_inTimeSelectedText"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4743
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v1

    const-string v26, "chat_outTimeSelectedText"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v10
.end method

.method private hasChanges(I)Z
    .locals 10

    .line 2386
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->editingTheme:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_d

    .line 2390
    :cond_1
    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundOverrideColor:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    .line 2391
    iget-object v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_4

    return v2

    :cond_2
    const-string v3, "chat_wallpaper"

    .line 2395
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(Ljava/lang/String;)I

    move-result v3

    .line 2396
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v7, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    long-to-int v4, v7

    if-nez v4, :cond_3

    move v4, v3

    :cond_3
    if-eq v4, v3, :cond_4

    return v2

    .line 2402
    :cond_4
    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor1:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_b

    iget-wide v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor2:J

    cmp-long v7, v7, v5

    if-nez v7, :cond_b

    iget-wide v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor3:J

    cmp-long v7, v7, v5

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_c

    if-nez v3, :cond_6

    const-string v4, "chat_wallpaper_gradient_to"

    .line 2411
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(Ljava/lang/String;)I

    move-result v4

    .line 2412
    iget-object v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    goto :goto_1

    :cond_6
    if-ne v3, v2, :cond_7

    const-string v4, "key_chat_wallpaper_gradient_to2"

    .line 2414
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(Ljava/lang/String;)I

    move-result v4

    .line 2415
    iget-object v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    goto :goto_1

    :cond_7
    const-string v4, "key_chat_wallpaper_gradient_to3"

    .line 2417
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(Ljava/lang/String;)I

    move-result v4

    .line 2418
    iget-object v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    :goto_1
    long-to-int v9, v7

    if-nez v9, :cond_8

    cmp-long v7, v7, v5

    if-eqz v7, :cond_8

    move v9, v1

    goto :goto_2

    :cond_8
    if-nez v9, :cond_9

    move v9, v4

    :cond_9
    :goto_2
    if-eq v9, v4, :cond_a

    return v2

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2403
    :cond_b
    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v6, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    cmp-long v3, v3, v6

    if-nez v3, :cond_19

    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor2:J

    iget-wide v6, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    cmp-long v3, v3, v6

    if-nez v3, :cond_19

    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor3:J

    iget-wide v5, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    goto :goto_4

    .line 2432
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v3, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    iget v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundRotation:I

    if-eq v3, v4, :cond_d

    return v2

    :cond_d
    if-eq p1, v2, :cond_e

    if-ne p1, v0, :cond_18

    .line 2437
    :cond_e
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupAccentColor:I

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eq p1, v3, :cond_f

    return v2

    .line 2440
    :cond_f
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAccentColor:I

    if-eqz p1, :cond_10

    .line 2441
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    if-eq p1, v3, :cond_11

    return v2

    .line 2445
    :cond_10
    iget p1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    if-eqz p1, :cond_11

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    if-eq p1, v3, :cond_11

    return v2

    .line 2449
    :cond_11
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor1:I

    if-eqz p1, :cond_12

    .line 2450
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eq p1, v3, :cond_13

    return v2

    .line 2454
    :cond_12
    iget p1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz p1, :cond_13

    return v2

    .line 2458
    :cond_13
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor2:I

    if-eqz p1, :cond_14

    .line 2459
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eq p1, v3, :cond_15

    return v2

    .line 2463
    :cond_14
    iget p1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz p1, :cond_15

    return v2

    .line 2467
    :cond_15
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor3:I

    if-eqz p1, :cond_16

    .line 2468
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-eq p1, v3, :cond_17

    return v2

    .line 2472
    :cond_16
    iget p1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-eqz p1, :cond_17

    return v2

    .line 2476
    :cond_17
    iget-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAnimated:Z

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    if-eq p1, v0, :cond_18

    return v2

    :cond_18
    return v1

    :cond_19
    :goto_4
    return v2
.end method

.method private synthetic lambda$checkDiscard$18(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2505
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getActionBarMenuOnItemClick()Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;->onItemClick(I)V

    return-void
.end method

.method private synthetic lambda$checkDiscard$19(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 2506
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->cancelThemeApply(Z)V

    return-void
.end method

.method private static synthetic lambda$createView$1(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$createView$10(ILandroid/view/View;)V
    .locals 3

    .line 1692
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_0

    return-void

    .line 1695
    :cond_0
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    .line 1696
    invoke-direct {p0, p1, v1, v2}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    goto :goto_0

    .line 1698
    :cond_1
    invoke-direct {p0, v1, v2, v2}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$11(Landroid/view/View;I)V
    .locals 3

    .line 1742
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1743
    :goto_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/ThemePreviewActivity;->selectPattern(I)V

    .line 1744
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez p2, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    if-ne v0, p2, :cond_2

    .line 1745
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->animateMotionChange()V

    .line 1746
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateMotionButton()V

    .line 1748
    :cond_2
    invoke-direct {p0, v2}, Lorg/telegram/ui/ThemePreviewActivity;->updateSelectedPattern(Z)V

    .line 1749
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object p2, p2, v2

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {p2, v0, v2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    .line 1750
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1752
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    .line 1753
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    const/16 v0, 0x34

    .line 1754
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p2, v0

    if-gez p2, :cond_4

    .line 1756
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_3

    :cond_4
    add-int/2addr p1, v0

    .line 1757
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    if-le p1, p2, :cond_5

    .line 1758
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_5
    :goto_3
    return-void
.end method

.method private synthetic lambda$createView$12()V
    .locals 4

    .line 1946
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x5dc

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->watchForKeyboardEndTime:J

    .line 1947
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$createView$13(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 2046
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->cancelThemeApply(Z)V

    return-void
.end method

.method private synthetic lambda$createView$14(Landroid/view/View;)V
    .locals 6

    .line 2058
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getPreviousTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2063
    :cond_0
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->prevAccentId:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 2064
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    goto :goto_0

    .line 2066
    :cond_1
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v0

    .line 2068
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 2069
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->saveAccentWallpaper()V

    .line 2070
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-static {v2, v3, v1, v1, v1}, Lorg/telegram/ui/ActionBar/Theme;->saveThemeAccents(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZZZ)V

    .line 2071
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->clearPreviousTheme()V

    .line 2072
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-boolean v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->nightTheme:Z

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->applyTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Z)V

    .line 2073
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2, v1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildAllFragmentViews(ZZ)V

    goto :goto_1

    .line 2075
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2, v1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildAllFragmentViews(ZZ)V

    .line 2076
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    invoke-static {v2, v5, v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeFile(Ljava/io/File;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_theme;Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 2077
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->account:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v1, v1}, Lorg/telegram/messenger/MessagesController;->saveTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;ZZ)V

    .line 2078
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "themeconfig"

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2079
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lastDayTheme"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2080
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2082
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 2083
    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-nez v2, :cond_3

    .line 2084
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didApplyNewTheme:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object v0, v5, v3

    const/4 p1, 0x2

    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->deleteOnCancel:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, p1

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$createView$2(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 2

    .line 736
    iget-object p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of p4, p4, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-nez p4, :cond_5

    .line 737
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    const-string p2, "chat_serviceBackground"

    .line 739
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    instance-of p4, p4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p4, :cond_1

    .line 740
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I

    move-result-object p4

    invoke-static {p4, p1}, Lorg/telegram/ui/ActionBar/Theme;->applyChatServiceMessageColor([ILandroid/graphics/drawable/Drawable;)V

    .line 742
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 743
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    const/4 p4, 0x0

    if-eqz p1, :cond_2

    .line 744
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    move v0, p4

    :goto_0
    if-ge v0, p1, :cond_2

    .line 745
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 748
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    .line 749
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    move v0, p4

    :goto_1
    if-ge v0, p1, :cond_3

    .line 750
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 753
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    if-eqz p1, :cond_4

    const-string v0, "chat_serviceText"

    .line 754
    invoke-virtual {p1, p2, p2, v0, v0}, Lorg/telegram/ui/Components/RadialProgress2;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-nez p3, :cond_5

    .line 756
    iget-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_5

    .line 757
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 758
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateBlurred()V

    .line 759
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 0

    .line 795
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;IFF)V
    .locals 0

    .line 985
    instance-of p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p2, :cond_2

    .line 986
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 987
    invoke-virtual {p1, p3, p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->isInsideBackground(FF)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 988
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 989
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 991
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 994
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$5(IIF)V
    .locals 2

    .line 1019
    iget-boolean p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    if-nez p3, :cond_0

    return-void

    .line 1022
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 1024
    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->motionAnimation:Landroid/animation/AnimatorSet;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p3, :cond_1

    .line 1025
    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3}, Landroid/view/View;->getScaleX()F

    move-result p3

    sub-float/2addr p3, v0

    iget v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxScale:F

    sub-float/2addr v1, v0

    div-float v0, p3, v1

    .line 1029
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    int-to-float p1, p1

    mul-float/2addr p1, v0

    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 1030
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    int-to-float p2, p2

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;)V
    .locals 23

    move-object/from16 v1, p0

    .line 1053
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    .line 1054
    iget-boolean v2, v1, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->generateWallpaperName(Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Z)Ljava/lang/String;

    move-result-object v2

    .line 1055
    iget-boolean v4, v1, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3, v5}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->generateWallpaperName(Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Z)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 1056
    :goto_0
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    invoke-direct {v6, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1057
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v7, v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const-string v8, "jpg"

    const-string v10, "t"

    const/16 v11, 0x57

    const/4 v12, 0x1

    if-eqz v7, :cond_5

    .line 1058
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->originalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1060
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1061
    iget-object v7, v1, Lorg/telegram/ui/ThemePreviewActivity;->originalBitmap:Landroid/graphics/Bitmap;

    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v7, v13, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1062
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v12

    goto :goto_4

    :catch_0
    move-exception v0

    .line 1066
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1069
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    .line 1070
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasStaticThumb()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    move v0, v5

    goto :goto_4

    .line 1071
    :cond_3
    :goto_3
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1073
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1074
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v13, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1075
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1079
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_4
    if-nez v0, :cond_4

    .line 1087
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 1088
    iget v7, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v7, v0, v12}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    .line 1090
    :try_start_2
    invoke-static {v0, v6}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v7, v0

    .line 1093
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_5
    move v0, v5

    :cond_4
    :goto_6
    move v7, v5

    goto/16 :goto_f

    .line 1096
    :cond_5
    instance-of v7, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v7, :cond_a

    .line 1097
    iget-object v7, v1, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v7, :cond_9

    .line 1099
    :try_start_3
    check-cast v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 1100
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1102
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1103
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1104
    iget v14, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    const/4 v15, 0x2

    if-eqz v14, :cond_6

    goto :goto_7

    .line 1106
    :cond_6
    iget v14, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz v14, :cond_7

    .line 1107
    new-instance v14, Landroid/graphics/drawable/GradientDrawable;

    iget v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    invoke-static {v3}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v3

    new-array v11, v15, [I

    iget v9, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    aput v9, v11, v5

    iget v9, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    aput v9, v11, v12

    invoke-direct {v14, v3, v11}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1108
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v14, v5, v5, v3, v9}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1109
    invoke-virtual {v14, v13}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    .line 1111
    :cond_7
    iget v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    invoke-virtual {v13, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1113
    :goto_7
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v15}, Landroid/graphics/Paint;-><init>(I)V

    .line 1114
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    iget v11, v1, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    iget-object v14, v1, Lorg/telegram/ui/ThemePreviewActivity;->blendMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v11, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/high16 v9, 0x437f0000    # 255.0f

    .line 1115
    iget v11, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float/2addr v11, v9

    float-to-int v9, v11

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v9, 0x0

    .line 1116
    invoke-virtual {v13, v0, v9, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1118
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1119
    iget v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    if-eqz v3, :cond_8

    .line 1120
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v7, v3, v9, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_8

    .line 1122
    :cond_8
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x57

    invoke-virtual {v7, v3, v9, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1124
    :goto_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    .line 1127
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_e

    :cond_9
    :goto_9
    move v7, v5

    :goto_a
    move v0, v12

    goto/16 :goto_f

    .line 1133
    :cond_a
    instance-of v3, v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz v3, :cond_e

    .line 1134
    check-cast v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    .line 1135
    iget v3, v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->resId:I

    if-nez v3, :cond_9

    iget-object v3, v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->slug:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_9

    .line 1139
    :cond_b
    :try_start_4
    iget-object v3, v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->originalPath:Ljava/io/File;

    if-eqz v3, :cond_c

    goto :goto_b

    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->path:Ljava/io/File;

    .line 1140
    :goto_b
    invoke-virtual {v3, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v7, :cond_d

    goto :goto_a

    .line 1143
    :cond_d
    :try_start_5
    invoke-static {v3, v6}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    move v7, v5

    .line 1147
    :goto_c
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v0, v5

    goto :goto_f

    .line 1150
    :cond_e
    instance-of v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v3, :cond_10

    .line 1151
    check-cast v0, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 1153
    iget-object v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_f

    .line 1154
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    invoke-static {v0, v3, v12}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 1155
    iget v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v0, v12}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_d

    .line 1157
    :cond_f
    iget-object v0, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-static {v0, v8}, Lorg/telegram/messenger/ImageLoader;->getHttpFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1160
    :goto_d
    :try_start_6
    invoke-static {v0, v6}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_6

    :catch_5
    move-exception v0

    move-object v3, v0

    .line 1163
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_10
    :goto_e
    move v0, v5

    move v7, v0

    .line 1168
    :goto_f
    iget-boolean v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    if-eqz v3, :cond_11

    .line 1170
    :try_start_7
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1171
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1172
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x57

    invoke-virtual {v0, v9, v11, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1173
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move v0, v12

    goto :goto_10

    :catchall_1
    move-exception v0

    .line 1176
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v0, v5

    :cond_11
    :goto_10
    const/16 v3, 0x2d

    .line 1188
    iget-object v9, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v11, v9, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const-string v13, "c"

    const-string v14, "d"

    if-eqz v11, :cond_12

    .line 1189
    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 1190
    iget-object v8, v9, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    move v9, v5

    move v11, v9

    move v15, v11

    :goto_11
    const/16 v17, 0x0

    goto/16 :goto_15

    .line 1191
    :cond_12
    instance-of v11, v9, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v11, :cond_15

    .line 1192
    check-cast v9, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 1193
    iget-object v8, v9, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    move v9, v5

    move v11, v9

    move v15, v11

    move-object v8, v14

    goto :goto_11

    .line 1197
    :cond_13
    iget-object v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v3, :cond_14

    .line 1198
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    goto :goto_12

    :cond_14
    move-object v3, v13

    .line 1202
    :goto_12
    iget v8, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    .line 1203
    iget v9, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    .line 1204
    iget v11, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    .line 1205
    iget v15, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor3:I

    .line 1206
    iget v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    move/from16 v22, v8

    move-object v8, v3

    move v3, v5

    move/from16 v5, v22

    goto :goto_11

    .line 1208
    :cond_15
    instance-of v5, v9, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz v5, :cond_16

    .line 1209
    check-cast v9, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    .line 1210
    iget-object v8, v9, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->slug:Ljava/lang/String;

    .line 1211
    iget-object v5, v9, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->path:Ljava/io/File;

    :goto_13
    move-object/from16 v17, v5

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    goto :goto_15

    .line 1212
    :cond_16
    instance-of v5, v9, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v5, :cond_18

    .line 1213
    check-cast v9, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 1214
    iget-object v5, v9, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v5, :cond_17

    .line 1215
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget v8, v1, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    invoke-static {v5, v8, v12}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    .line 1216
    iget v8, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v8

    invoke-virtual {v8, v5, v12}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v5

    goto :goto_14

    .line 1218
    :cond_17
    iget-object v5, v9, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-static {v5, v8}, Lorg/telegram/messenger/ImageLoader;->getHttpFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    :goto_14
    const-string v8, ""

    goto :goto_13

    :cond_18
    move-object v8, v14

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    goto :goto_11

    .line 1226
    :goto_15
    new-instance v12, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    invoke-direct {v12}, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;-><init>()V

    .line 1227
    iput-object v4, v12, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->fileName:Ljava/lang/String;

    .line 1228
    iput-object v2, v12, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->originalFileName:Ljava/lang/String;

    .line 1229
    iput-object v8, v12, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    .line 1230
    iget-boolean v2, v1, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    iput-boolean v2, v12, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isBlurred:Z

    .line 1231
    iget-boolean v2, v1, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    iput-boolean v2, v12, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isMotion:Z

    .line 1232
    iput v5, v12, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->color:I

    .line 1233
    iput v9, v12, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor1:I

    .line 1234
    iput v11, v12, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor2:I

    .line 1235
    iput v15, v12, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor3:I

    .line 1236
    iput v3, v12, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->rotation:I

    .line 1237
    iget v2, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    iput v2, v12, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->intensity:F

    .line 1238
    iget-object v2, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v4, v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v4, :cond_1c

    .line 1239
    check-cast v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 1241
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    move-object v4, v8

    goto :goto_16

    :cond_19
    const/4 v4, 0x0

    .line 1246
    :goto_16
    iget v13, v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->intensity:F

    const/4 v14, 0x0

    cmpg-float v14, v13, v14

    if-gez v14, :cond_1a

    .line 1247
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v14

    if-nez v14, :cond_1a

    const/high16 v14, -0x40800000    # -1.0f

    mul-float/2addr v13, v14

    .line 1250
    :cond_1a
    iget-object v14, v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->parentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v14, :cond_1c

    iget v14, v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->color:I

    if-ne v14, v5, :cond_1c

    iget v5, v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor1:I

    if-ne v5, v9, :cond_1c

    iget v5, v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor2:I

    if-ne v5, v11, :cond_1c

    iget v5, v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor3:I

    if-ne v5, v15, :cond_1c

    iget-object v5, v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    .line 1251
    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    iget v4, v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientRotation:I

    if-ne v4, v3, :cond_1c

    iget-object v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v3, :cond_1b

    iget v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    sub-float/2addr v13, v3

    .line 1252
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1c

    .line 1253
    :cond_1b
    iget-object v2, v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->parentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iput-wide v3, v12, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->wallpaperId:J

    .line 1254
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaper;->access_hash:J

    iput-wide v2, v12, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->accessHash:J

    .line 1257
    :cond_1c
    iget v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    if-eqz v8, :cond_1d

    const/16 v19, 0x1

    goto :goto_17

    :cond_1d
    const/16 v19, 0x0

    :goto_17
    const-wide/16 v20, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v12

    invoke-virtual/range {v16 .. v21}, Lorg/telegram/messenger/MessagesController;->saveWallpaperToServer(Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;ZJ)V

    if-eqz v0, :cond_1f

    const-string v0, "chat_serviceBackground"

    .line 1260
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/ui/ActionBar/Theme;->serviceMessageColorBackup:I

    .line 1261
    iget-object v0, v12, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v3, 0x0

    goto :goto_18

    :cond_1e
    move-object v3, v12

    .line 1264
    :goto_18
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->setOverrideWallpaper(Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;)V

    .line 1265
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->reloadWallpaper()V

    if-nez v7, :cond_1f

    .line 1267
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/ImageLoader;->getHttpFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@100_100"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 1270
    :cond_1f
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->delegate:Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;

    if-eqz v0, :cond_20

    .line 1271
    invoke-interface {v0}, Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;->didSetNewBackground()V

    .line 1273
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$7(ILorg/telegram/ui/Components/WallpaperCheckBoxView;Landroid/view/View;)V
    .locals 3

    .line 1408
    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p3, p3, v0

    if-nez p3, :cond_11

    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_0

    goto/16 :goto_4

    .line 1411
    :cond_0
    iget p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v1, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 1412
    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    .line 1413
    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    .line 1414
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    .line 1415
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->animateMotionChange()V

    goto/16 :goto_4

    :cond_2
    const/4 v1, 0x0

    if-ne p1, v0, :cond_c

    if-eq p3, v0, :cond_3

    .line 1416
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v2, v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v2, :cond_c

    .line 1417
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1418
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastSelectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 1419
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1420
    iput-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 1421
    iput-boolean v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    .line 1422
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    .line 1423
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->animateMotionChange()V

    .line 1424
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_a

    .line 1425
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne p2, v0, :cond_4

    .line 1426
    invoke-direct {p0, v1, v0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    goto :goto_3

    .line 1428
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_5

    move p2, v0

    goto :goto_0

    :cond_5
    move p2, v1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    goto :goto_3

    .line 1432
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastSelectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz p2, :cond_7

    const/4 p2, -0x1

    goto :goto_1

    :cond_7
    move p2, v1

    :goto_1
    invoke-direct {p0, p2}, Lorg/telegram/ui/ThemePreviewActivity;->selectPattern(I)V

    .line 1433
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne p2, v0, :cond_8

    .line 1434
    invoke-direct {p0, v0, v0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    goto :goto_3

    .line 1436
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_9

    move p2, v0

    goto :goto_2

    :cond_9
    move p2, v1

    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    .line 1439
    :cond_a
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object p1, p1, v0

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz p2, :cond_b

    move v1, v0

    :cond_b
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    .line 1440
    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updateSelectedPattern(Z)V

    .line 1441
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1442
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateMotionButton()V

    goto :goto_4

    .line 1443
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v2, v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v2, :cond_e

    .line 1444
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_d

    move v1, v0

    :cond_d
    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    goto :goto_4

    :cond_e
    if-eq p3, v0, :cond_11

    .line 1446
    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p3

    xor-int/2addr p3, v0

    invoke-virtual {p2, p3, v0}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    if-nez p1, :cond_10

    .line 1448
    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    if-eqz p1, :cond_f

    .line 1450
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setForceCrossfade(Z)V

    .line 1452
    :cond_f
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateBlurred()V

    goto :goto_4

    .line 1454
    :cond_10
    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    .line 1455
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    .line 1456
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->animateMotionChange()V

    :cond_11
    :goto_4
    return-void
.end method

.method private synthetic lambda$createView$8(ILorg/telegram/ui/Components/WallpaperCheckBoxView;Landroid/view/View;)V
    .locals 1

    .line 1570
    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1574
    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p1

    const/4 p3, 0x1

    xor-int/2addr p1, p3

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    .line 1575
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p2

    iput-boolean p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    .line 1576
    invoke-static {p3, p3}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors(ZZ)V

    .line 1577
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$9(ILandroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1643
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 1647
    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundRotation:I

    iput v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    .line 1648
    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundGradientColor3:I

    const/4 v6, 0x3

    invoke-direct {v0, v5, v6, v4, v4}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    .line 1649
    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundGradientColor2:I

    invoke-direct {v0, v5, v2, v4, v4}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    .line 1650
    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundGradientColor1:I

    invoke-direct {v0, v5, v4, v4, v4}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    .line 1651
    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundColor:I

    invoke-direct {v0, v5, v3, v4, v4}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    goto :goto_2

    .line 1653
    :cond_1
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->previousSelectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v5, :cond_2

    .line 1655
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1657
    :cond_2
    iget-object v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v13, v6, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/4 v15, 0x1

    const-string v12, "jpg"

    move-object/from16 v16, v5

    invoke-virtual/range {v7 .. v16}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    .line 1659
    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v5, v5, v4

    iget-object v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_1
    invoke-virtual {v5, v6, v3}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    .line 1661
    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->previousIntensity:F

    iput v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    .line 1662
    iget-object v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    .line 1663
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    iget v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1664
    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    .line 1665
    invoke-direct {v0, v4}, Lorg/telegram/ui/ThemePreviewActivity;->updateSelectedPattern(Z)V

    .line 1667
    :goto_2
    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v5, v2, :cond_4

    .line 1668
    invoke-direct {v0, v1, v3, v4}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    goto :goto_3

    .line 1670
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v1, :cond_6

    .line 1671
    iget-boolean v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    if-eqz v1, :cond_5

    .line 1672
    iput-boolean v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    .line 1673
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    .line 1674
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->animateMotionChange()V

    .line 1676
    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateMotionButton()V

    .line 1678
    :cond_6
    invoke-direct {v0, v3, v4, v4}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    :goto_3
    return-void
.end method

.method private synthetic lambda$didReceivedNotification$21(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    .line 2785
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_0

    .line 2786
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 2787
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v0, :cond_0

    .line 2788
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const/4 p1, 0x0

    .line 2789
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    .line 2790
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    .line 2791
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2792
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsAdapter:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    if-eqz p1, :cond_0

    .line 2793
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$didReceivedNotification$22(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2784
    new-instance p2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda17;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$didReceivedNotification$23(Lorg/telegram/tgnet/TLObject;)V
    .locals 10

    .line 2746
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;

    if-eqz v0, :cond_7

    .line 2747
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;

    .line 2748
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2749
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2751
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_4

    .line 2752
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v5, :cond_0

    goto :goto_2

    .line 2755
    :cond_0
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 2756
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v6, :cond_3

    .line 2757
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_1

    iget-object v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2758
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2759
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2761
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v6, :cond_2

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2762
    iput-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 2764
    invoke-direct {p0, v1}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    .line 2765
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    :goto_1
    move v3, v4

    goto :goto_2

    .line 2766
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v6, :cond_3

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    .line 2771
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_5

    .line 2772
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2774
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsAdapter:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    if-eqz v0, :cond_6

    .line 2775
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2777
    :cond_6
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v4}, Lorg/telegram/messenger/MessagesStorage;->putWallpapers(Ljava/util/ArrayList;I)V

    .line 2779
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 2780
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPaper;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPaper;-><init>()V

    .line 2781
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperSlug;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperSlug;-><init>()V

    .line 2782
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperSlug;->slug:Ljava/lang/String;

    .line 2783
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPaper;->wallpaper:Lorg/telegram/tgnet/TLRPC$InputWallPaper;

    .line 2784
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 2798
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$didReceivedNotification$24(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2745
    new-instance p2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda16;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptionsInternal$26()V
    .locals 4

    .line 4642
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    const-string v1, "actionBarDefaultSubmenuBackground"

    .line 4643
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 4644
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "actionBarDefaultSubmenuItem"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 4646
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->sheetDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 4647
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "windowBackgroundWhite"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorScheduled:Z

    .line 172
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColor:I

    iget v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ThemePreviewActivity;->applyColor(II)V

    const/4 v0, -0x1

    .line 173
    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    return-void
.end method

.method private static synthetic lambda$onFragmentDestroy$20()V
    .locals 1

    const/4 v0, 0x0

    .line 2552
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->setChangingWallpaper(Z)V

    return-void
.end method

.method private synthetic lambda$selectColorType$15(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 2134
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    const-wide v2, 0x100000000L

    cmp-long p2, v0, v2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-wide/16 v1, 0x0

    .line 2135
    iput-wide v1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    .line 2136
    iput-wide v1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    .line 2137
    iput-wide v1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    .line 2138
    iput-wide v1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    .line 2139
    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    .line 2140
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors()V

    :cond_0
    const/4 p1, 0x1

    .line 2142
    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->removeBackgroundOverride:Z

    .line 2143
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->resetCustomWallpaper(Z)V

    const/4 p1, 0x2

    .line 2144
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(IZ)V

    return-void
.end method

.method private synthetic lambda$selectColorType$16(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 2147
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCustomWallpaperColor()Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 2148
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-object v2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    iget v3, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->color:I

    int-to-long v3, v3

    iput-wide v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    .line 2149
    iget v3, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor1:I

    int-to-long v3, v3

    iput-wide v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    .line 2150
    iget v3, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor2:I

    int-to-long v3, v3

    iput-wide v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    .line 2151
    iget v3, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor3:I

    int-to-long v3, v3

    iput-wide v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    .line 2152
    iget v3, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->rotation:I

    iput v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    .line 2153
    iget-object v3, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    iput-object v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    .line 2154
    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->intensity:F

    iput v2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    iput v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    if-eqz v3, :cond_1

    const-string p1, "c"

    .line 2155
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2156
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v2, v0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 2157
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 2158
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v4, :cond_0

    .line 2159
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2160
    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2166
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 2168
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->removeBackgroundOverride:Z

    .line 2169
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object p1, p1, v1

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    .line 2170
    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    .line 2171
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors()V

    .line 2173
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2174
    instance-of v2, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v2, :cond_7

    .line 2175
    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/16 v2, 0x64

    .line 2176
    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;)V

    .line 2177
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    .line 2178
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    cmpg-float p2, p2, v2

    if-gez p2, :cond_5

    .line 2179
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V

    .line 2181
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz p1, :cond_7

    .line 2182
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/SeekBarView;->setTwoSided(Z)V

    goto :goto_3

    .line 2184
    :cond_6
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    cmpg-float p2, p1, v2

    if-gez p2, :cond_7

    neg-float p1, p1

    .line 2185
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    .line 2188
    :cond_7
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz p1, :cond_8

    .line 2189
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    .line 2191
    :cond_8
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->resetCustomWallpaper(Z)V

    const/4 p1, 0x2

    .line 2192
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(IZ)V

    return-void
.end method

.method private synthetic lambda$selectColorType$17(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 2197
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    const-wide v2, 0x100000000L

    cmp-long p2, v0, v2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-wide/16 v1, 0x0

    .line 2198
    iput-wide v1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    .line 2199
    iput-wide v1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    .line 2200
    iput-wide v1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    .line 2201
    iput-wide v1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    .line 2202
    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    .line 2203
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors()V

    :cond_0
    const/4 p1, 0x1

    .line 2205
    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->removeBackgroundOverride:Z

    .line 2206
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->resetCustomWallpaper(Z)V

    const/4 p1, 0x2

    .line 2207
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(IZ)V

    return-void
.end method

.method private synthetic lambda$showAnimationHint$25(Landroid/content/SharedPreferences;)V
    .locals 3

    .line 3145
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 3148
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "bganimationhint"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3149
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    return-void
.end method

.method private onColorsRotate()V
    .locals 3

    .line 2105
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/16 v1, 0x168

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2106
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    add-int/lit8 v0, v0, 0x2d

    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    .line 2107
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    if-lt v0, v1, :cond_0

    add-int/lit16 v0, v0, -0x168

    .line 2108
    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    goto :goto_0

    .line 2110
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    goto :goto_2

    .line 2112
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    add-int/lit8 v2, v2, 0x2d

    iput v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    .line 2113
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    if-lt v2, v1, :cond_2

    add-int/lit16 v2, v2, -0x168

    .line 2114
    iput v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    goto :goto_1

    .line 2116
    :cond_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors()V

    :goto_2
    return-void
.end method

.method private saveAccentWallpaper()V
    .locals 9

    .line 2352
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2356
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->getPathToWallpaper()Ljava/io/File;

    move-result-object v0

    .line 2358
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2359
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2360
    instance-of v3, v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/16 v4, 0x57

    if-eqz v3, :cond_1

    .line 2361
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2362
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v0, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2363
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 2365
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2366
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2367
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2368
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2370
    new-instance v1, Landroid/graphics/Paint;

    const/4 v6, 0x2

    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 2371
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    iget v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    iget-object v8, p0, Lorg/telegram/ui/ThemePreviewActivity;->blendMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/high16 v6, 0x437f0000    # 255.0f

    .line 2372
    iget v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    mul-float/2addr v7, v6

    float-to-int v6, v7

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v6, 0x0

    .line 2373
    invoke-virtual {v5, v2, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2375
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2376
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v0, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2377
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2381
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private scheduleApplyColor(IIZ)V
    .locals 11

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p2, v0, :cond_11

    .line 2852
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-eq p1, v1, :cond_0

    if-ne p1, p3, :cond_9

    .line 2853
    :cond_0
    iget-wide v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundOverrideColor:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 2854
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v2, v6, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    goto :goto_0

    .line 2856
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v4, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    .line 2858
    :goto_0
    iget-wide v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor1:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 2859
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v2, v6, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    goto :goto_1

    .line 2861
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v4, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    .line 2863
    :goto_1
    iget-wide v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor2:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 2864
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v2, v6, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    goto :goto_2

    .line 2866
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v4, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    .line 2868
    :goto_2
    iget-wide v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor3:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    .line 2869
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v2, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    goto :goto_3

    .line 2871
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v4, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    .line 2873
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundRotation:I

    iput v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    if-ne p1, p3, :cond_9

    const-string p1, "chat_wallpaper"

    .line 2875
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(Ljava/lang/String;)I

    move-result p1

    const-string v2, "chat_wallpaper_gradient_to"

    .line 2876
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "key_chat_wallpaper_gradient_to2"

    .line 2877
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "key_chat_wallpaper_gradient_to3"

    .line 2878
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(Ljava/lang/String;)I

    move-result v4

    .line 2879
    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v6, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    long-to-int v6, v6

    .line 2880
    iget-wide v7, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v7, v7

    .line 2881
    iget-wide v8, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    long-to-int v8, v8

    .line 2882
    iget-wide v9, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    long-to-int v5, v9

    .line 2883
    iget-object v9, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v8, :cond_5

    move v4, v8

    :cond_5
    invoke-virtual {v9, v4, p2}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 2884
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v7, :cond_6

    move v3, v7

    :cond_6
    invoke-virtual {v4, v3, p3}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 2885
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v6, :cond_7

    move v2, v6

    :cond_7
    invoke-virtual {v3, v2, v1}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 2886
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v5, :cond_8

    move p1, v5

    :cond_8
    invoke-virtual {v2, p1, v0}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 2889
    :cond_9
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    if-eq p1, v1, :cond_a

    if-ne p1, p2, :cond_10

    .line 2890
    :cond_a
    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAccentColor:I

    if-eqz v2, :cond_b

    .line 2891
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v2, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    goto :goto_4

    .line 2893
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v0, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    .line 2895
    :goto_4
    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor1:I

    if-eqz v2, :cond_c

    .line 2896
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v2, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    goto :goto_5

    .line 2898
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v0, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    .line 2900
    :goto_5
    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor2:I

    if-eqz v2, :cond_d

    .line 2901
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v2, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    goto :goto_6

    .line 2903
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v0, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    .line 2905
    :goto_6
    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor3:I

    if-eqz v2, :cond_e

    .line 2906
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v2, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    goto :goto_7

    .line 2908
    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v0, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    :goto_7
    if-ne p1, p2, :cond_10

    .line 2911
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 2912
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget p2, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 2913
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget p2, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 2914
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget p3, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    if-eqz p3, :cond_f

    goto :goto_8

    :cond_f
    iget p3, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    :goto_8
    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 2917
    :cond_10
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors()V

    .line 2918
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    return-void

    .line 2921
    :cond_11
    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    if-eq v2, v0, :cond_12

    if-eq v2, p2, :cond_12

    .line 2922
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2924
    :cond_12
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColor:I

    .line 2925
    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    if-eqz p3, :cond_13

    .line 2927
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorAction:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_9

    .line 2929
    :cond_13
    iget-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorScheduled:Z

    if-nez p1, :cond_14

    .line 2930
    iput-boolean v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorScheduled:Z

    .line 2931
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorAction:Ljava/lang/Runnable;

    const-wide/16 v0, 0x10

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_14
    :goto_9
    return-void
.end method

.method private selectColorType(I)V
    .locals 1

    const/4 v0, 0x1

    .line 2121
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(IZ)V

    return-void
.end method

.method private selectColorType(IZ)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2125
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2a

    iget v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    if-eq v2, v1, :cond_2a

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    goto/16 :goto_14

    :cond_0
    const/4 v2, 0x2

    if-eqz p2, :cond_4

    if-ne v1, v2, :cond_4

    .line 2128
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasCustomWallpaper()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v3, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    const-wide v5, 0x100000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 2129
    :cond_1
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2130
    sget v2, Lorg/telegram/messenger/R$string;->ChangeChatBackground:I

    const-string v3, "ChangeChatBackground"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2131
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasCustomWallpaper()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCustomWallpaperColor()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 2195
    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->ChangeWallpaperToColor:I

    const-string v3, "ChangeWallpaperToColor"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2196
    sget v2, Lorg/telegram/messenger/R$string;->Change:I

    const-string v3, "Change"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2209
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v3, "Cancel"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 2132
    :cond_3
    :goto_0
    sget v2, Lorg/telegram/messenger/R$string;->ChangeColorToColor:I

    const-string v3, "ChangeColorToColor"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2133
    sget v2, Lorg/telegram/messenger/R$string;->Reset:I

    const-string v3, "Reset"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2146
    sget v2, Lorg/telegram/messenger/R$string;->Continue:I

    const-string v3, "Continue"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2211
    :goto_1
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 2214
    :cond_4
    iget v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    .line 2215
    iput v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v6, :cond_20

    const/16 v7, 0x3c

    if-eq v1, v2, :cond_d

    if-eq v1, v4, :cond_5

    goto/16 :goto_12

    .line 2276
    :cond_5
    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->ColorPickerMyMessages:I

    const-string v11, "ColorPickerMyMessages"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2278
    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v10, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v10, :cond_8

    .line 2279
    iget v10, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-eqz v10, :cond_6

    const/4 v13, 0x4

    goto :goto_2

    .line 2281
    :cond_6
    iget v8, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v8, :cond_7

    move v13, v4

    goto :goto_2

    :cond_7
    move v13, v2

    goto :goto_2

    :cond_8
    move v13, v6

    .line 2289
    :goto_2
    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const/4 v10, 0x2

    invoke-direct {v0, v4}, Lorg/telegram/ui/ThemePreviewActivity;->hasChanges(I)Z

    move-result v11

    const/4 v12, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Lorg/telegram/ui/Components/ColorPicker;->setType(IZIIZIZ)V

    .line 2290
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    invoke-virtual {v8, v9, v4}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 2291
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    invoke-virtual {v8, v9, v2}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 2292
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-virtual {v8, v9, v6}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 2293
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v10, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    if-eqz v10, :cond_9

    goto :goto_3

    :cond_9
    iget v10, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    :goto_3
    invoke-virtual {v8, v10, v5}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 2294
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v6

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-virtual {v8, v5, v9}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    .line 2295
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v6

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-virtual {v8, v6, v9}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    .line 2296
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v6

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    invoke-virtual {v8, v2, v9}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    .line 2297
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v6

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    invoke-virtual {v8, v4, v9}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    .line 2298
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v8, v8, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v8, :cond_b

    if-ne v3, v6, :cond_a

    .line 2300
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_4

    .line 2302
    :cond_a
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_4

    :cond_b
    if-ne v3, v2, :cond_c

    .line 2305
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 2307
    :cond_c
    :goto_4
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v8, v5, v7}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 2308
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->showAnimationHint()V

    goto/16 :goto_12

    .line 2230
    :cond_d
    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->ColorPickerBackground:I

    const-string v11, "ColorPickerBackground"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v9, "chat_wallpaper"

    .line 2232
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    const-string v10, "chat_wallpaper_gradient_to"

    .line 2233
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    goto :goto_5

    :cond_e
    move v10, v5

    :goto_5
    const-string v11, "key_chat_wallpaper_gradient_to2"

    .line 2234
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    goto :goto_6

    :cond_f
    move v11, v5

    :goto_6
    const-string v12, "key_chat_wallpaper_gradient_to3"

    .line 2235
    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v12

    goto :goto_7

    :cond_10
    move v12, v5

    .line 2237
    :goto_7
    iget-object v13, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v14, v13, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    long-to-int v8, v14

    const-wide/16 v16, 0x0

    if-nez v8, :cond_11

    cmp-long v14, v14, v16

    if-eqz v14, :cond_11

    move v10, v5

    .line 2241
    :cond_11
    iget-wide v14, v13, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v7, v14

    if-nez v7, :cond_12

    cmp-long v14, v14, v16

    if-eqz v14, :cond_12

    move v11, v5

    .line 2245
    :cond_12
    iget-wide v14, v13, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    long-to-int v5, v14

    if-nez v5, :cond_13

    cmp-long v14, v14, v16

    if-eqz v14, :cond_13

    const/4 v12, 0x0

    .line 2249
    :cond_13
    iget-wide v13, v13, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    long-to-int v13, v13

    if-nez v8, :cond_15

    if-eqz v10, :cond_14

    goto :goto_8

    :cond_14
    move/from16 v22, v6

    goto :goto_b

    :cond_15
    :goto_8
    if-nez v5, :cond_19

    if-eqz v12, :cond_16

    goto :goto_a

    :cond_16
    if-nez v7, :cond_18

    if-eqz v11, :cond_17

    goto :goto_9

    :cond_17
    move/from16 v22, v2

    goto :goto_b

    :cond_18
    :goto_9
    move/from16 v22, v4

    goto :goto_b

    :cond_19
    :goto_a
    const/16 v22, 0x4

    .line 2262
    :goto_b
    iget-object v14, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const/16 v19, 0x2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ThemePreviewActivity;->hasChanges(I)Z

    move-result v20

    const/16 v21, 0x4

    const/16 v23, 0x0

    iget-object v15, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v15, v15, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    const/16 v25, 0x0

    move-object/from16 v18, v14

    move/from16 v24, v15

    invoke-virtual/range {v18 .. v25}, Lorg/telegram/ui/Components/ColorPicker;->setType(IZIIZIZ)V

    .line 2263
    iget-object v14, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v5, :cond_1a

    goto :goto_c

    :cond_1a
    move v5, v12

    :goto_c
    invoke-virtual {v14, v5, v4}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 2264
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v7, :cond_1b

    goto :goto_d

    :cond_1b
    move v7, v11

    :goto_d
    invoke-virtual {v5, v7, v2}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 2265
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v8, :cond_1c

    goto :goto_e

    :cond_1c
    move v8, v10

    :goto_e
    invoke-virtual {v5, v8, v6}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 2266
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v13, :cond_1d

    move v9, v13

    :cond_1d
    const/4 v7, 0x0

    invoke-virtual {v5, v9, v7}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    if-eq v3, v6, :cond_1f

    .line 2267
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v5, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-nez v5, :cond_1e

    goto :goto_f

    .line 2270
    :cond_1e
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_10

    .line 2268
    :cond_1f
    :goto_f
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 2272
    :goto_10
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v8, 0x3c

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_12

    .line 2218
    :cond_20
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->ColorPickerMainColor:I

    const-string v8, "ColorPickerMainColor"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2219
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v5, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v5, :cond_21

    move v11, v2

    goto :goto_11

    :cond_21
    move v11, v6

    .line 2220
    :goto_11
    iget-object v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const/4 v8, 0x1

    invoke-direct {v0, v6}, Lorg/telegram/ui/ThemePreviewActivity;->hasChanges(I)Z

    move-result v9

    const/4 v10, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v7 .. v14}, Lorg/telegram/ui/Components/ColorPicker;->setType(IZIIZIZ)V

    .line 2221
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 2222
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v5, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v5, :cond_22

    .line 2223
    iget-object v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v7, v5, v6}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    :cond_22
    if-eq v3, v2, :cond_23

    if-ne v3, v4, :cond_24

    .line 2225
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v5, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v5, :cond_24

    .line 2226
    :cond_23
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_24
    :goto_12
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eq v1, v6, :cond_26

    if-ne v1, v4, :cond_25

    goto :goto_13

    .line 2330
    :cond_25
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/ColorPicker;->setMinBrightness(F)V

    .line 2331
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/ColorPicker;->setMaxBrightness(F)V

    goto :goto_14

    :cond_26
    :goto_13
    if-ne v3, v2, :cond_27

    .line 2314
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_27

    const/4 v2, 0x0

    .line 2315
    invoke-direct {v0, v2, v6, v6}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    :cond_27
    if-ne v1, v6, :cond_29

    .line 2319
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2320
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ColorPicker;->setMinBrightness(F)V

    goto :goto_14

    .line 2322
    :cond_28
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const v2, 0x3d4ccccd    # 0.05f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ColorPicker;->setMinBrightness(F)V

    .line 2323
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ColorPicker;->setMaxBrightness(F)V

    goto :goto_14

    .line 2326
    :cond_29
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/ColorPicker;->setMinBrightness(F)V

    .line 2327
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/ColorPicker;->setMaxBrightness(F)V

    :cond_2a
    :goto_14
    return-void
.end method

.method private selectPattern(I)V
    .locals 10

    if-ltz p1, :cond_0

    .line 2337
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2338
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    goto :goto_0

    .line 2340
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastSelectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 2345
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/4 v8, 0x1

    const-string v5, "jpg"

    move-object v9, p1

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    .line 2346
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 2347
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2348
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    return-void
.end method

.method private setBackgroundColor(IIZZ)V
    .locals 5

    const/4 p3, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 3546
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_1

    .line 3548
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    .line 3550
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    goto :goto_0

    :cond_2
    if-ne p2, p3, :cond_3

    .line 3552
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor3:I

    .line 3554
    :cond_3
    :goto_0
    invoke-direct {p0, p4}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    .line 3555
    iget-object p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    const/4 v2, 0x0

    if-eqz p4, :cond_5

    move p4, v2

    .line 3556
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    array-length v4, v3

    if-ge p4, v4, :cond_5

    .line 3557
    aget-object v4, v3, p4

    if-eqz v4, :cond_4

    .line 3558
    aget-object v3, v3, p4

    invoke-virtual {v3, p2, p1}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    :cond_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 3562
    :cond_5
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    if-eqz p1, :cond_9

    .line 3563
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz p1, :cond_6

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3564
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/SeekBarView;->setTwoSided(Z)V

    .line 3566
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3568
    instance-of p2, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p2, :cond_7

    .line 3569
    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    goto :goto_2

    .line 3571
    :cond_7
    new-instance p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    .line 3572
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setParentView(Landroid/view/View;)V

    .line 3573
    iget-boolean p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->rotatePreview:Z

    if-eqz p2, :cond_8

    .line 3574
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatePreview(Z)V

    .line 3577
    :cond_8
    :goto_2
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    iget p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    iget v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor3:I

    invoke-virtual {p1, p2, p4, v3, v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIII)V

    .line 3578
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3579
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    const/high16 p1, 0x2d000000

    .line 3580
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    goto :goto_3

    .line 3581
    :cond_9
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz p1, :cond_a

    .line 3582
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    invoke-static {p2}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object p2

    new-array p4, v0, [I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    aput v3, p4, v2

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    aput v3, p4, v1

    invoke-direct {p1, p2, p4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 3583
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3584
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    goto :goto_3

    .line 3586
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3587
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    :goto_3
    const-string p1, "chat_serviceBackground"

    .line 3589
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(Ljava/lang/String;)Z

    move-result p2

    const/4 p4, 0x4

    if-eqz p2, :cond_c

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p2, :cond_b

    goto :goto_4

    .line 3591
    :cond_b
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p2, :cond_d

    .line 3592
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    new-array p4, p4, [I

    aput p2, p4, v2

    aput p2, p4, v1

    aput p2, p4, v0

    aput p2, p4, p3

    .line 3593
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p4, p2}, Lorg/telegram/ui/ActionBar/Theme;->applyChatServiceMessageColor([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_c
    :goto_4
    new-array p2, p4, [I

    .line 3590
    iget p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    aput p4, p2, v2

    aput p4, p2, v1

    aput p4, p2, v0

    aput p4, p2, p3

    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->applyChatServiceMessageColor([ILandroid/graphics/drawable/Drawable;)V

    .line 3595
    :cond_d
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationImageView:Landroid/widget/ImageView;

    const-string p3, "chat_serviceText"

    if-eqz p2, :cond_e

    .line 3596
    new-instance p4, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3598
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_f

    .line 3599
    new-instance p4, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3601
    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p2, :cond_13

    .line 3602
    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    new-instance p4, Landroid/graphics/PorterDuffColorFilter;

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->blendMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p4}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3603
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    iget p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-virtual {p2, p4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 3604
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 3605
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p2

    if-eqz p2, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p2, :cond_11

    .line 3606
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz p2, :cond_10

    .line 3607
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/SeekBarView;->setTwoSided(Z)V

    .line 3609
    :cond_10
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    const/4 p4, 0x0

    cmpg-float p2, p2, p4

    if-gez p2, :cond_12

    .line 3610
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    iget-object p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    check-cast p4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {p2, p4}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 3613
    :cond_11
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V

    .line 3614
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz p2, :cond_12

    .line 3615
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/SeekBarView;->setTwoSided(Z)V

    .line 3618
    :cond_12
    :goto_6
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz p2, :cond_13

    .line 3619
    iget p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    .line 3622
    :cond_13
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p2, :cond_14

    .line 3623
    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 3625
    :cond_14
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_15

    .line 3626
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    move p4, v2

    :goto_7
    if-ge p4, p2, :cond_15

    .line 3627
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    add-int/lit8 p4, p4, 0x1

    goto :goto_7

    .line 3630
    :cond_15
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_16

    .line 3631
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    :goto_8
    if-ge v2, p2, :cond_16

    .line 3632
    iget-object p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3635
    :cond_16
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    if-eqz p2, :cond_17

    .line 3636
    invoke-virtual {p2, p1, p1, p3, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method private setCurrentImage(Z)V
    .locals 21

    move-object/from16 v0, p0

    .line 3641
    iget v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-nez v3, :cond_1

    .line 3642
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    move v1, v2

    goto/16 :goto_f

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v1, v4, :cond_10

    .line 3644
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const/16 v8, 0x64

    if-eqz v7, :cond_3

    .line 3645
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz p1, :cond_2

    .line 3646
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v3, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    .line 3647
    :cond_2
    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v5, v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v17, 0x1

    const-string v13, "100_100_b"

    const-string v14, "jpg"

    move-wide v15, v3

    move-object/from16 v18, v1

    invoke-virtual/range {v9 .. v18}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    goto :goto_0

    .line 3648
    :cond_3
    instance-of v7, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v7, :cond_7

    .line 3649
    check-cast v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 3650
    iget v5, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientRotation:I

    iput v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    .line 3651
    iget v5, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->color:I

    invoke-direct {v0, v5, v2, v6, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    .line 3652
    iget v5, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor1:I

    if-eqz v5, :cond_4

    .line 3653
    invoke-direct {v0, v5, v6, v6, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    .line 3655
    :cond_4
    iget v5, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor2:I

    invoke-direct {v0, v5, v4, v6, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    .line 3656
    iget v4, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor3:I

    invoke-direct {v0, v4, v3, v6, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    .line 3657
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v3, :cond_5

    .line 3658
    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v13, v0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget-object v1, v13, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/4 v12, 0x1

    const-string v9, "jpg"

    invoke-virtual/range {v4 .. v13}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    goto :goto_0

    .line 3659
    :cond_5
    iget-object v3, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    const-string v4, "d"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3660
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3661
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3663
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_6

    const/high16 v1, 0x57000000

    goto :goto_1

    .line 3666
    :cond_6
    iget v5, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->color:I

    iget v6, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor1:I

    iget v7, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor2:I

    iget v1, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor3:I

    invoke-static {v5, v6, v7, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor(IIII)I

    move-result v1

    .line 3668
    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    sget v6, Lorg/telegram/messenger/R$raw;->default_pattern:I

    invoke-static {v6, v3, v4, v1}, Lorg/telegram/messenger/SvgHelper;->getBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 3670
    :cond_7
    instance-of v3, v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz v3, :cond_c

    .line 3671
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_8

    .line 3672
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 3674
    :cond_8
    check-cast v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    .line 3675
    iget-object v3, v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->originalPath:Ljava/io/File;

    if-eqz v3, :cond_9

    .line 3676
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 3677
    :cond_9
    iget-object v3, v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->path:Ljava/io/File;

    if-eqz v3, :cond_a

    .line 3678
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 3679
    :cond_a
    iget-object v3, v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->slug:Ljava/lang/String;

    const-string v4, "t"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3680
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedWallpaper(ZLandroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 3681
    :cond_b
    iget v1, v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->resId:I

    if-eqz v1, :cond_0

    .line 3682
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 3685
    :cond_c
    instance-of v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v3, :cond_0

    .line 3686
    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 3687
    iget-object v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_f

    .line 3688
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v3, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 3689
    iget-object v4, v1, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    invoke-static {v4, v7, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    if-ne v4, v3, :cond_d

    goto :goto_2

    :cond_d
    move-object v5, v4

    :goto_2
    if-eqz v5, :cond_e

    .line 3693
    iget v4, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    goto :goto_3

    :cond_e
    move v4, v2

    .line 3694
    :goto_3
    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v6, v1, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v5, v6}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    iget-object v5, v1, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v3, v5}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    int-to-long v3, v4

    const/16 v17, 0x1

    const-string v13, "100_100_b"

    const-string v14, "jpg"

    move-wide v15, v3

    move-object/from16 v18, v1

    invoke-virtual/range {v9 .. v18}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    goto/16 :goto_0

    .line 3696
    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, v1, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    const-string v6, "100_100_b"

    invoke-virtual {v3, v4, v5, v1, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3700
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    if-eqz v1, :cond_11

    .line 3701
    invoke-interface {v1}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 3702
    iput-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    :cond_11
    const-string v1, "chat_wallpaper"

    .line 3704
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(Ljava/lang/String;)I

    move-result v1

    .line 3705
    iget-object v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    long-to-int v7, v7

    if-eqz v7, :cond_12

    move v1, v7

    :cond_12
    const-string v7, "chat_wallpaper_gradient_to"

    .line 3708
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(Ljava/lang/String;)I

    move-result v7

    .line 3709
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v8, v8, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    long-to-int v10, v8

    const-wide/16 v11, 0x0

    if-nez v10, :cond_13

    cmp-long v8, v8, v11

    if-eqz v8, :cond_13

    move v7, v2

    goto :goto_4

    :cond_13
    if-eqz v10, :cond_14

    move v7, v10

    :cond_14
    :goto_4
    const-string v8, "key_chat_wallpaper_gradient_to2"

    .line 3716
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(Ljava/lang/String;)I

    move-result v8

    .line 3717
    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v13, v9

    if-nez v13, :cond_15

    cmp-long v9, v9, v11

    if-eqz v9, :cond_15

    move v8, v2

    goto :goto_5

    :cond_15
    if-eqz v13, :cond_16

    move v8, v13

    :cond_16
    :goto_5
    const-string v9, "key_chat_wallpaper_gradient_to3"

    .line 3724
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(Ljava/lang/String;)I

    move-result v9

    .line 3725
    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v13, v10, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    long-to-int v15, v13

    if-nez v15, :cond_17

    cmp-long v11, v13, v11

    if-eqz v11, :cond_17

    move v9, v2

    goto :goto_6

    :cond_17
    if-eqz v15, :cond_18

    move v9, v15

    .line 3732
    :cond_18
    :goto_6
    iget-object v10, v10, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1d

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasCustomWallpaper()Z

    move-result v10

    if-nez v10, :cond_1d

    if-eqz v8, :cond_1b

    .line 3735
    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v10}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 3737
    instance-of v11, v10, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v11, :cond_19

    .line 3738
    check-cast v10, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    goto :goto_7

    .line 3740
    :cond_19
    new-instance v10, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v10}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    .line 3741
    iget-object v11, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setParentView(Landroid/view/View;)V

    .line 3742
    iget-boolean v11, v0, Lorg/telegram/ui/ThemePreviewActivity;->rotatePreview:Z

    if-eqz v11, :cond_1a

    .line 3743
    invoke-virtual {v10, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatePreview(Z)V

    .line 3746
    :cond_1a
    :goto_7
    invoke-virtual {v10, v1, v7, v8, v9}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIII)V

    goto :goto_8

    :cond_1b
    if-eqz v7, :cond_1c

    .line 3749
    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v10, v10, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    invoke-static {v10}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v10

    .line 3750
    new-instance v11, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    new-array v12, v4, [I

    aput v1, v12, v2

    aput v7, v12, v6

    invoke-direct {v11, v10, v12}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 3751
    new-instance v10, Lorg/telegram/ui/ThemePreviewActivity$33;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ThemePreviewActivity$33;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    .line 3761
    invoke-static {}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes;->ofDeviceScreen()Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes;

    move-result-object v12

    const-wide/16 v13, 0x64

    invoke-virtual {v11, v12, v10, v13, v14}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->startDithering(Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes;Lorg/telegram/ui/Components/BackgroundGradientDrawable$Listener;J)Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    move-result-object v10

    iput-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    move-object v10, v11

    goto :goto_8

    .line 3764
    :cond_1c
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v10, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 3766
    :goto_8
    iget-object v11, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v11, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3767
    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v10, :cond_1f

    .line 3768
    iget-object v11, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v10}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v2, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v19, 0x1

    const-string v16, "jpg"

    move-wide/from16 v17, v2

    move-object/from16 v20, v10

    invoke-virtual/range {v11 .. v20}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    goto :goto_9

    .line 3771
    :cond_1d
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 3773
    instance-of v3, v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v3, :cond_1e

    .line 3774
    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setParentView(Landroid/view/View;)V

    .line 3776
    :cond_1e
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1f
    :goto_9
    if-nez v7, :cond_20

    .line 3780
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    iput v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    goto :goto_a

    :cond_20
    if-eqz v8, :cond_21

    .line 3783
    invoke-static {v1, v7, v8, v9}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor(IIII)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    const/high16 v2, 0x2d000000

    .line 3784
    iput v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    goto :goto_a

    .line 3786
    :cond_21
    invoke-static {v1, v7}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    iput v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    .line 3789
    :goto_a
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v2, :cond_25

    .line 3790
    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    iget-object v11, v0, Lorg/telegram/ui/ThemePreviewActivity;->blendMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3791
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 3792
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 3793
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v2, :cond_23

    .line 3794
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz v2, :cond_22

    .line 3795
    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/SeekBarView;->setTwoSided(Z)V

    .line 3797
    :cond_22
    iget v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_24

    .line 3798
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_b

    .line 3801
    :cond_23
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V

    .line 3802
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz v2, :cond_24

    const/4 v3, 0x0

    .line 3803
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SeekBarView;->setTwoSided(Z)V

    .line 3806
    :cond_24
    :goto_b
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz v2, :cond_25

    .line 3807
    iget v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    .line 3810
    :cond_25
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-eqz v2, :cond_26

    const/4 v3, 0x0

    .line 3811
    :goto_c
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    array-length v5, v2

    if-ge v3, v5, :cond_26

    .line 3812
    aget-object v2, v2, v3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v1}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    .line 3813
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v3

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    .line 3814
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v3

    invoke-virtual {v2, v4, v8}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    .line 3815
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v3

    const/4 v5, 0x3

    invoke-virtual {v2, v5, v9}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 3818
    :cond_26
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationImageView:Landroid/widget/ImageView;

    const-string v2, "chat_serviceText"

    if-eqz v1, :cond_27

    .line 3819
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3821
    :cond_27
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_28

    .line 3822
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3824
    :cond_28
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_29

    .line 3825
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v1, :cond_29

    .line 3826
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 3829
    :cond_29
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2a

    .line 3830
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_2a

    .line 3831
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_2a
    const/4 v1, 0x0

    .line 3835
    :goto_f
    iput-boolean v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->rotatePreview:Z

    return-void
.end method

.method private showAnimationHint()V
    .locals 10

    .line 3128
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 3131
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "bganimationhint"

    .line 3132
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3135
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    if-nez v1, :cond_2

    .line 3136
    new-instance v1, Lorg/telegram/ui/Components/HintView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    const-wide/16 v2, 0x1388

    .line 3137
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/HintView;->setShowingDuration(J)V

    .line 3138
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3139
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3140
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    sget v2, Lorg/telegram/messenger/R$string;->BackgroundAnimateInfo:I

    const-string v3, "BackgroundAnimateInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    .line 3141
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/HintView;->setExtraTranslationY(F)V

    .line 3142
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x33

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3144
    :cond_2
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/SharedPreferences;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method private showPatternsView(IZZ)V
    .locals 18

    move-object/from16 v6, p0

    move/from16 v4, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    if-ne v4, v1, :cond_0

    .line 3215
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v2, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eqz p2, :cond_7

    if-nez v4, :cond_4

    .line 3218
    iget v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v7, v3, :cond_7

    .line 3219
    iget v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    iput v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundColor:I

    .line 3220
    iget v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    iput v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundGradientColor1:I

    .line 3221
    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    iput v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundGradientColor2:I

    .line 3222
    iget v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor3:I

    iput v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundGradientColor3:I

    .line 3223
    iget v15, v6, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundRotation:I

    iput v15, v6, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundRotation:I

    const/4 v14, 0x3

    if-eqz v9, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    if-eqz v8, :cond_2

    move v7, v14

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    move v7, v3

    goto :goto_1

    :cond_3
    move v7, v1

    .line 3234
    :goto_1
    iget-object v10, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v8, 0x0

    const/16 v17, 0x0

    move v9, v14

    move v14, v7

    move v7, v15

    move v15, v8

    move/from16 v16, v7

    invoke-virtual/range {v10 .. v17}, Lorg/telegram/ui/Components/ColorPicker;->setType(IZIIZIZ)V

    .line 3235
    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor3:I

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 3236
    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    invoke-virtual {v7, v8, v3}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 3237
    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    invoke-virtual {v7, v8, v1}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 3238
    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    invoke-virtual {v7, v8, v0}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    goto :goto_4

    .line 3241
    :cond_4
    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->previousSelectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 3242
    iget v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    iput v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->previousIntensity:F

    .line 3243
    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsAdapter:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3244
    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    .line 3246
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v8, :cond_5

    move v7, v0

    goto :goto_3

    .line 3249
    :cond_5
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v8, v3, :cond_6

    move v8, v1

    goto :goto_2

    :cond_6
    move v8, v0

    :goto_2
    add-int/2addr v7, v8

    .line 3251
    :goto_3
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    const/16 v10, 0x7c

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    div-int/2addr v9, v3

    invoke-virtual {v8, v7, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 3255
    :cond_7
    :goto_4
    iget v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-eq v7, v1, :cond_8

    if-ne v7, v3, :cond_a

    .line 3256
    :cond_8
    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-eqz v5, :cond_9

    move v8, v3

    goto :goto_5

    :cond_9
    move v8, v0

    :goto_5
    aget-object v7, v7, v8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    const/4 v7, 0x0

    if-ne v4, v1, :cond_b

    .line 3258
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/SeekBarView;->isTwoSided()Z

    move-result v8

    if-nez v8, :cond_b

    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    cmpg-float v9, v8, v7

    if-gez v9, :cond_b

    neg-float v8, v8

    .line 3259
    iput v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    .line 3260
    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v9, v8}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    :cond_b
    const/16 v8, 0x30

    const/16 v9, 0x15

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz p3, :cond_18

    .line 3263
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    .line 3264
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v4, :cond_c

    move v11, v1

    goto :goto_6

    :cond_c
    move v11, v0

    :goto_6
    if-eqz p2, :cond_17

    .line 3267
    iget-object v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v12, v12, v4

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3268
    iget v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v12, v1, :cond_11

    .line 3269
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v13, v1, [F

    if-ne v4, v1, :cond_d

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    goto :goto_7

    :cond_d
    move v9, v7

    :goto_7
    aput v9, v13, v0

    invoke-static {v8, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3270
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v3

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v1, [F

    if-eqz v5, :cond_e

    move v13, v10

    goto :goto_8

    :cond_e
    move v13, v7

    :goto_8
    aput v13, v12, v0

    invoke-static {v8, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3271
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v0

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v1, [F

    if-eqz v5, :cond_f

    move v13, v7

    goto :goto_9

    :cond_f
    move v13, v10

    :goto_9
    aput v13, v12, v0

    invoke-static {v8, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v4, v1, :cond_10

    .line 3273
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v0, v0, v4

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 3275
    :cond_10
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v4

    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3276
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v11

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    aput v7, v1, v0

    invoke-static {v3, v8, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3278
    :goto_a
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ColorPicker;->hideKeyboard()V

    goto/16 :goto_d

    :cond_11
    if-ne v12, v3, :cond_15

    .line 3280
    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v13, v1, [F

    iget-object v14, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v14, v14, v4

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v14

    neg-int v14, v14

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v14, v8

    int-to-float v8, v14

    aput v8, v13, v0

    invoke-static {v9, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3281
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v3

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v1, [F

    if-eqz v5, :cond_12

    move v13, v10

    goto :goto_b

    :cond_12
    move v13, v7

    :goto_b
    aput v13, v12, v0

    invoke-static {v8, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3282
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v0

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v1, [F

    if-eqz v5, :cond_13

    move v10, v7

    :cond_13
    aput v10, v12, v0

    invoke-static {v8, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3283
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v1, [F

    aput v7, v10, v0

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3284
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_14

    .line 3285
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    aput v7, v1, v0

    invoke-static {v8, v9, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3286
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v0, v0, v4

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3287
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v0, v0, v4

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto/16 :goto_d

    .line 3289
    :cond_14
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v9, v8, v4

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    aget-object v8, v8, v4

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v3, v0

    aput v7, v3, v1

    invoke-static {v9, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_15
    if-ne v4, v1, :cond_16

    .line 3293
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v0, v0, v4

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 3295
    :cond_16
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v4

    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3296
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v11

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    aput v7, v1, v0

    invoke-static {v3, v8, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3298
    :goto_c
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ColorPicker;->hideKeyboard()V

    goto :goto_d

    .line 3301
    :cond_17
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v12, v1, [F

    aput v7, v12, v0

    invoke-static {v8, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3302
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v9, v8, v4

    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v13, v1, [F

    aget-object v8, v8, v4

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v13, v0

    invoke-static {v9, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3303
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v0

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v1, [F

    aput v10, v12, v0

    invoke-static {v8, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3304
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v3, v8, v3

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v1, [F

    aput v7, v9, v0

    invoke-static {v3, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3305
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    aput v10, v1, v0

    invoke-static {v3, v7, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3307
    :goto_d
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3308
    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v8, Lorg/telegram/ui/ThemePreviewActivity$29;

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v2, p2

    move v3, v11

    move/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ThemePreviewActivity$29;-><init>(Lorg/telegram/ui/ThemePreviewActivity;ZIIZ)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3327
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3328
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3329
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1b

    :cond_18
    if-nez v4, :cond_19

    move v11, v1

    goto :goto_e

    :cond_19
    move v11, v0

    :goto_e
    if-eqz p2, :cond_25

    .line 3333
    iget-object v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v12, v12, v4

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3334
    iget v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v12, v1, :cond_1e

    .line 3335
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v4, v1, :cond_1a

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    goto :goto_f

    :cond_1a
    move v9, v7

    :goto_f
    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 3336
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v3

    if-eqz v5, :cond_1b

    move v9, v10

    goto :goto_10

    :cond_1b
    move v9, v7

    :goto_10
    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 3337
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v0

    if-eqz v5, :cond_1c

    move v9, v7

    goto :goto_11

    :cond_1c
    move v9, v10

    :goto_11
    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    if-ne v4, v1, :cond_1d

    .line 3339
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_12

    .line 3341
    :cond_1d
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3342
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3344
    :goto_12
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ColorPicker;->hideKeyboard()V

    goto/16 :goto_17

    :cond_1e
    if-ne v12, v3, :cond_23

    .line 3346
    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v4, :cond_1f

    const/16 v12, 0x157

    goto :goto_13

    :cond_1f
    const/16 v12, 0x13c

    :goto_13
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    neg-int v12, v12

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v12, v8

    int-to-float v8, v12

    invoke-virtual {v9, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 3347
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v3

    if-eqz v5, :cond_20

    move v9, v10

    goto :goto_14

    :cond_20
    move v9, v7

    :goto_14
    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 3348
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v0

    if-eqz v5, :cond_21

    move v9, v7

    goto :goto_15

    :cond_21
    move v9, v10

    :goto_15
    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 3349
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v8, v7}, Landroid/view/View;->setAlpha(F)V

    .line 3350
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_22

    .line 3351
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3352
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3353
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_17

    .line 3355
    :cond_22
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_17

    :cond_23
    if-ne v4, v1, :cond_24

    .line 3359
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_16

    .line 3361
    :cond_24
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3362
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3364
    :goto_16
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ColorPicker;->hideKeyboard()V

    goto :goto_17

    .line 3367
    :cond_25
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 3368
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v9, v8, v4

    aget-object v8, v8, v4

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3369
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v0

    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    .line 3370
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v3

    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    .line 3371
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    :goto_17
    if-eqz p2, :cond_26

    .line 3374
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_26

    .line 3375
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3376
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_18

    :cond_26
    if-nez p2, :cond_27

    .line 3378
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3380
    :cond_27
    :goto_18
    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-eq v8, v1, :cond_29

    if-ne v8, v3, :cond_28

    goto :goto_19

    :cond_28
    if-ne v4, v1, :cond_2b

    .line 3384
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v0, v0, v11

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_1b

    .line 3381
    :cond_29
    :goto_19
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-eqz v5, :cond_2a

    goto :goto_1a

    :cond_2a
    move v0, v3

    :goto_1a
    aget-object v0, v1, v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2b
    :goto_1b
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

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateBlurred()V
    .locals 2

    .line 2647
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 2648
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2649
    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->originalBitmap:Landroid/graphics/Bitmap;

    .line 2650
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->blurWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 2652
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    .line 2653
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasStaticThumb()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2654
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->originalBitmap:Landroid/graphics/Bitmap;

    .line 2655
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->blurWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    .line 2659
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    if-eqz v0, :cond_3

    .line 2660
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 2661
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 2664
    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateButtonState(ZZ)V
    .locals 9

    .line 3018
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3021
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    .line 3023
    :goto_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const/4 v2, 0x4

    if-nez v1, :cond_2

    instance-of v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v3, :cond_1

    goto :goto_1

    .line 3100
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    if-eqz v0, :cond_16

    .line 3101
    invoke-virtual {v0, v2, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto/16 :goto_a

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 3024
    iget-boolean v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->progressVisible:Z

    if-nez v3, :cond_3

    const/4 p2, 0x0

    :cond_3
    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 3032
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 3033
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    .line 3034
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    .line 3037
    :cond_4
    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v4, v5, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    .line 3038
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    goto :goto_3

    .line 3040
    :cond_5
    check-cast v0, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 3041
    iget-object v1, v0, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_6

    .line 3042
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 3043
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    .line 3044
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    .line 3045
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    goto :goto_2

    .line 3047
    :cond_6
    iget-object v1, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string v3, "jpg"

    invoke-static {v1, v3}, Lorg/telegram/messenger/ImageLoader;->getHttpFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3048
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3049
    iget v0, v0, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    :goto_2
    int-to-long v4, v0

    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    .line 3051
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 3055
    :cond_7
    :goto_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v0, :cond_a

    .line 3056
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 3057
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    if-eqz v1, :cond_8

    .line 3058
    invoke-virtual {v1, v7, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 3059
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v1, v2, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 3061
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 3062
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne p1, v6, :cond_e

    const-wide/16 p1, 0x0

    cmp-long p1, v4, p1

    if-eqz p1, :cond_9

    .line 3064
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 3066
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 3070
    :cond_a
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {v2, v1, v3, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 3071
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    if-eqz v2, :cond_c

    .line 3072
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    .line 3073
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 3075
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto :goto_4

    .line 3077
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 3079
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 3081
    :cond_c
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne p1, v6, :cond_d

    .line 3082
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget p2, Lorg/telegram/messenger/R$string;->LoadingFullImage:I

    const-string v1, "LoadingFullImage"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 3084
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 3086
    :cond_e
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const/high16 p2, 0x3f000000    # 0.5f

    if-nez p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_10

    if-eqz v0, :cond_f

    move v1, v7

    goto :goto_6

    :cond_f
    move v1, p2

    .line 3087
    :goto_6
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3089
    :cond_10
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-nez p1, :cond_12

    .line 3090
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3091
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    goto :goto_7

    :cond_11
    move v7, p2

    :goto_7
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_a

    :cond_12
    if-ne p1, v6, :cond_14

    .line 3093
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 3094
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChatText:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    goto :goto_8

    :cond_13
    move v7, p2

    :goto_8
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_a

    .line 3096
    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->saveItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 3097
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->saveItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_15

    goto :goto_9

    :cond_15
    move v7, p2

    :goto_9
    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_16
    :goto_a
    return-void
.end method

.method private updateMotionButton()V
    .locals 13

    .line 3164
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const-wide/16 v1, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v0, v6, :cond_9

    if-ne v0, v5, :cond_0

    goto/16 :goto_5

    .line 3183
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iget-object v8, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v8, :cond_1

    move v9, v6

    goto :goto_0

    :cond_1
    move v9, v7

    :goto_0
    if-ne v0, v9, :cond_2

    return-void

    :cond_2
    if-nez v8, :cond_3

    .line 3187
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v0, v0, v7

    invoke-virtual {v0, v7, v6}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    .line 3189
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v0, v0, v7

    iget-object v8, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v8, :cond_4

    move v8, v6

    goto :goto_1

    :cond_4
    move v8, v7

    :goto_1
    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 3191
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_5

    .line 3192
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v0, v0, v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3194
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3195
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3196
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v9, 0x9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v0, v9

    div-int/2addr v0, v5

    new-array v5, v6, [Landroid/animation/Animator;

    .line 3197
    iget-object v9, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v9, v9, v7

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v6, [F

    iget-object v12, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v12, :cond_6

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    aput v3, v11, v7

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v5, v7

    invoke-virtual {v8, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v3, v6, [Landroid/animation/Animator;

    .line 3198
    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v5, v5, v7

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v6, [F

    iget-object v11, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v11, :cond_7

    move v11, v4

    goto :goto_3

    :cond_7
    int-to-float v11, v0

    :goto_3
    aput v11, v10, v7

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v3, v6, [Landroid/animation/Animator;

    .line 3199
    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v5, v5, v6

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v6, [F

    iget-object v10, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v10, :cond_8

    goto :goto_4

    :cond_8
    neg-int v0, v0

    int-to-float v4, v0

    :goto_4
    aput v4, v6, v7

    invoke-static {v5, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3200
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3201
    invoke-virtual {v8, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3202
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$28;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ThemePreviewActivity$28;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3210
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_8

    .line 3165
    :cond_9
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v0, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v0, :cond_a

    .line 3166
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v0, v0, v5

    invoke-virtual {v0, v7, v6}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    .line 3168
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    iget-object v8, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v8, :cond_b

    move v8, v5

    goto :goto_6

    :cond_b
    move v8, v7

    :goto_6
    aget-object v0, v0, v8

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3169
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v8, v5, [Landroid/animation/Animator;

    .line 3170
    iget-object v9, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v5, v9, v5

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v6, [F

    .line 3171
    iget-object v11, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v11, :cond_c

    move v11, v3

    goto :goto_7

    :cond_c
    move v11, v4

    :goto_7
    aput v11, v10, v7

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v8, v7

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v5, v5, v7

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v6, [F

    .line 3172
    iget-object v11, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v11, :cond_d

    move v3, v4

    :cond_d
    aput v3, v10, v7

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v8, v6

    .line 3170
    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3173
    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$27;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ThemePreviewActivity$27;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3179
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3180
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3181
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_8
    return-void
.end method

.method private updatePlayAnimationView(Z)V
    .locals 18

    move-object/from16 v0, p0

    .line 3417
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 3505
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x1d

    if-lt v1, v9, :cond_7

    .line 3420
    iget v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const-string v9, "key_chat_wallpaper_gradient_to2"

    if-nez v1, :cond_1

    .line 3421
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v1, :cond_0

    .line 3422
    iget-wide v9, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v1, v9

    goto :goto_1

    .line 3424
    :cond_0
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    if-ne v1, v6, :cond_3

    .line 3427
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(Ljava/lang/String;)I

    move-result v1

    .line 3428
    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v11, v9

    if-nez v11, :cond_2

    cmp-long v9, v9, v3

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v11, :cond_5

    move v1, v11

    goto :goto_1

    .line 3434
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v9, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v9, :cond_4

    .line 3435
    check-cast v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 3436
    iget v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v8

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 3438
    iget v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_6

    .line 3439
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    sget-object v9, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    invoke-virtual {v1, v9}, Lorg/telegram/messenger/ImageReceiver;->setBlendMode(Ljava/lang/Object;)V

    goto :goto_2

    .line 3441
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setBlendMode(Ljava/lang/Object;)V

    .line 3445
    :cond_7
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x5

    const/4 v14, 0x2

    const/16 v15, 0x22

    if-eqz v1, :cond_1d

    .line 3447
    iget v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v1, v14, :cond_8

    .line 3448
    iget v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz v1, :cond_b

    :goto_3
    move v1, v6

    goto :goto_5

    :cond_8
    if-ne v1, v6, :cond_b

    const-string v1, "chat_wallpaper_gradient_to"

    .line 3450
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(Ljava/lang/String;)I

    move-result v1

    .line 3451
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v9, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    long-to-int v5, v9

    if-nez v5, :cond_9

    cmp-long v3, v9, v3

    if-eqz v3, :cond_9

    move v1, v8

    goto :goto_4

    :cond_9
    if-eqz v5, :cond_a

    move v1, v5

    :cond_a
    :goto_4
    if-eqz v1, :cond_b

    goto :goto_3

    :cond_b
    move v1, v8

    .line 3462
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c

    move v3, v6

    goto :goto_6

    :cond_c
    move v3, v8

    .line 3463
    :goto_6
    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_d

    move-object v5, v7

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    if-eq v3, v1, :cond_1d

    if-eqz v1, :cond_e

    .line 3466
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3468
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_f

    .line 3469
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_f
    if-eqz p1, :cond_16

    .line 3472
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

    const/4 v4, 0x6

    new-array v4, v4, [Landroid/animation/Animator;

    .line 3473
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v6, [F

    if-eqz v1, :cond_10

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_10
    const/16 v16, 0x0

    :goto_8
    aput v16, v10, v8

    .line 3474
    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v10, v6, [F

    if-eqz v1, :cond_11

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_11
    const/16 v16, 0x0

    :goto_9
    aput v16, v10, v8

    .line 3475
    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v10, v6, [F

    if-eqz v1, :cond_12

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_12
    const/16 v16, 0x0

    :goto_a
    aput v16, v10, v8

    .line 3476
    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v14

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v5, v5, v8

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v6, [F

    if-eqz v1, :cond_13

    .line 3477
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    goto :goto_b

    :cond_13
    const/4 v2, 0x0

    :goto_b
    aput v2, v10, v8

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v4, v12

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v6

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v6, [F

    if-eqz v1, :cond_14

    .line 3478
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    goto :goto_c

    :cond_14
    const/4 v10, 0x0

    :goto_c
    aput v10, v9, v8

    invoke-static {v2, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v4, v11

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v14

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v6, [F

    if-eqz v1, :cond_15

    .line 3479
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    move/from16 v17, v1

    goto :goto_d

    :cond_15
    const/16 v17, 0x0

    :goto_d
    aput v17, v9, v8

    invoke-static {v2, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v4, v13

    .line 3473
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3480
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xb4

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3481
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$31;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ThemePreviewActivity$31;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3490
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3491
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_14

    .line 3493
    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_17

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_17
    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3494
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_18

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_18
    const/4 v3, 0x0

    :goto_f
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 3495
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_19

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_19
    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 3496
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v8

    if-eqz v1, :cond_1a

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    goto :goto_11

    :cond_1a
    const/4 v3, 0x0

    :goto_11
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 3497
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v6

    if-eqz v1, :cond_1b

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    goto :goto_12

    :cond_1b
    const/4 v3, 0x0

    :goto_12
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 3498
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v14

    if-eqz v1, :cond_1c

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v5, v1

    goto :goto_13

    :cond_1c
    const/4 v5, 0x0

    :goto_13
    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 3502
    :cond_1d
    :goto_14
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_21

    .line 3504
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1e

    move v1, v6

    goto :goto_15

    :cond_1e
    move v1, v8

    .line 3505
    :goto_15
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    if-eq v1, v6, :cond_21

    .line 3508
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3510
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1f

    .line 3511
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1f
    if-eqz p1, :cond_20

    .line 3514
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

    new-array v2, v13, [Landroid/animation/Animator;

    .line 3515
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v8

    .line 3516
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v6, [F

    aput v7, v5, v8

    .line 3517
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v6, [F

    aput v7, v5, v8

    .line 3518
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v14

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v3, v3, v8

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v6, [F

    .line 3519
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    aput v7, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v12

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v3, v3, v6

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v6, [F

    .line 3520
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v11

    .line 3515
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3521
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xb4

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3522
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$32;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ThemePreviewActivity$32;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3531
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3532
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_16

    .line 3534
    :cond_20
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3535
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 3536
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 3537
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v1, v1, v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 3538
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v1, v1, v6

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    :cond_21
    :goto_16
    return-void
.end method

.method private updateSelectedPattern(Z)V
    .locals 4

    .line 3154
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3156
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3157
    instance-of v3, v2, Lorg/telegram/ui/Cells/PatternCell;

    if-eqz v3, :cond_0

    .line 3158
    check-cast v2, Lorg/telegram/ui/Cells/PatternCell;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/PatternCell;->updateSelected(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 36

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x1

    .line 377
    iput-boolean v8, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    .line 378
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 381
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    .line 382
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 383
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v0, v9, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$1;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$1;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    .line 404
    sget v1, Lorg/telegram/messenger/R$string;->Search:I

    const-string v2, "Search"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/ActionBar/MenuDrawable;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 408
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->ThemePreview:I

    const-string v2, "ThemePreview"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 410
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$2;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$2;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    const-string v10, "windowBackgroundWhite"

    .line 439
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 440
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 443
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 444
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 445
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 446
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v7, v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 447
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v14, 0x2

    if-eqz v1, :cond_1

    move v1, v8

    goto :goto_0

    :cond_1
    move v1, v14

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVerticalScrollbarPosition(I)V

    .line 448
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-eqz v1, :cond_2

    const/16 v1, 0xc

    goto :goto_1

    :cond_2
    move v1, v9

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v9, v9, v9, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 449
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda24;->INSTANCE:Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda24;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 452
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v5, 0x33

    invoke-static {v11, v11, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    .line 455
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v16, 0x38

    .line 457
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const-string v1, "chats_actionBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "chats_actionPressedBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 458
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v1, v4, :cond_3

    .line 459
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 460
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v5, -0x1000000

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 461
    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v3, v2, v0, v9, v9}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 462
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v0, v3

    .line 465
    :cond_3
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 466
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v3, "chats_actionIcon"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 467
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->floating_pencil:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v15, 0x4

    if-lt v1, v4, :cond_4

    .line 469
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    new-array v2, v8, [I

    const v3, 0x10100a7

    aput v3, v2, v9

    .line 470
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v12, v14, [F

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    aput v11, v12, v9

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    aput v11, v12, v8

    invoke-static {v3, v5, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v11, 0xc8

    invoke-virtual {v3, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v2, v9, [I

    .line 471
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    new-array v11, v14, [F

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    aput v12, v11, v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    aput v12, v11, v8

    invoke-static {v3, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v11, 0xc8

    invoke-virtual {v3, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 472
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 473
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$3;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$3;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 481
    :cond_4
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    if-lt v1, v4, :cond_5

    move/from16 v17, v16

    goto :goto_2

    :cond_5
    const/16 v3, 0x3c

    move/from16 v17, v3

    :goto_2
    if-lt v1, v4, :cond_6

    move/from16 v18, v16

    goto :goto_3

    :cond_6
    const/16 v1, 0x3c

    move/from16 v18, v1

    :goto_3
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v11, 0x3

    if-eqz v1, :cond_7

    move v3, v11

    goto :goto_4

    :cond_7
    const/4 v3, 0x5

    :goto_4
    or-int/lit8 v19, v3, 0x50

    if-eqz v1, :cond_8

    const/16 v3, 0xe

    move/from16 v20, v3

    goto :goto_5

    :cond_8
    move/from16 v20, v9

    :goto_5
    const/16 v21, 0x0

    if-eqz v1, :cond_9

    move/from16 v22, v9

    goto :goto_6

    :cond_9
    const/16 v1, 0xe

    move/from16 v22, v1

    :goto_6
    const/16 v23, 0xe

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;

    invoke-direct {v0, v7}, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dialogsAdapter:Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;

    .line 484
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 486
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$4;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$4;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    .line 553
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    .line 555
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 556
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 557
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 559
    :cond_a
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v1, v9}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 560
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$5;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$5;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 660
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$6;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$6;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 733
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x33

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x30

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 734
    iget v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v0, v14, :cond_b

    .line 735
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 766
    :cond_b
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->access$4500(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)Z

    move-result v0

    const-string v17, "fonts/rmedium.ttf"

    if-eqz v0, :cond_d

    .line 767
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "Telegram Beta Chat"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 768
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Telegram"

    const-string v3, "iMe"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    const/16 v1, 0x1f9

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "Members"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_7
    move/from16 v20, v4

    goto/16 :goto_a

    .line 771
    :cond_d
    iget v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v0, v14, :cond_11

    .line 772
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->BackgroundPreview:I

    const-string v2, "BackgroundPreview"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 773
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_e

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v0

    if-nez v0, :cond_10

    :cond_e
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v1, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v1, :cond_f

    check-cast v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-object v0, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    const-string v1, "d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_c

    .line 774
    :cond_10
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    const/4 v1, 0x5

    .line 775
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_share_filled:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    goto :goto_7

    :cond_11
    if-ne v0, v8, :cond_13

    .line 778
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    .line 779
    sget v0, Lorg/telegram/messenger/R$string;->Save:I

    const-string v1, "Save"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v15, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->saveItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 781
    new-instance v5, Lorg/telegram/ui/ThemePreviewActivity$7;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v20, v4

    move/from16 v4, v18

    move-object v12, v5

    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ThemePreviewActivity$7;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 788
    invoke-virtual {v12, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 789
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->ColorPickerBackground:I

    const-string v2, "ColorPickerBackground"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 790
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->ColorPickerMainColor:I

    const-string v2, "ColorPickerMainColor"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 791
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->ColorPickerMyMessages:I

    const-string v3, "ColorPickerMyMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 792
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAllowCloseAnimation(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 793
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setForceSmoothKeyboard(Z)V

    .line 794
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v24, -0x2

    const/16 v25, -0x1

    const/16 v26, 0x33

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v3, 0x40

    move/from16 v27, v3

    goto :goto_8

    :cond_12
    move/from16 v27, v16

    :goto_8
    const/16 v28, 0x0

    const/16 v29, 0x28

    const/16 v30, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 795
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 797
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    .line 798
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 799
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 800
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 801
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLines(I)V

    .line 802
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 803
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 804
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    const-string v2, "actionBarDefaultTitle"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 805
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 806
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    const-string v2, "ColorPickerMainColor"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_arrow_drop_down:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 808
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "actionBarDefaultTitle"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 809
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v1, v13, v13, v0, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 810
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 811
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    const/16 v1, 0xa

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v9, v9, v2, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 812
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    const/16 v24, -0x2

    const/16 v25, -0x2

    const/16 v26, 0x10

    const/16 v27, 0x10

    const/16 v29, 0x0

    const/16 v30, 0x1

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    :cond_13
    move/from16 v20, v4

    .line 814
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v1, :cond_14

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_theme;->title:Ljava/lang/String;

    goto :goto_9

    :cond_14
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string v1, ".attheme"

    .line 815
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_15

    .line 817
    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 819
    :cond_15
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 820
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v0, :cond_16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_theme;->installs_count:I

    if-lez v0, :cond_16

    .line 821
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "ThemeInstallCount"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 823
    :cond_16
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0xe10

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v13}, Lorg/telegram/messenger/LocaleController;->formatDateOnline(J[Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 828
    :goto_a
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$8;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$8;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    .line 962
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$9;

    invoke-direct {v0, v6}, Lorg/telegram/ui/ThemePreviewActivity$9;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    .line 968
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 969
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 970
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 971
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 972
    iget v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v0, v14, :cond_17

    .line 973
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v2, 0x34

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v9, v1, v9, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_b

    :cond_17
    if-ne v0, v8, :cond_18

    .line 975
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v9, v1, v9, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_b

    .line 977
    :cond_18
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v9, v1, v9, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 979
    :goto_b
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 980
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v7, v8, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 981
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_19

    move v1, v8

    goto :goto_c

    :cond_19
    move v1, v14

    :goto_c
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVerticalScrollbarPosition(I)V

    .line 982
    iget v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v0, v8, :cond_1a

    .line 983
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, 0x33

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x111

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 984
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda25;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    const/16 v2, 0x33

    const/4 v3, -0x1

    goto :goto_d

    .line 999
    :cond_1a
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v2, 0x33

    const/4 v3, -0x1

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1001
    :goto_d
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$10;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$10;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1016
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v4, -0x2

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1017
    new-instance v0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    .line 1018
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda26;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setCallback(Lorg/telegram/ui/Components/WallpaperParallaxEffect$Callback;)V

    .line 1033
    iget v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const-string v3, "chat_fieldOverlayText"

    const/16 v5, 0x11

    if-eq v0, v8, :cond_1b

    if-ne v0, v14, :cond_54

    .line 1034
    :cond_1b
    new-instance v0, Lorg/telegram/ui/Components/RadialProgress2;

    iget-object v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/RadialProgress2;-><init>(Landroid/view/View;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const-string v12, "chat_serviceBackground"

    const-string v13, "chat_serviceBackground"

    const-string v1, "chat_serviceText"

    const-string v15, "chat_serviceText"

    .line 1035
    invoke-virtual {v0, v12, v13, v1, v15}, Lorg/telegram/ui/Components/RadialProgress2;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    iget v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v0, v14, :cond_1c

    .line 1038
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$11;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$11;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    .line 1047
    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1048
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v9, v1, v9, v9}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1049
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    const/16 v12, 0x50

    const/4 v13, -0x1

    invoke-static {v13, v2, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1050
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1276
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChatText:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    .line 1277
    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1278
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChatText:Landroid/widget/TextView;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1279
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChatText:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1280
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChatText:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->SetBackground:I

    const-string v12, "SetBackground"

    invoke-static {v12, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1281
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChatText:Landroid/widget/TextView;

    const/4 v12, -0x2

    invoke-static {v12, v12, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v1, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1284
    :cond_1c
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1285
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v12, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->sheetDrawable:Landroid/graphics/drawable/Drawable;

    .line 1286
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1287
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->sheetDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v13

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v13, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1289
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v8}, Landroid/text/TextPaint;-><init>(I)V

    const/16 v12, 0xe

    .line 1290
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v1, v12}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1291
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1294
    iget v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-eq v12, v8, :cond_1f

    iget-object v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v13, v12, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v13, :cond_1d

    goto :goto_e

    .line 1301
    :cond_1d
    instance-of v13, v12, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz v13, :cond_1e

    .line 1302
    check-cast v12, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    .line 1303
    iget-object v12, v12, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->slug:Ljava/lang/String;

    const-string v13, "t"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    goto :goto_f

    :cond_1e
    move v12, v14

    goto :goto_10

    .line 1296
    :cond_1f
    :goto_e
    iget-object v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v13, v12, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v13, :cond_20

    check-cast v12, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-object v12, v12, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    const-string v13, "d"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    :goto_f
    move v12, v9

    goto :goto_10

    :cond_20
    move v12, v11

    .line 1309
    :goto_10
    new-array v13, v12, [Ljava/lang/String;

    .line 1310
    new-array v15, v12, [I

    .line 1311
    new-array v2, v12, [Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    iput-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    const/high16 v22, 0x3f800000    # 1.0f

    if-eqz v12, :cond_29

    .line 1314
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    .line 1315
    iget v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-eq v2, v8, :cond_22

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v2, v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v2, :cond_21

    goto :goto_11

    .line 1320
    :cond_21
    sget v2, Lorg/telegram/messenger/R$string;->BackgroundBlurred:I

    const-string v11, "BackgroundBlurred"

    invoke-static {v11, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v9

    .line 1321
    sget v2, Lorg/telegram/messenger/R$string;->BackgroundMotion:I

    const-string v11, "BackgroundMotion"

    invoke-static {v11, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v8

    goto :goto_12

    .line 1316
    :cond_22
    :goto_11
    sget v2, Lorg/telegram/messenger/R$string;->BackgroundColors:I

    const-string v11, "BackgroundColors"

    invoke-static {v11, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v9

    .line 1317
    sget v2, Lorg/telegram/messenger/R$string;->BackgroundPattern:I

    const-string v11, "BackgroundPattern"

    invoke-static {v11, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v8

    .line 1318
    sget v2, Lorg/telegram/messenger/R$string;->BackgroundMotion:I

    const-string v11, "BackgroundMotion"

    invoke-static {v11, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v14

    :goto_12
    move v2, v9

    move v11, v2

    :goto_13
    if-ge v2, v12, :cond_23

    .line 1324
    aget-object v14, v13, v2

    invoke-virtual {v1, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    float-to-double v4, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    aput v4, v15, v2

    .line 1325
    aget v4, v15, v2

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x11

    const/4 v14, 0x2

    goto :goto_13

    .line 1328
    :cond_23
    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$12;

    invoke-direct {v2, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$12;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    .line 1342
    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1343
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    iget v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz v4, :cond_24

    move v4, v9

    goto :goto_14

    :cond_24
    const/4 v4, 0x4

    :goto_14
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1344
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    iget v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz v4, :cond_25

    move/from16 v4, v22

    goto :goto_15

    :cond_25
    const v4, 0x3dcccccd    # 0.1f

    :goto_15
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1345
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    iget v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz v4, :cond_26

    move/from16 v4, v22

    goto :goto_16

    :cond_26
    const v4, 0x3dcccccd    # 0.1f

    :goto_16
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1346
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    iget v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz v4, :cond_27

    move/from16 v4, v22

    goto :goto_17

    :cond_27
    const/4 v4, 0x0

    :goto_17
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1347
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    iget v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz v4, :cond_28

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_18

    :cond_28
    const/4 v4, 0x0

    :goto_18
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1348
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    const/16 v5, 0x30

    const/16 v14, 0x11

    invoke-static {v5, v5, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v4, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1349
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    new-instance v4, Lorg/telegram/ui/ThemePreviewActivity$13;

    invoke-direct {v4, v6}, Lorg/telegram/ui/ThemePreviewActivity$13;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1368
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationImageView:Landroid/widget/ImageView;

    .line 1369
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1370
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationImageView:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$drawable;->bg_rotate_large:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1371
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationImageView:Landroid/widget/ImageView;

    const/16 v5, 0x11

    const/4 v9, -0x2

    invoke-static {v9, v9, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v2, v4, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_19

    :cond_29
    const/4 v11, 0x0

    :goto_19
    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v12, :cond_39

    .line 1376
    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    new-instance v5, Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    iget v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-eq v9, v8, :cond_2a

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v9, v9, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v9, :cond_2b

    :cond_2a
    if-eqz v2, :cond_2c

    :cond_2b
    move v9, v8

    goto :goto_1b

    :cond_2c
    const/4 v9, 0x0

    :goto_1b
    iget-object v14, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v5, v7, v9, v14}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;-><init>(Landroid/content/Context;ZLandroid/view/View;)V

    aput-object v5, v4, v2

    .line 1377
    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v4, v4, v2

    iget v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1378
    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v4, v4, v2

    aget-object v5, v13, v2

    aget v9, v15, v2

    invoke-virtual {v4, v5, v9, v11}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setText(Ljava/lang/String;II)V

    .line 1380
    iget v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-eq v4, v8, :cond_2f

    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v4, v4, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v4, :cond_2d

    goto :goto_1d

    .line 1387
    :cond_2d
    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v4, v4, v2

    if-nez v2, :cond_2e

    iget-boolean v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    goto :goto_1c

    :cond_2e
    iget-boolean v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    :goto_1c
    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    goto :goto_20

    :cond_2f
    :goto_1d
    if-ne v2, v8, :cond_32

    .line 1382
    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v4, v4, v2

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v5, :cond_31

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v5, :cond_30

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_30

    goto :goto_1e

    :cond_30
    const/4 v5, 0x0

    goto :goto_1f

    :cond_31
    :goto_1e
    move v5, v8

    :goto_1f
    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    goto :goto_20

    :cond_32
    const/4 v4, 0x2

    const/4 v9, 0x0

    if-ne v2, v4, :cond_33

    .line 1384
    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v4, v4, v2

    iget-boolean v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    invoke-virtual {v4, v5, v9}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    .line 1389
    :cond_33
    :goto_20
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v11

    .line 1390
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v5, v4, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x11

    .line 1391
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v9, 0x3

    if-ne v12, v9, :cond_36

    if-eqz v2, :cond_35

    const/4 v9, 0x2

    if-ne v2, v9, :cond_34

    goto :goto_21

    .line 1396
    :cond_34
    div-int/lit8 v4, v4, 0x2

    const/16 v9, 0xa

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v4, v14

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_22

    :cond_35
    :goto_21
    const/16 v9, 0xa

    .line 1394
    div-int/lit8 v4, v4, 0x2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v4, v14

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_22

    :cond_36
    const/16 v9, 0xa

    if-ne v2, v8, :cond_37

    .line 1400
    div-int/lit8 v4, v4, 0x2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v4, v14

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_22

    .line 1402
    :cond_37
    div-int/lit8 v4, v4, 0x2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v4, v14

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1405
    :goto_22
    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v9, v9, v2

    invoke-virtual {v4, v9, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1406
    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v5, v4, v2

    .line 1407
    aget-object v4, v4, v2

    new-instance v9, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda11;

    invoke-direct {v9, v6, v2, v5}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ThemePreviewActivity;ILorg/telegram/ui/Components/WallpaperCheckBoxView;)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x2

    if-ne v2, v4, :cond_38

    .line 1461
    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1462
    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1a

    .line 1467
    :cond_39
    iget v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v2, v8, :cond_42

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    new-array v5, v2, [I

    new-array v9, v2, [Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    .line 1470
    iput-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    .line 1473
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    .line 1475
    sget v2, Lorg/telegram/messenger/R$string;->BackgroundAnimate:I

    const-string v9, "BackgroundAnimate"

    invoke-static {v9, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v4, v9

    .line 1476
    sget v2, Lorg/telegram/messenger/R$string;->BackgroundColors:I

    const-string v9, "BackgroundColors"

    invoke-static {v9, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v8

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_23
    const/4 v11, 0x2

    if-ge v2, v11, :cond_3a

    .line 1479
    aget-object v11, v4, v2

    invoke-virtual {v1, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    aput v11, v5, v2

    .line 1480
    aget v11, v5, v2

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 1483
    :cond_3a
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v1, :cond_42

    .line 1484
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$14;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$14;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    .line 1498
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1500
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v2, :cond_3b

    const/4 v2, 0x0

    goto :goto_24

    :cond_3b
    const/4 v2, 0x4

    :goto_24
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1501
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v2, :cond_3c

    move/from16 v2, v22

    goto :goto_25

    :cond_3c
    const v2, 0x3dcccccd    # 0.1f

    :goto_25
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1502
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v2, :cond_3d

    move/from16 v2, v22

    goto :goto_26

    :cond_3d
    const v2, 0x3dcccccd    # 0.1f

    :goto_26
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1503
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v2, :cond_3e

    goto :goto_27

    :cond_3e
    const/16 v22, 0x0

    :goto_27
    move/from16 v2, v22

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1504
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    const/16 v11, 0x30

    const/16 v12, 0x11

    invoke-static {v11, v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v1, v2, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1505
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$15;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$15;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1546
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationImageView:Landroid/widget/ImageView;

    .line 1547
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1548
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationImageView:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->bg_rotate_large:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1549
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationImageView:Landroid/widget/ImageView;

    const/16 v11, 0x11

    const/4 v12, -0x2

    invoke-static {v12, v12, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v1, v2, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    :goto_28
    const/4 v2, 0x2

    if-ge v1, v2, :cond_42

    .line 1553
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    new-instance v11, Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-nez v1, :cond_3f

    move v12, v8

    goto :goto_29

    :cond_3f
    const/4 v12, 0x0

    :goto_29
    iget-object v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v11, v7, v12, v13}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;-><init>(Landroid/content/Context;ZLandroid/view/View;)V

    aput-object v11, v2, v1

    .line 1554
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v1

    aget-object v11, v4, v1

    aget v12, v5, v1

    invoke-virtual {v2, v11, v12, v9}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setText(Ljava/lang/String;II)V

    if-nez v1, :cond_40

    .line 1557
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v1

    iget-object v11, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-boolean v11, v11, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    .line 1559
    :cond_40
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, v9

    .line 1560
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v11, v2, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x11

    .line 1561
    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v1, v8, :cond_41

    .line 1563
    div-int/lit8 v2, v2, 0x2

    const/16 v12, 0xa

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    add-int/2addr v2, v13

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_2a

    :cond_41
    const/16 v12, 0xa

    .line 1565
    div-int/lit8 v2, v2, 0x2

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    add-int/2addr v2, v13

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1567
    :goto_2a
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    iget-object v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v13, v13, v1

    invoke-virtual {v2, v13, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1568
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v11, v2, v1

    .line 1569
    aget-object v2, v2, v1

    new-instance v13, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda12;

    invoke-direct {v13, v6, v1, v11}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ThemePreviewActivity;ILorg/telegram/ui/Components/WallpaperCheckBoxView;)V

    invoke-virtual {v2, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 1585
    :cond_42
    iget v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-eq v1, v8, :cond_44

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v1, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v1, :cond_43

    goto :goto_2b

    :cond_43
    const/4 v0, 0x0

    goto/16 :goto_38

    :cond_44
    :goto_2b
    const/4 v1, 0x0

    .line 1586
    iput-boolean v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    const/4 v1, 0x0

    :goto_2c
    const/4 v2, 0x2

    if-ge v1, v2, :cond_43

    .line 1591
    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    new-instance v5, Lorg/telegram/ui/ThemePreviewActivity$16;

    invoke-direct {v5, v6, v7, v1, v0}, Lorg/telegram/ui/ThemePreviewActivity$16;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;ILandroid/graphics/Rect;)V

    aput-object v5, v4, v1

    if-eq v1, v8, :cond_46

    .line 1602
    iget v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v4, v2, :cond_45

    goto :goto_2d

    :cond_45
    const/4 v4, 0x4

    goto :goto_2e

    .line 1603
    :cond_46
    :goto_2d
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1605
    :goto_2e
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1607
    iget v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_48

    if-nez v1, :cond_47

    const/16 v2, 0x141

    goto :goto_2f

    :cond_47
    const/16 v2, 0x13c

    :goto_2f
    const/16 v5, 0x53

    const/4 v9, -0x1

    .line 1608
    invoke-static {v9, v2, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    goto :goto_31

    :cond_48
    const/16 v5, 0x53

    const/4 v9, -0x1

    if-nez v1, :cond_49

    const/16 v2, 0x111

    goto :goto_30

    :cond_49
    const/16 v2, 0x13c

    .line 1610
    :goto_30
    invoke-static {v9, v2, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    :goto_31
    if-nez v1, :cond_4a

    .line 1613
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v9, 0xc

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    iget v12, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    add-int/2addr v5, v11

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1614
    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v5, v5, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    iget v12, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-virtual {v5, v12, v11, v12, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_32

    :cond_4a
    const/16 v9, 0xc

    .line 1616
    :goto_32
    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v11, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v11, v11, v1

    invoke-virtual {v5, v11, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eq v1, v8, :cond_4c

    .line 1618
    iget v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_4b

    goto :goto_33

    :cond_4b
    const/4 v11, 0x3

    goto/16 :goto_34

    .line 1619
    :cond_4c
    :goto_33
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    new-instance v5, Lorg/telegram/ui/ThemePreviewActivity$17;

    invoke-direct {v5, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$17;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    aput-object v5, v2, v1

    .line 1628
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1629
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    const/4 v11, 0x3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v2, v5, v12, v5, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1630
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1631
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v5, v5, v1

    const/16 v12, 0x50

    const/16 v13, 0x33

    const/4 v14, -0x1

    invoke-static {v14, v13, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v2, v5, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1633
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v5, v2, v1

    .line 1634
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v2, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1635
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1636
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1637
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    sget v5, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v12, "Cancel"

    invoke-static {v12, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1638
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1639
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v2, v5, v13, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1640
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const-string v5, "listSelectorSDK21"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v13}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1641
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    const/16 v12, 0x33

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-static {v13, v14, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v2, v5, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1642
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    new-instance v5, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda10;

    invoke-direct {v5, v6, v1}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ThemePreviewActivity;I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1682
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v5, v2, v1

    .line 1683
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v2, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1684
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1685
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1686
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    sget v5, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    const-string v12, "ApplyTheme"

    invoke-static {v12, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1687
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1688
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v2, v5, v13, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1689
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const-string v5, "listSelectorSDK21"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v13}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1690
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    const/16 v12, 0x35

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-static {v13, v14, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v2, v5, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1691
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    new-instance v5, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda9;

    invoke-direct {v5, v6, v1}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ThemePreviewActivity;I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_34
    if-ne v1, v8, :cond_4d

    .line 1704
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1705
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setLines(I)V

    .line 1706
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1707
    sget v5, Lorg/telegram/messenger/R$string;->BackgroundChoosePattern:I

    const-string v12, "BackgroundChoosePattern"

    invoke-static {v12, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "windowBackgroundWhiteBlackText"

    .line 1709
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41a00000    # 20.0f

    .line 1710
    invoke-virtual {v2, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1711
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1712
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v12, 0x6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    const/16 v14, 0x8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v2, v5, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1714
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v5, 0x10

    .line 1715
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1716
    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v5, v5, v1

    const/16 v28, -0x1

    const/16 v29, 0x30

    const/16 v30, 0x33

    const/16 v31, 0x0

    const/16 v32, 0x15

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v5, v2, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1718
    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$18;

    invoke-direct {v2, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$18;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1727
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v12, 0x0

    invoke-direct {v5, v7, v12, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1728
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    invoke-direct {v5, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsAdapter:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1729
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/ThemePreviewActivity$19;

    invoke-direct {v5, v6}, Lorg/telegram/ui/ThemePreviewActivity$19;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1740
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v29, 0x64

    const/16 v32, 0x4c

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v2, v5, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1741
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda23;

    invoke-direct {v5, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1762
    new-instance v2, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    iput-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensityCell:Lorg/telegram/ui/Cells/HeaderCell;

    .line 1763
    sget v5, Lorg/telegram/messenger/R$string;->BackgroundIntensity:I

    const-string v12, "BackgroundIntensity"

    invoke-static {v12, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1764
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensityCell:Lorg/telegram/ui/Cells/HeaderCell;

    const/16 v29, -0x2

    const/16 v32, 0xaf

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v2, v5, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1766
    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$20;

    invoke-direct {v2, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$20;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    .line 1775
    iget v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    .line 1776
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    .line 1777
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    new-instance v5, Lorg/telegram/ui/ThemePreviewActivity$21;

    invoke-direct {v5, v6}, Lorg/telegram/ui/ThemePreviewActivity$21;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    .line 1805
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    const/16 v29, 0x26

    const/16 v31, 0x5

    const/16 v32, 0xd3

    const/16 v33, 0x5

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v2, v5, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_37

    .line 1807
    :cond_4d
    new-instance v2, Lorg/telegram/ui/Components/ColorPicker;

    iget-boolean v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->editingTheme:Z

    new-instance v12, Lorg/telegram/ui/ThemePreviewActivity$22;

    invoke-direct {v12, v6}, Lorg/telegram/ui/ThemePreviewActivity$22;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-direct {v2, v7, v5, v12}, Lorg/telegram/ui/Components/ColorPicker;-><init>(Landroid/content/Context;ZLorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;)V

    iput-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    .line 1876
    iget v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v5, v8, :cond_51

    .line 1877
    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v5, v5, v1

    const/4 v12, -0x1

    invoke-static {v12, v12, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v5, v2, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1878
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 1879
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const v5, 0x3e4ccccd    # 0.2f

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/ColorPicker;->setMinBrightness(F)V

    goto :goto_35

    .line 1881
    :cond_4e
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const v5, 0x3d4ccccd    # 0.05f

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/ColorPicker;->setMinBrightness(F)V

    .line 1882
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const v5, 0x3f4ccccd    # 0.8f

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/ColorPicker;->setMaxBrightness(F)V

    .line 1885
    :goto_35
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-nez v2, :cond_4f

    goto :goto_37

    .line 1889
    :cond_4f
    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v2, :cond_50

    const/16 v32, 0x2

    goto :goto_36

    :cond_50
    move/from16 v32, v8

    .line 1890
    :goto_36
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const/16 v29, 0x1

    invoke-direct {v6, v8}, Lorg/telegram/ui/ThemePreviewActivity;->hasChanges(I)Z

    move-result v30

    const/16 v31, 0x2

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v35}, Lorg/telegram/ui/Components/ColorPicker;->setType(IZIIZIZ)V

    .line 1891
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v5, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    const/4 v12, 0x0

    invoke-virtual {v2, v5, v12}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 1892
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v2, :cond_52

    .line 1893
    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v5, v2, v8}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    goto :goto_37

    .line 1896
    :cond_51
    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v5, v5, v1

    const/16 v28, -0x1

    const/16 v29, -0x1

    const/16 v30, 0x1

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x30

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v5, v2, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_52
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2c

    .line 1902
    :goto_38
    invoke-direct {v6, v0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    .line 1903
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v0

    if-nez v0, :cond_53

    .line 1904
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1907
    :cond_53
    iget v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-eq v0, v8, :cond_54

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v0, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-nez v0, :cond_54

    .line 1908
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 1912
    :cond_54
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1914
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$23;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$23;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 1943
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1944
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    iput-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 1945
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1950
    new-instance v0, Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v0, v7}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 1951
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$24;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$24;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1967
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$25;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$25;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 2003
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const-string v1, "actionBarDefault"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setViewPagerEdgeEffectColor(Landroidx/viewpager/widget/ViewPager;I)V

    .line 2004
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/16 v28, -0x1

    const/16 v29, -0x1

    const/16 v30, 0x33

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    iget v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-nez v2, :cond_55

    const/16 v34, 0x30

    goto :goto_39

    :cond_55
    const/16 v34, 0x0

    :goto_39
    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2006
    new-instance v0, Lorg/telegram/ui/Components/UndoView;

    invoke-direct {v0, v7, v6}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/16 v1, 0x33

    .line 2007
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UndoView;->setAdditionalTranslationY(F)V

    .line 2008
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/16 v28, -0x1

    const/16 v29, -0x2

    const/16 v30, 0x53

    const/16 v31, 0x8

    const/16 v32, 0x0

    const/16 v33, 0x8

    const/16 v34, 0x8

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2010
    iget v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-nez v0, :cond_56

    .line 2011
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v1, "dialogShadowLine"

    .line 2012
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2013
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x53

    const/4 v4, -0x1

    invoke-direct {v1, v4, v8, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 v2, 0x30

    .line 2014
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2015
    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2017
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->saveButtonsContainer:Landroid/widget/FrameLayout;

    .line 2018
    invoke-direct {v6, v10}, Lorg/telegram/ui/ThemePreviewActivity;->getButtonsColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2019
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->saveButtonsContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x53

    const/4 v5, -0x1

    invoke-static {v5, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2021
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$26;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$26;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dotsContainer:Landroid/view/View;

    .line 2035
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->saveButtonsContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x16

    const/16 v4, 0x8

    const/16 v5, 0x11

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2037
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    .line 2038
    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2039
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    invoke-direct {v6, v3}, Lorg/telegram/ui/ThemePreviewActivity;->getButtonsColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2040
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 2041
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    const/high16 v1, 0xf000000

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2042
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    const/16 v1, 0x1d

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v4, v2, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2043
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v4, "Cancel"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2044
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2045
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->saveButtonsContainer:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    const/16 v4, 0x33

    const/4 v5, -0x2

    const/4 v9, -0x1

    invoke-static {v5, v9, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2046
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2048
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    .line 2049
    invoke-virtual {v0, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2050
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    invoke-direct {v6, v3}, Lorg/telegram/ui/ThemePreviewActivity;->getButtonsColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2051
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2052
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    const/high16 v2, 0xf000000

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2053
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2054
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    const-string v2, "ApplyTheme"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2055
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2056
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->saveButtonsContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    const/16 v2, 0x35

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-static {v3, v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2057
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2089
    :cond_56
    iget v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v0, v8, :cond_57

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasCustomWallpaper()Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    const-wide v2, 0x100000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_57

    const/4 v0, 0x2

    .line 2090
    invoke-direct {v6, v0}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(I)V

    .line 2093
    :cond_57
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->getThemeDescriptionsInternal()Ljava/util/List;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->themeDescriptions:Ljava/util/List;

    .line 2094
    invoke-direct {v6, v8}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    const/4 v0, 0x0

    .line 2095
    invoke-direct {v6, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    .line 2097
    iget-boolean v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->showColor:Z

    if-eqz v1, :cond_58

    .line 2098
    invoke-direct {v6, v0, v8, v0}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    .line 2101
    :cond_58
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 8

    .line 2680
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    .line 2681
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez p1, :cond_0

    return-void

    .line 2684
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move p2, v0

    :goto_0
    if-ge p2, p1, :cond_e

    .line 2686
    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 2687
    instance-of v1, p3, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v1, :cond_1

    .line 2688
    check-cast p3, Lorg/telegram/ui/Cells/DialogCell;

    .line 2689
    invoke-virtual {p3, v0}, Lorg/telegram/ui/Cells/DialogCell;->update(I)Z

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2692
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->invalidateMotionBackground:I

    if-ne p1, p2, :cond_3

    .line 2693
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_e

    .line 2694
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    goto/16 :goto_5

    .line 2696
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    const/4 v1, 0x1

    if-ne p1, p2, :cond_4

    .line 2697
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_e

    .line 2698
    invoke-direct {p0, v1}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    goto/16 :goto_5

    .line 2700
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->wallpapersNeedReload:I

    if-ne p1, p2, :cond_5

    .line 2701
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of p2, p1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz p2, :cond_e

    .line 2702
    check-cast p1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    .line 2703
    iget-object p2, p1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->slug:Ljava/lang/String;

    if-nez p2, :cond_e

    .line 2704
    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->slug:Ljava/lang/String;

    goto/16 :goto_5

    .line 2707
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoad:I

    if-ne p1, p2, :cond_e

    .line 2708
    aget-object p1, p3, v0

    check-cast p1, Ljava/util/ArrayList;

    .line 2709
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 2710
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 2713
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    move p3, v0

    move v2, p3

    :goto_1
    if-ge p3, p2, :cond_9

    .line 2714
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 2715
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v4, :cond_8

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v4, :cond_8

    .line 2716
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2717
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2718
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2720
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v4, :cond_7

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2721
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 2723
    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    .line 2724
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    :goto_2
    move v2, v1

    goto :goto_3

    .line 2725
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-nez v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v4, :cond_8

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_9
    if-nez v2, :cond_a

    .line 2730
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz p2, :cond_a

    .line 2731
    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {p3, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2733
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsAdapter:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    if-eqz p2, :cond_b

    .line 2734
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_b
    const-wide/16 p2, 0x0

    .line 2737
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_4
    if-ge v0, v1, :cond_d

    .line 2738
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 2739
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v3, :cond_c

    .line 2740
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    invoke-static {p2, p3, v2, v3}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide p2

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2743
    :cond_d
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPapers;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPapers;-><init>()V

    .line 2744
    iput-wide p2, p1, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPapers;->hash:J

    .line 2745
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda21;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 2801
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    :cond_e
    :goto_5
    return-void
.end method

.method public getObserverTag()I
    .locals 1

    .line 2643
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->TAG:I

    return v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBackPressed()Z
    .locals 1

    .line 2670
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->checkDiscard()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 2673
    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->cancelThemeApply(Z)V

    return v0
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    const/4 p1, 0x1

    .line 2615
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 4

    .line 2515
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2516
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->invalidateMotionBackground:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2517
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 2518
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2520
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_3

    .line 2521
    :cond_2
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->setChangingWallpaper(Z)V

    .line 2523
    :cond_3
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 2538
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isWallpaperMotion()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    goto :goto_1

    .line 2524
    :cond_5
    :goto_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2525
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v0, v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v0, v1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_f"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    .line 2527
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    .line 2529
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2530
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2531
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->TAG:I

    .line 2533
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 2534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    .line 2535
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getWallpapers()V

    .line 2541
    :cond_6
    :goto_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 2546
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2547
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->invalidateMotionBackground:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2548
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_0

    .line 2549
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2551
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_2

    .line 2552
    :cond_1
    sget-object v0, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda18;->INSTANCE:Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda18;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2555
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v0, v2, :cond_4

    .line 2556
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 2557
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 2558
    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    .line 2560
    :cond_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->applyChatServiceMessageColor()V

    .line 2561
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-eq v0, v1, :cond_5

    if-nez v0, :cond_6

    .line 2563
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2565
    :cond_6
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v0, :cond_8

    .line 2566
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2567
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2570
    :cond_8
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 2602
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 2603
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    if-eqz v0, :cond_0

    .line 2604
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 1

    .line 2628
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    long-to-float p2, p2

    long-to-float p3, p4

    div-float/2addr p2, p3

    .line 2629
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget-boolean p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->progressVisible:Z

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 2630
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RadialProgress2;->getIcon()I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2631
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    :cond_0
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 2586
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 2587
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogsAdapter:Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;

    if-eqz v0, :cond_0

    .line 2588
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2590
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    if-eqz v0, :cond_1

    .line 2591
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2593
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    if-eqz v0, :cond_2

    .line 2594
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    .line 2596
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 2597
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 2

    .line 2620
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2621
    iget-boolean v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->progressVisible:Z

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2623
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .locals 1

    .line 2575
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    if-nez p1, :cond_0

    .line 2577
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 2578
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->applyChatServiceMessageColor()V

    .line 2579
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;)V
    .locals 0

    .line 3107
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->delegate:Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;

    return-void
.end method

.method public setInitialModes(ZZ)V
    .locals 0

    .line 370
    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    .line 371
    iput-boolean p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    return-void
.end method

.method public setPatterns(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3111
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    .line 3112
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v0, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v0, :cond_3

    .line 3113
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 3114
    iget-wide v1, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->patternId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 3115
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_2

    .line 3116
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 3117
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iget-wide v5, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->patternId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 3118
    iput-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3122
    :cond_2
    :goto_1
    iget p1, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->intensity:F

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    :cond_3
    return-void
.end method
