.class public Lorg/telegram/ui/ThemePreviewActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ThemePreviewActivity.java"

# interfaces
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;,
        Lorg/telegram/ui/ThemePreviewActivity$BlurButton;,
        Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;,
        Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;,
        Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;,
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

.field private applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

.field private applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

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

.field private backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

.field private backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

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

.field private blurredDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field public boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

.field private bottomOverlayChat:Landroid/widget/FrameLayout;

.field private cancelButton:Landroid/widget/TextView;

.field private changeDayNightView:Landroid/view/View;

.field private changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

.field private changeDayNightViewAnimator2:Landroid/animation/ValueAnimator;

.field private changeDayNightViewProgress:F

.field private checkColor:I

.field private checkedBoostsLevel:Z

.field private checkingBoostsLevel:Z

.field private colorPicker:Lorg/telegram/ui/Components/ColorPicker;

.field private colorType:I

.field croppedWidth:F

.field private currentIntensity:F

.field currentScrollOffset:F

.field private currentWallpaper:Ljava/lang/Object;

.field private currentWallpaperBitmap:Landroid/graphics/Bitmap;

.field private dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field defaultScrollOffset:F

.field private delegate:Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;

.field private deleteOnCancel:Z

.field dialogId:J

.field private dialogsAdapter:Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;

.field private dimAmount:F

.field private dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

.field private dimmingSliderContainer:Landroid/widget/FrameLayout;

.field private doneButton:Landroid/widget/TextView;

.field private dotsContainer:Landroid/view/View;

.field private dropDown:Landroid/widget/TextView;

.field private dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private editingTheme:Z

.field private floatingButton:Landroid/widget/ImageView;

.field private frameLayout:Landroid/widget/FrameLayout;

.field gestureDetector2:Lorg/telegram/ui/Components/GestureDetector2;

.field private hasScrollingBackground:Z

.field private imageFilter:Ljava/lang/String;

.field private intensityCell:Lorg/telegram/ui/Cells/HeaderCell;

.field private intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

.field private isBlurred:Z

.field private isMotion:Z

.field private lastDrawableToBlur:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private lastPickedColor:I

.field private lastPickedColorNum:I

.field private lastSelectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

.field private lastSizeHash:I

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listView2:Lorg/telegram/ui/Components/RecyclerListView;

.field private lockSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

.field maxScrollOffset:F

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

.field onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

.field private originalBitmap:Landroid/graphics/Bitmap;

.field private page1:Landroid/widget/FrameLayout;

.field private page2:Landroid/widget/FrameLayout;

.field private parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

.field private parallaxScale:F

.field private patternColor:I

.field private patternLayout:[Landroid/widget/FrameLayout;

.field private patternTitleView:Landroid/widget/TextView;

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

.field private progressToDarkTheme:F

.field private progressVisible:Z

.field private removeBackgroundOverride:Z

.field private rotatePreview:Z

.field private saveButtonsContainer:Landroid/widget/FrameLayout;

.field private saveItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private final screenType:I

.field private scroller:Landroid/widget/Scroller;

.field private selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

.field self:Z

.field serverWallpaper:Lorg/telegram/messenger/MessageObject;

.field private setupFinished:Z

.field private sheetDrawable:Landroid/graphics/drawable/Drawable;

.field private shouldShowBrightnessControll:Z

.field private shouldShowDayNightIcon:Z

.field private showColor:Z

.field private sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field public final themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

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

.field private valueAnimator:Landroid/animation/ValueAnimator;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;

.field private wasScroll:Z

.field private watchForKeyboardEndTime:J


# direct methods
.method public static synthetic $r8$lambda$3kq2XLpT7m3HlI89VkViOr6cp8o(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$checkBoostsLevel$1(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4MkEGfTTsxF_NEuHcFodu9o21Ko(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$toggleTheme$34(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6m0IMkFWdTJ5w8X-XyaWG46bj6s(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$getThemeDescriptionsInternal$33()V

    return-void
.end method

.method public static synthetic $r8$lambda$6z8pnjFpq-WG1XVWQh_NVUp1vr0(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$15(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$7l0y9iw_m0niKbZRbjXJjoosHvs(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$6(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$BrutZEzplcX-HQfhG0nxLNJXqws(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$I-8ZIqxuvitM7Oy8UShdWo5JiRI(Lorg/telegram/ui/ThemePreviewActivity;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$13(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jm0zjZbtD1y4jrqidhzgbXe5iB0(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$selectColorType$24(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$K37XA3O4vavYth0kvces5qiocH4(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$selectColorType$23(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$K9DFdp80H8RjXENhJQhVtKoCvK0()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$applyWallpaperBackground$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$NKuEoPJs25Kq5GGEnaBZ2yH08yY(Lorg/telegram/ui/ThemePreviewActivity;ILorg/telegram/ui/Components/WallpaperCheckBoxView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$11(ILorg/telegram/ui/Components/WallpaperCheckBoxView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NXtlW056EBGd-1j0JY7lIBFFmJc(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QYYF4CkH2guitAQfO-WZhgNDaY0()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$onFragmentDestroy$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ri8dOhNpJTFlWHhMqj62VkVK40M(Lorg/telegram/ui/ThemePreviewActivity;ILorg/telegram/ui/Components/WallpaperCheckBoxView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$12(ILorg/telegram/ui/Components/WallpaperCheckBoxView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SgHhfEohU9Rx4w5RFRbR7Fvlh2Y(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$ThAJID99Pbqrn9U7F3ZISsfNBHo(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$checkDiscard$25(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$U16xN5o64FqgIYg3nIpJFv7TsMQ(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$applyWallpaperBackground$20(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VEdTZIkpQk7KCeuaJXoVuW72w6s(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$4(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$WqpwjCWhoMLLU6XmIscjC3PVq7w(Lorg/telegram/ui/ThemePreviewActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$toggleTheme$35(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zo8XL4ajFYqcIrdJmyS_l43ZggQ(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$didReceivedNotification$28(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_62yaM84_C4wlEcNtct3rM_1lzQ(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$didReceivedNotification$30(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a1OI3hv3F8WvmY3t2LAOvsUvsy4(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$exbROjpXp7iFZhV1LTFnowpS9Do(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$checkDiscard$26(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fETeWzyQ4YxXnlihO0iG-n4v0X0(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fIiiLup0Y8Qsln8XzLcoXULZfRo(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$didReceivedNotification$29(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hK3yE68TJ5U7_YiKF0nJ_Fd_ibM(Lorg/telegram/ui/ThemePreviewActivity;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$10(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i6ljtkI_lrVbRxPE7IEarXvRORI(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j-4_Y9HnV1sD7xXiXcKdKuxEWVo(Lorg/telegram/ui/ThemePreviewActivity;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$14(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kdaoG1mYZGzTMB4rcCYEookPqRQ(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$applyWallpaperBackground$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$mkW-eqX6ukPrjXbL4yVzabEnw4c(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$toggleTheme$36()V

    return-void
.end method

.method public static synthetic $r8$lambda$oolAjEMU4g23Pplm2QG57TwRUek(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$selectColorType$22(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qQUUGuTO6H6GXu0uQ3sRwt1qt7c(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$sXiD0bH9QQ5AUnnJxC4QYnH3UO8(Lorg/telegram/ui/ThemePreviewActivity;IIF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$7(IIF)V

    return-void
.end method

.method public static synthetic $r8$lambda$t7c8EVLSCpEAZq-0WMNNHsYas2A(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$showAnimationHint$32(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zC9oIDXA7DDEmWZIQDBUbr-AF18(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$3(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zb0kHjC0YF5bfG7dTa3MOyoXzJY(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$didReceivedNotification$31(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zp532Mh9lV1J85CnH49vQb1-wDs(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$18(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 529
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Ljava/lang/Object;Landroid/graphics/Bitmap;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/graphics/Bitmap;ZZ)V
    .locals 7

    .line 533
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 170
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ThemePreviewActivity$1;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->useDefaultThemeForButtons:Z

    .line 203
    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    .line 227
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0, v2}, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;-><init>(Lorg/telegram/ui/ThemePreviewActivity;IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 228
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;

    invoke-direct {v1, p0, v2, v0, v0}, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;-><init>(Lorg/telegram/ui/ThemePreviewActivity;IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 229
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;

    invoke-direct {v1, p0, v0, v0, v2}, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;-><init>(Lorg/telegram/ui/ThemePreviewActivity;IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 230
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;

    invoke-direct {v1, p0, v0, v0, v0}, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;-><init>(Lorg/telegram/ui/ThemePreviewActivity;IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v1, -0x1

    .line 234
    iput v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    .line 235
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorAction:Ljava/lang/Runnable;

    const/4 v1, 0x2

    new-array v3, v1, [Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    .line 271
    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    new-array v3, v1, [Landroid/widget/FrameLayout;

    .line 286
    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    new-array v3, v1, [Landroid/widget/TextView;

    .line 287
    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    new-array v3, v1, [Landroid/widget/TextView;

    .line 288
    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    new-array v3, v1, [Landroid/widget/FrameLayout;

    .line 289
    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    .line 296
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    const/high16 v3, 0x3f000000    # 0.5f

    .line 312
    iput v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    const/4 v3, 0x0

    .line 314
    iput v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    .line 321
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->blendMode:Landroid/graphics/PorterDuff$Mode;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 329
    iput v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxScale:F

    const-string v4, "640_360"

    .line 349
    iput-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    const/16 v4, 0x780

    .line 350
    iput v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    .line 354
    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->self:Z

    .line 363
    new-instance v4, Lorg/telegram/ui/Components/GestureDetector2;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/ThemePreviewActivity$2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ThemePreviewActivity$2;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-direct {v4, v5, v6}, Lorg/telegram/ui/Components/GestureDetector2;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;)V

    iput-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->gestureDetector2:Lorg/telegram/ui/Components/GestureDetector2;

    .line 414
    iput-boolean v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkingBoostsLevel:Z

    iput-boolean v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkedBoostsLevel:Z

    .line 534
    iput v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    .line 535
    iput-boolean p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->showColor:Z

    .line 536
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    .line 537
    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 538
    iput-boolean p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->rotatePreview:Z

    .line 539
    instance-of p2, p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz p2, :cond_0

    .line 540
    check-cast p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 541
    iget-boolean p2, p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->motion:Z

    iput-boolean p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    .line 542
    iget-object p2, p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz p2, :cond_0

    .line 544
    iget p1, p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->intensity:F

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    cmpg-float p1, p1, v3

    if-gez p1, :cond_0

    .line 545
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p1

    if-nez p1, :cond_0

    .line 546
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    .line 550
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    .line 551
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    .line 552
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    .line 553
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

    .line 557
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZIZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZIZZ)V
    .locals 5

    .line 561
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 170
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ThemePreviewActivity$1;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->useDefaultThemeForButtons:Z

    .line 203
    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    .line 227
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0, v2}, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;-><init>(Lorg/telegram/ui/ThemePreviewActivity;IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 228
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;

    invoke-direct {v1, p0, v2, v0, v0}, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;-><init>(Lorg/telegram/ui/ThemePreviewActivity;IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 229
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;

    invoke-direct {v1, p0, v0, v0, v2}, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;-><init>(Lorg/telegram/ui/ThemePreviewActivity;IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 230
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;

    invoke-direct {v1, p0, v0, v0, v0}, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;-><init>(Lorg/telegram/ui/ThemePreviewActivity;IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v1, -0x1

    .line 234
    iput v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    .line 235
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorAction:Ljava/lang/Runnable;

    const/4 v1, 0x2

    new-array v3, v1, [Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    .line 271
    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    new-array v3, v1, [Landroid/widget/FrameLayout;

    .line 286
    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    new-array v3, v1, [Landroid/widget/TextView;

    .line 287
    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    new-array v3, v1, [Landroid/widget/TextView;

    .line 288
    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    new-array v1, v1, [Landroid/widget/FrameLayout;

    .line 289
    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    .line 296
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 312
    iput v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    const/4 v1, 0x0

    .line 314
    iput v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    .line 321
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->blendMode:Landroid/graphics/PorterDuff$Mode;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 329
    iput v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxScale:F

    const-string v1, "640_360"

    .line 349
    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    const/16 v1, 0x780

    .line 350
    iput v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    .line 354
    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->self:Z

    .line 363
    new-instance v1, Lorg/telegram/ui/Components/GestureDetector2;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemePreviewActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemePreviewActivity$2;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-direct {v1, v3, v4}, Lorg/telegram/ui/Components/GestureDetector2;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->gestureDetector2:Lorg/telegram/ui/Components/GestureDetector2;

    .line 414
    iput-boolean v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkingBoostsLevel:Z

    iput-boolean v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkedBoostsLevel:Z

    .line 562
    iput p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    .line 563
    iput-boolean p5, p0, Lorg/telegram/ui/ThemePreviewActivity;->nightTheme:Z

    .line 564
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 565
    iput-boolean p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->deleteOnCancel:Z

    .line 566
    iput-boolean p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->editingTheme:Z

    if-ne p3, v0, :cond_0

    xor-int/lit8 p2, p4, 0x1

    .line 569
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz p1, :cond_2

    .line 571
    iput-boolean v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->useDefaultThemeForButtons:Z

    .line 572
    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupAccentColor:I

    .line 573
    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupAccentColor2:I

    .line 574
    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAccentColor:I

    .line 575
    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor1:I

    .line 576
    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor2:I

    .line 577
    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor3:I

    .line 578
    iget-boolean p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    iput-boolean p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAnimated:Z

    .line 579
    iget-wide p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    iput-wide p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundOverrideColor:J

    .line 580
    iget-wide p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    iput-wide p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor1:J

    .line 581
    iget-wide p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    iput-wide p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor2:J

    .line 582
    iget-wide p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    iput-wide p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor3:J

    .line 583
    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupIntensity:F

    .line 584
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupSlug:Ljava/lang/String;

    .line 585
    iget p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundRotation:I

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 589
    iput-boolean v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->useDefaultThemeForButtons:Z

    .line 591
    :cond_1
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz p1, :cond_2

    .line 593
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 596
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz p1, :cond_4

    .line 597
    iget-boolean p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternMotion:Z

    iput-boolean p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    .line 598
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 599
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    .line 601
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeTemporary(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Z)V

    .line 603
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->goingToPreviewTheme:I

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 604
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    .line 605
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    .line 606
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    .line 607
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/Scroller;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->scroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->invalidateBlur()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$10100(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$10200(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$10300(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$10400(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$10500(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$10600(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$10700(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$10800(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$10900(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$11000(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11100(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11200(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11300(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11400(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11500(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$11600(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$11700(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    return p0
.end method

.method static synthetic access$11800(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    return p0
.end method

.method static synthetic access$11900(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$12000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->blendMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method static synthetic access$12100(Lorg/telegram/ui/ThemePreviewActivity;)F
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxScale:F

    return p0
.end method

.method static synthetic access$12102(Lorg/telegram/ui/ThemePreviewActivity;F)F
    .locals 0

    .line 168
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxScale:F

    return p1
.end method

.method static synthetic access$12200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/WallpaperParallaxEffect;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    return-object p0
.end method

.method static synthetic access$12302(Lorg/telegram/ui/ThemePreviewActivity;Z)Z
    .locals 0

    .line 168
    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->progressVisible:Z

    return p1
.end method

.method static synthetic access$12400(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->setupFinished:Z

    return p0
.end method

.method static synthetic access$12600(Lorg/telegram/ui/ThemePreviewActivity;)F
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewProgress:F

    return p0
.end method

.method static synthetic access$12602(Lorg/telegram/ui/ThemePreviewActivity;F)F
    .locals 0

    .line 168
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewProgress:F

    return p1
.end method

.method static synthetic access$12700(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$12800(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/view/View;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$12802(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$12902(Lorg/telegram/ui/ThemePreviewActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSliderContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->sheetDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ThemePreviewActivity;)[Landroid/widget/FrameLayout;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    .line 168
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->checkDiscard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ThemePreviewActivity;Z)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->cancelThemeApply(Z)V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ThemePreviewActivity;I)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(I)V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->removeBackgroundOverride:Z

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/tgnet/TLRPC$TL_wallPaper;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ThemePreviewActivity;)F
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    return p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/ThemePreviewActivity;F)F
    .locals 0

    .line 168
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->saveAccentWallpaper()V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->nightTheme:Z

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ThemePreviewActivity;)Ljava/lang/Object;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/ThemePreviewActivity;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor3:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ThemePreviewActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/UndoView;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowBrightnessControll:Z

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Stories/recorder/SliderView;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/ThemePreviewActivity;)F
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator2:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$4902(Lorg/telegram/ui/ThemePreviewActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator2:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/ThemePreviewActivity;)F
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->progressToDarkTheme:F

    return p0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/ThemePreviewActivity;F)F
    .locals 0

    .line 168
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->progressToDarkTheme:F

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaperBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$5102(Lorg/telegram/ui/ThemePreviewActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaperBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastSizeHash:I

    return p0
.end method

.method static synthetic access$5202(Lorg/telegram/ui/ThemePreviewActivity;I)I
    .locals 0

    .line 168
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastSizeHash:I

    return p1
.end method

.method static synthetic access$5300(Lorg/telegram/ui/ThemePreviewActivity;Z)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    return-void
.end method

.method static synthetic access$5402(Lorg/telegram/ui/ThemePreviewActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$5500(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateBlurred()V

    return-void
.end method

.method static synthetic access$5700(Lorg/telegram/ui/ThemePreviewActivity;)[Lorg/telegram/ui/Components/WallpaperCheckBoxView;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    return-object p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/ThemePreviewActivity;)[Lorg/telegram/ui/Components/WallpaperCheckBoxView;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->hasScrollingBackground:Z

    return p0
.end method

.method static synthetic access$6102(Lorg/telegram/ui/ThemePreviewActivity;Z)Z
    .locals 0

    .line 168
    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->hasScrollingBackground:Z

    return p1
.end method

.method static synthetic access$6200(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->wasScroll:Z

    return p0
.end method

.method static synthetic access$6202(Lorg/telegram/ui/ThemePreviewActivity;Z)Z
    .locals 0

    .line 168
    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->wasScroll:Z

    return p1
.end method

.method static synthetic access$6300(Lorg/telegram/ui/ThemePreviewActivity;IZZ)V
    .locals 0

    .line 168
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    return-void
.end method

.method static synthetic access$6500(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/ThemePreviewActivity;)[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    return-object p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->onColorsRotate()V

    return-void
.end method

.method static synthetic access$6800(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/ColorPicker;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateIntensity()V

    return-void
.end method

.method static synthetic access$7100(Lorg/telegram/ui/ThemePreviewActivity;IIZZ)V
    .locals 0

    .line 168
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    return-void
.end method

.method static synthetic access$7200(Lorg/telegram/ui/ThemePreviewActivity;IIZ)V
    .locals 0

    .line 168
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemePreviewActivity;->scheduleApplyColor(IIZ)V

    return-void
.end method

.method static synthetic access$7300(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    return p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/ThemePreviewActivity;)J
    .locals 2

    .line 168
    iget-wide v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->watchForKeyboardEndTime:J

    return-wide v0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/view/View;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dotsContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/ThemePreviewActivity;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/ThemePreviewActivity;I)I
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->getButtonsColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$8302(Lorg/telegram/ui/ThemePreviewActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$8502(Lorg/telegram/ui/ThemePreviewActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$8602(Lorg/telegram/ui/ThemePreviewActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->motionAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$8702(Lorg/telegram/ui/ThemePreviewActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$8802(Lorg/telegram/ui/ThemePreviewActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$8900(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    .line 168
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method private animateMotionChange()V
    .locals 9

    .line 4266
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->motionAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 4267
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4269
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->motionAnimation:Landroid/animation/AnimatorSet;

    .line 4270
    iget-boolean v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    new-array v1, v2, [Landroid/animation/Animator;

    .line 4271
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v3, [F

    iget v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxScale:F

    aput v7, v6, v4

    .line 4272
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v3, [F

    iget v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxScale:F

    aput v7, v6, v4

    .line 4273
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v3

    .line 4271
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    .line 4275
    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v3, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v4

    .line 4276
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v1, v4

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v3, [F

    aput v8, v7, v4

    .line 4277
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v3, [F

    const/4 v8, 0x0

    aput v8, v7, v4

    .line 4278
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    aput v8, v3, v4

    .line 4279
    invoke-static {v5, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4275
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4281
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->motionAnimation:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4282
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->motionAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$37;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemePreviewActivity$37;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4288
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->motionAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private applyColor(II)V
    .locals 7

    .line 3825
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-nez p2, :cond_0

    .line 3827
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    .line 3828
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors()V

    goto/16 :goto_2

    :cond_0
    if-ne p2, v2, :cond_10

    .line 3830
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    .line 3831
    invoke-static {v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors(ZZ)V

    .line 3832
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 3833
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/ThemePreviewActivity;->hasChanges(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ColorPicker;->setHasChanges(Z)V

    .line 3834
    invoke-direct {p0, v2}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    goto/16 :goto_2

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_9

    .line 3837
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    if-nez v0, :cond_2

    .line 3838
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    int-to-long v3, p1

    iput-wide v3, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    goto :goto_0

    :cond_2
    const-wide v5, 0x100000000L

    if-ne p2, v2, :cond_4

    .line 3841
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result p2

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 3843
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v5, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    goto :goto_0

    .line 3845
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    int-to-long v3, p1

    iput-wide v3, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    goto :goto_0

    :cond_4
    if-ne p2, v4, :cond_6

    .line 3848
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result p2

    if-nez p1, :cond_5

    if-eqz p2, :cond_5

    .line 3850
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v5, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    goto :goto_0

    .line 3852
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    int-to-long v3, p1

    iput-wide v3, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    goto :goto_0

    :cond_6
    if-ne p2, v3, :cond_8

    .line 3855
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result p2

    if-nez p1, :cond_7

    if-eqz p2, :cond_7

    .line 3857
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v5, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    goto :goto_0

    .line 3859
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    int-to-long v3, p1

    iput-wide v3, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    .line 3863
    :cond_8
    :goto_0
    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors(ZZ)V

    .line 3864
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/ThemePreviewActivity;->hasChanges(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ColorPicker;->setHasChanges(Z)V

    .line 3865
    invoke-direct {p0, v2}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    goto :goto_2

    :cond_9
    if-ne v0, v3, :cond_10

    .line 3867
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    if-nez p2, :cond_a

    .line 3868
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    goto :goto_1

    :cond_a
    if-ne p2, v2, :cond_b

    .line 3870
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    goto :goto_1

    :cond_b
    if-ne p2, v4, :cond_d

    .line 3872
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v0, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    .line 3873
    iput p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v0, :cond_c

    if-nez p1, :cond_c

    .line 3875
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_1

    :cond_c
    if-nez v0, :cond_e

    if-eqz p1, :cond_e

    .line 3877
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 3878
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->showAnimationHint()V

    goto :goto_1

    .line 3881
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    .line 3883
    :cond_e
    :goto_1
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    if-ltz p2, :cond_f

    .line 3884
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v0, v0, v2

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    .line 3886
    :cond_f
    invoke-static {v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors(ZZ)V

    .line 3887
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 3888
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/ThemePreviewActivity;->hasChanges(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ColorPicker;->setHasChanges(Z)V

    .line 3889
    invoke-direct {p0, v2}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    .line 3892
    :cond_10
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDescriptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move p2, v1

    :goto_3
    if-ge p2, p1, :cond_11

    .line 3893
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDescriptions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 3894
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 3897
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 3898
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 3899
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dotsContainer:Landroid/view/View;

    if-eqz p1, :cond_12

    .line 3900
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_12
    return-void
.end method

.method private applyWallpaperBackground(Z)V
    .locals 32

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 2467
    iget-wide v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    .line 2468
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->channelCustomWallpaperLevelMin:I

    if-ge v0, v3, :cond_0

    .line 2469
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-wide v2, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    iget-object v4, v1, Lorg/telegram/ui/ThemePreviewActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    new-instance v5, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda17;

    invoke-direct {v5, v1}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/telegram/messenger/ChannelBoostsController;->userCanBoostChannel(JLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 2496
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-nez v0, :cond_1

    return-void

    .line 2500
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    .line 2501
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 2504
    :cond_2
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v0, v0, Lorg/telegram/ui/WallpapersListActivity$EmojiWallpaper;

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 2505
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->delegate:Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;

    if-eqz v0, :cond_3

    .line 2506
    invoke-interface {v0, v4}, Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;->didSetNewBackground(Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    .line 2508
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 2514
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    .line 2515
    iget-boolean v7, v1, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    invoke-virtual {v0, v4, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->generateWallpaperName(Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Z)Ljava/lang/String;

    move-result-object v7

    .line 2516
    iget-boolean v8, v1, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    invoke-virtual {v0, v4, v9}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->generateWallpaperName(Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Z)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :cond_5
    move-object v8, v7

    .line 2517
    :goto_0
    new-instance v10, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    invoke-direct {v10, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2518
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v11, v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const-string v13, "jpg"

    const-string v14, "t"

    const/4 v15, 0x2

    const/16 v5, 0x57

    if-eqz v11, :cond_9

    .line 2519
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->originalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 2521
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2522
    iget-object v11, v1, Lorg/telegram/ui/ThemePreviewActivity;->originalBitmap:Landroid/graphics/Bitmap;

    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v11, v12, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2523
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v3

    goto :goto_4

    :catch_0
    move-exception v0

    .line 2527
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2530
    :cond_6
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    .line 2531
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasStaticThumb()Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    move v0, v9

    goto :goto_4

    .line 2532
    :cond_8
    :goto_3
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2534
    :try_start_1
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2535
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v12, v5, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2536
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 2540
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_4
    if-nez v0, :cond_e

    .line 2548
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 2549
    iget v11, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v11

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v11, v0, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    .line 2551
    :try_start_2
    invoke-static {v0, v10}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object v11, v0

    .line 2554
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v0, v9

    goto/16 :goto_8

    .line 2557
    :cond_9
    instance-of v11, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v11, :cond_f

    .line 2558
    iget-object v11, v1, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v11, :cond_d

    .line 2560
    :try_start_3
    check-cast v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 2561
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2563
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2564
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2565
    iget v12, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    if-eqz v12, :cond_a

    goto :goto_5

    .line 2567
    :cond_a
    iget v12, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz v12, :cond_b

    .line 2568
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    iget v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    invoke-static {v5}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v5

    new-array v6, v15, [I

    iget v15, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    aput v15, v6, v9

    iget v15, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    aput v15, v6, v3

    invoke-direct {v12, v5, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 2569
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v12, v9, v9, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 2570
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 2572
    :cond_b
    iget v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    invoke-virtual {v11, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2574
    :goto_5
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 2575
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    iget v12, v1, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    iget-object v15, v1, Lorg/telegram/ui/ThemePreviewActivity;->blendMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v12, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/high16 v6, 0x437f0000    # 255.0f

    .line 2576
    iget v12, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v12, v6

    float-to-int v6, v12

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v6, 0x0

    .line 2577
    invoke-virtual {v11, v0, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2579
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2580
    iget v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    if-eqz v5, :cond_c

    .line 2581
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_6

    .line 2583
    :cond_c
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x57

    invoke-virtual {v4, v5, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2585
    :goto_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v3

    move v4, v9

    goto :goto_7

    :catchall_0
    move-exception v0

    .line 2588
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v0, v9

    move v4, v0

    :goto_7
    const/4 v12, 0x0

    goto/16 :goto_f

    :cond_d
    move v0, v3

    :cond_e
    :goto_8
    move-object v12, v4

    :goto_9
    move v4, v9

    goto/16 :goto_f

    .line 2594
    :cond_f
    instance-of v4, v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz v4, :cond_15

    .line 2595
    check-cast v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    .line 2596
    iget v4, v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->resId:I

    if-nez v4, :cond_14

    iget-object v4, v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->slug:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto/16 :goto_d

    .line 2601
    :cond_10
    :try_start_4
    iget-boolean v4, v1, Lorg/telegram/ui/ThemePreviewActivity;->hasScrollingBackground:Z

    if-eqz v4, :cond_11

    iget v4, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentScrollOffset:F

    iget v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->defaultScrollOffset:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_11

    .line 2602
    iget v4, v1, Lorg/telegram/ui/ThemePreviewActivity;->croppedWidth:F

    float-to-int v4, v4

    iget-object v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2603
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2604
    iget v6, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentScrollOffset:F

    iget v11, v1, Lorg/telegram/ui/ThemePreviewActivity;->maxScrollOffset:F

    div-float/2addr v6, v11

    iget-object v11, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v6, v11

    neg-float v6, v6

    const/4 v11, 0x0

    .line 2605
    invoke-virtual {v5, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2606
    iget-object v6, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaperBitmap:Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    const/4 v12, 0x0

    :try_start_5
    invoke-virtual {v5, v6, v11, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2608
    new-instance v5, Ljava/io/File;

    const/4 v6, 0x4

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v15}, Ljava/security/SecureRandom;->nextInt()I

    move-result v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ".jpg"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v11, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->path:Ljava/io/File;

    .line 2609
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->path:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2610
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x57

    invoke-virtual {v4, v6, v11, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2612
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 2613
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 2615
    iget-object v0, v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->path:Ljava/io/File;

    goto :goto_a

    :cond_11
    const/4 v12, 0x0

    .line 2617
    iget-object v4, v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->originalPath:Ljava/io/File;

    if-eqz v4, :cond_12

    move-object v0, v4

    goto :goto_a

    :cond_12
    iget-object v0, v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->path:Ljava/io/File;

    .line 2619
    :goto_a
    invoke-virtual {v0, v10}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    if-eqz v4, :cond_13

    move v0, v3

    goto :goto_f

    .line 2622
    :cond_13
    :try_start_6
    invoke-static {v0, v10}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    const/4 v12, 0x0

    :goto_b
    move v4, v9

    .line 2626
    :goto_c
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v0, v9

    goto :goto_f

    :cond_14
    :goto_d
    const/4 v12, 0x0

    move v0, v3

    goto/16 :goto_9

    :cond_15
    const/4 v12, 0x0

    .line 2629
    instance-of v4, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v4, :cond_17

    .line 2630
    check-cast v0, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 2632
    iget-object v4, v0, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v4, :cond_16

    .line 2633
    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget v4, v1, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    invoke-static {v0, v4, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 2634
    iget v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_e

    .line 2636
    :cond_16
    iget-object v0, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-static {v0, v13}, Lorg/telegram/messenger/ImageLoader;->getHttpFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2639
    :goto_e
    :try_start_7
    invoke-static {v0, v10}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_9

    :catch_6
    move-exception v0

    move-object v4, v0

    .line 2642
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v0, v9

    goto/16 :goto_9

    :cond_17
    move v0, v9

    move v4, v0

    .line 2647
    :goto_f
    iget-boolean v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    if-eqz v5, :cond_18

    .line 2649
    :try_start_8
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v5

    invoke-direct {v0, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2650
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2651
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x57

    invoke-virtual {v0, v6, v11, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2652
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move v0, v3

    goto :goto_10

    :catchall_1
    move-exception v0

    .line 2655
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v0, v9

    .line 2668
    :cond_18
    :goto_10
    iget-object v6, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v11, v6, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const-string v15, "c"

    const-string v5, "d"

    if-eqz v11, :cond_19

    .line 2669
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 2670
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    move/from16 v24, v4

    move-object/from16 v16, v6

    move v13, v9

    move-object/from16 v23, v10

    move-object v3, v12

    const/16 v6, 0x2d

    move v10, v13

    move v12, v10

    goto/16 :goto_16

    .line 2671
    :cond_19
    instance-of v11, v6, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v11, :cond_1c

    .line 2672
    check-cast v6, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 2673
    iget-object v6, v6, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    move-object v11, v5

    move v3, v9

    move v12, v3

    move v13, v12

    const/16 v16, 0x2d

    goto :goto_12

    .line 2677
    :cond_1a
    iget-object v6, v1, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v6, :cond_1b

    .line 2678
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    goto :goto_11

    :cond_1b
    move-object v6, v15

    .line 2682
    :goto_11
    iget v11, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    .line 2683
    iget v13, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    .line 2684
    iget v12, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    .line 2685
    iget v9, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor3:I

    .line 2686
    iget v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    move/from16 v16, v3

    move v3, v9

    move v9, v11

    move-object v11, v6

    :goto_12
    move/from16 v24, v4

    move-object/from16 v23, v10

    move/from16 v6, v16

    const/16 v16, 0x0

    move v10, v3

    const/4 v3, 0x0

    move/from16 v31, v12

    move v12, v9

    move/from16 v9, v31

    goto :goto_16

    .line 2688
    :cond_1c
    instance-of v3, v6, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz v3, :cond_1d

    .line 2689
    check-cast v6, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    .line 2690
    iget-object v11, v6, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->slug:Ljava/lang/String;

    .line 2691
    iget-object v3, v6, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->path:Ljava/io/File;

    :goto_13
    move/from16 v24, v4

    move-object/from16 v23, v10

    :goto_14
    const/16 v6, 0x2d

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    goto :goto_16

    .line 2692
    :cond_1d
    instance-of v3, v6, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v3, :cond_1f

    .line 2693
    check-cast v6, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 2694
    iget-object v3, v6, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_1e

    .line 2695
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget v6, v1, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    const/4 v9, 0x1

    invoke-static {v3, v6, v9}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 2696
    iget v6, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v3, v9}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    goto :goto_15

    .line 2698
    :cond_1e
    iget-object v3, v6, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-static {v3, v13}, Lorg/telegram/messenger/ImageLoader;->getHttpFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    :goto_15
    const-string v11, ""

    goto :goto_13

    :cond_1f
    move/from16 v24, v4

    move-object v11, v5

    move-object/from16 v23, v10

    const/4 v3, 0x0

    goto :goto_14

    .line 2706
    :goto_16
    new-instance v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    invoke-direct {v4}, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;-><init>()V

    .line 2707
    iput-object v8, v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->fileName:Ljava/lang/String;

    .line 2708
    iput-object v7, v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->originalFileName:Ljava/lang/String;

    .line 2709
    iput-object v11, v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    .line 2710
    iget-boolean v7, v1, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    iput-boolean v7, v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isBlurred:Z

    .line 2711
    iget-boolean v7, v1, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    iput-boolean v7, v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isMotion:Z

    .line 2712
    iput v12, v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->color:I

    .line 2713
    iput v13, v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor1:I

    .line 2714
    iput v9, v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor2:I

    .line 2715
    iput v10, v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor3:I

    .line 2716
    iput v6, v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->rotation:I

    .line 2717
    iget-boolean v7, v1, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowBrightnessControll:Z

    if-eqz v7, :cond_20

    iget v7, v1, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    const/4 v8, 0x0

    cmpl-float v17, v7, v8

    if-ltz v17, :cond_20

    .line 2718
    iput v7, v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->intensity:F

    goto :goto_17

    .line 2720
    :cond_20
    iget v7, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    iput v7, v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->intensity:F

    .line 2722
    :goto_17
    iget-object v7, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v8, v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v8, :cond_24

    .line 2723
    check-cast v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 2725
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_21

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_21

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    move-object v5, v11

    goto :goto_18

    :cond_21
    const/4 v5, 0x0

    .line 2730
    :goto_18
    iget v8, v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->intensity:F

    const/4 v15, 0x0

    cmpg-float v17, v8, v15

    if-gez v17, :cond_22

    .line 2731
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v15

    if-nez v15, :cond_22

    const/high16 v15, -0x40800000    # -1.0f

    mul-float/2addr v8, v15

    .line 2734
    :cond_22
    iget-object v15, v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->parentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v15, :cond_24

    iget v15, v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->color:I

    if-ne v15, v12, :cond_24

    iget v12, v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor1:I

    if-ne v12, v13, :cond_24

    iget v12, v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor2:I

    if-ne v12, v9, :cond_24

    iget v9, v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor3:I

    if-ne v9, v10, :cond_24

    iget-object v9, v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    .line 2735
    invoke-static {v9, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_24

    iget v5, v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientRotation:I

    if-ne v5, v6, :cond_24

    iget-object v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v5, :cond_23

    iget v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    sub-float/2addr v8, v5

    .line 2736
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3a83126f    # 0.001f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_24

    .line 2737
    :cond_23
    iget-object v5, v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->parentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iput-wide v6, v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->wallpaperId:J

    .line 2738
    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->access_hash:J

    iput-wide v5, v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->accessHash:J

    .line 2741
    :cond_24
    iget-wide v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    iput-wide v5, v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->dialogId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_25

    .line 2743
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v5

    if-eqz v5, :cond_25

    .line 2745
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iput-object v5, v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->prevUserWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 2748
    :cond_25
    iput-boolean v2, v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->forBoth:Z

    .line 2749
    iget v5, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v17

    if-eqz v11, :cond_26

    iget-wide v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_26

    const/16 v20, 0x1

    goto :goto_19

    :cond_26
    const/16 v20, 0x0

    :goto_19
    const-wide/16 v21, 0x0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-virtual/range {v17 .. v22}, Lorg/telegram/messenger/MessagesController;->saveWallpaperToServer(Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;ZJ)V

    if-eqz v0, :cond_2e

    .line 2753
    iget-wide v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_2c

    if-eqz v3, :cond_2a

    .line 2756
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->uploadingWallpaperInfo:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    if-ne v0, v4, :cond_2a

    .line 2757
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;-><init>()V

    .line 2758
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;-><init>()V

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    .line 2759
    iget v6, v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->intensity:F

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    .line 2760
    iget-boolean v6, v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isBlurred:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->blur:Z

    .line 2761
    iget-boolean v4, v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isMotion:Z

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    .line 2762
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->uploadingImage:Ljava/lang/String;

    .line 2763
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v4, 0x32

    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2764
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2765
    iget-object v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42480000    # 50.0f

    div-float v5, v6, v5

    iget-object v7, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 2766
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2767
    iget-object v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    if-le v5, v6, :cond_27

    .line 2768
    iget-object v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1a

    :cond_27
    const/4 v6, 0x0

    .line 2770
    iget-object v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-object v8, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v5, v8

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2772
    :goto_1a
    iget v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    .line 2773
    iput v6, v1, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    .line 2774
    iget-object v6, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v6, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2775
    iput v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    const/4 v6, 0x3

    const/4 v7, 0x1

    .line 2776
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v10

    move-object v5, v3

    invoke-static/range {v5 .. v10}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 2777
    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->stripedThumb:Landroid/graphics/Bitmap;

    .line 2779
    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/ThemePreviewActivity;->createServiceMessageLocal(Lorg/telegram/tgnet/TLRPC$WallPaper;Z)V

    .line 2781
    iget-wide v2, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_28

    .line 2782
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 2784
    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 2785
    iget v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1b

    .line 2788
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    neg-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 2790
    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 2791
    iget v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v5, v7

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v7, 0x2

    aput-object v2, v5, v7

    const/4 v7, 0x3

    aput-object v2, v5, v7

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1c

    :cond_29
    :goto_1b
    const/4 v6, 0x0

    :goto_1c
    move-object v9, v0

    goto :goto_1d

    :cond_2a
    const/4 v6, 0x0

    .line 2795
    iget v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v24

    iget-wide v2, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const/16 v27, 0x0

    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->serverWallpaper:Lorg/telegram/messenger/MessageObject;

    sget-object v30, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda26;->INSTANCE:Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda26;

    move-wide/from16 v25, v2

    move-object/from16 v28, v4

    move-object/from16 v29, v0

    invoke-virtual/range {v24 .. v30}, Lorg/telegram/messenger/ChatThemeController;->setWallpaperToPeer(JLjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;Lorg/telegram/messenger/MessageObject;Ljava/lang/Runnable;)I

    move-object/from16 v9, v16

    :goto_1d
    const/4 v2, 0x1

    .line 2799
    iput-boolean v2, v1, Lorg/telegram/ui/ThemePreviewActivity;->setupFinished:Z

    .line 2800
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->delegate:Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;

    if-eqz v0, :cond_2b

    .line 2801
    invoke-interface {v0, v9}, Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;->didSetNewBackground(Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    .line 2803
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    move v3, v6

    goto :goto_1f

    .line 2805
    :cond_2c
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceBackground:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    sput v0, Lorg/telegram/ui/ActionBar/Theme;->serviceMessageColorBackup:I

    .line 2806
    iget-object v0, v4, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v4, 0x0

    .line 2809
    :cond_2d
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->setOverrideWallpaper(Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;)V

    const/4 v2, 0x1

    .line 2810
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->reloadWallpaper(Z)V

    if-nez v24, :cond_2f

    .line 2812
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->getHttpFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@100_100"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    goto :goto_1e

    :cond_2e
    const/4 v2, 0x1

    :cond_2f
    :goto_1e
    move v3, v2

    move-object/from16 v9, v16

    :goto_1f
    if-eqz v3, :cond_31

    .line 2817
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->delegate:Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;

    if-eqz v0, :cond_30

    .line 2818
    invoke-interface {v0, v9}, Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;->didSetNewBackground(Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    .line 2820
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_31
    return-void
.end method

.method private cancelThemeApply(Z)V
    .locals 5

    .line 3694
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    .line 3696
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_0
    return-void

    .line 3700
    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->applyPreviousTheme()V

    .line 3701
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3702
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 3703
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->editingTheme:Z

    if-eqz v0, :cond_2

    .line 3704
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupAccentColor:I

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    .line 3705
    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupAccentColor2:I

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    .line 3706
    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAccentColor:I

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    .line 3707
    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor1:I

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    .line 3708
    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor2:I

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    .line 3709
    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor3:I

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    .line 3710
    iget-boolean v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAnimated:Z

    iput-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    .line 3711
    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundOverrideColor:J

    iput-wide v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    .line 3712
    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor1:J

    iput-wide v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    .line 3713
    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor2:J

    iput-wide v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    .line 3714
    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor3:J

    iput-wide v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    .line 3715
    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundRotation:I

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    .line 3716
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupSlug:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    .line 3717
    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupIntensity:F

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    .line 3719
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-static {v0, v2, v1, v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->saveThemeAccents(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZZZ)V

    goto :goto_0

    .line 3721
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v0, :cond_4

    .line 3722
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-boolean v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->deleteOnCancel:Z

    invoke-static {v0, v2, v1, v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->saveThemeAccents(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZZZ)V

    .line 3724
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0, v2, v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildAllFragmentViews(ZZ)V

    .line 3725
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->deleteOnCancel:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->isThemeInstalled(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3726
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_5
    :goto_0
    if-nez p1, :cond_6

    .line 3730
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_6
    return-void
.end method

.method private checkBlur(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9

    .line 3343
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastDrawableToBlur:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 3344
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1

    .line 3346
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastDrawableToBlur:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 3347
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 3349
    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastDrawableToBlur:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    .line 3350
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    .line 3353
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastDrawableToBlur:Ljava/lang/ref/WeakReference;

    .line 3356
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 3357
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x18

    invoke-static {v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x0

    .line 3358
    invoke-virtual {p1, v3, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3359
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_3

    .line 3360
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 3361
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    const v3, 0x3fa66666    # 1.3f

    .line 3362
    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    const v3, 0x3f70a3d7    # 0.94f

    .line 3363
    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->multiplyBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    .line 3364
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3365
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3366
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 3368
    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    const/4 v4, 0x3

    const/4 v5, 0x1

    .line 3370
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    move-object v3, v1

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 3371
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x1

    .line 3372
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 3373
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1

    .line 3351
    :cond_4
    :goto_1
    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method private checkBoostsLevel()V
    .locals 4

    .line 417
    iget-wide v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkingBoostsLevel:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkedBoostsLevel:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 420
    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkingBoostsLevel:Z

    .line 421
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkDiscard()Z
    .locals 6

    .line 3248
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

    .line 3260
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

    .line 3262
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

    .line 3266
    :cond_2
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3267
    sget v1, Lorg/telegram/messenger/R$string;->SaveChangesAlertTitle:I

    const-string v2, "SaveChangesAlertTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3268
    sget v1, Lorg/telegram/messenger/R$string;->SaveChangesAlertText:I

    const-string v2, "SaveChangesAlertText"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3269
    sget v1, Lorg/telegram/messenger/R$string;->Save:I

    const-string v2, "Save"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3270
    sget v1, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    const-string v2, "PassportDiscard"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3271
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, 0x0

    return v0

    :cond_3
    return v1
.end method

.method private createServiceMessageLocal(Lorg/telegram/tgnet/TLRPC$WallPaper;Z)V
    .locals 5

    .line 5796
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 5797
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 5798
    iget-wide v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/4 v1, 0x1

    .line 5799
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 5800
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 5801
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    .line 5802
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 5803
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5804
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5805
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 5806
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5807
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    goto :goto_0

    .line 5809
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5810
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 5811
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5812
    iget-wide v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 5814
    :goto_0
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 5815
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 5816
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;-><init>()V

    .line 5817
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 5818
    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 5819
    iput-boolean p2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;->for_both:Z

    .line 5821
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5822
    new-instance p2, Lorg/telegram/messenger/MessageObject;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v2, 0x0

    invoke-direct {p2, v1, v0, v2, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5823
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5824
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5826
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    invoke-virtual {p2, v0, v1, p1, v2}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;Z)Z

    return-void
.end method

.method private getButtonsColor(I)I
    .locals 1

    .line 3735
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->useDefaultThemeForButtons:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColor(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method private hasChanges(I)Z
    .locals 10

    .line 3150
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

    .line 3154
    :cond_1
    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundOverrideColor:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    .line 3155
    iget-object v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_4

    return v2

    .line 3159
    :cond_2
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v3

    .line 3160
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v7, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    long-to-int v4, v7

    if-nez v4, :cond_3

    move v4, v3

    :cond_3
    if-eq v4, v3, :cond_4

    return v2

    .line 3166
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

    .line 3175
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v4

    .line 3176
    iget-object v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    goto :goto_1

    :cond_6
    if-ne v3, v2, :cond_7

    .line 3178
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v4

    .line 3179
    iget-object v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    goto :goto_1

    .line 3181
    :cond_7
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v4

    .line 3182
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

    .line 3167
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

    .line 3196
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v3, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    iget v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundRotation:I

    if-eq v3, v4, :cond_d

    return v2

    :cond_d
    if-eq p1, v2, :cond_e

    if-ne p1, v0, :cond_18

    .line 3201
    :cond_e
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupAccentColor:I

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eq p1, v3, :cond_f

    return v2

    .line 3204
    :cond_f
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAccentColor:I

    if-eqz p1, :cond_10

    .line 3205
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    if-eq p1, v3, :cond_11

    return v2

    .line 3209
    :cond_10
    iget p1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    if-eqz p1, :cond_11

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    if-eq p1, v3, :cond_11

    return v2

    .line 3213
    :cond_11
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor1:I

    if-eqz p1, :cond_12

    .line 3214
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eq p1, v3, :cond_13

    return v2

    .line 3218
    :cond_12
    iget p1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz p1, :cond_13

    return v2

    .line 3222
    :cond_13
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor2:I

    if-eqz p1, :cond_14

    .line 3223
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eq p1, v3, :cond_15

    return v2

    .line 3227
    :cond_14
    iget p1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz p1, :cond_15

    return v2

    .line 3231
    :cond_15
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor3:I

    if-eqz p1, :cond_16

    .line 3232
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-eq p1, v3, :cond_17

    return v2

    .line 3236
    :cond_16
    iget p1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-eqz p1, :cond_17

    return v2

    .line 3240
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

.method private invalidateBlur()V
    .locals 5

    .line 3377
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSliderContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 3378
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 3380
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3381
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3382
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3385
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 3386
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    .line 3387
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3390
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-eqz v0, :cond_5

    move v0, v1

    .line 3391
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 3392
    aget-object v3, v2, v0

    if-eqz v3, :cond_4

    .line 3393
    aget-object v2, v2, v0

    iget-boolean v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowBrightnessControll:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    iget v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->progressToDarkTheme:F

    mul-float/2addr v3, v4

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setDimAmount(F)V

    .line 3394
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3398
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_7

    move v0, v1

    .line 3399
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 3400
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3401
    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v3, :cond_6

    .line 3402
    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-direct {p0, v3}, Lorg/telegram/ui/ThemePreviewActivity;->setVisiblePart(Lorg/telegram/ui/Cells/ChatActionCell;)V

    .line 3403
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3407
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_9

    .line 3408
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 3409
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3410
    instance-of v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v2, :cond_8

    .line 3411
    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-direct {p0, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setVisiblePart(Lorg/telegram/ui/Cells/ChatActionCell;)V

    .line 3412
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3416
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    if-eqz v0, :cond_a

    .line 3417
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 3419
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    if-eqz v0, :cond_b

    .line 3420
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 3422
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_c

    .line 3423
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_c
    return-void
.end method

.method private synthetic lambda$applyWallpaperBackground$19()V
    .locals 5

    .line 2479
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2480
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2481
    iget-wide v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    neg-long v2, v2

    const-string v4, "chat_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2482
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    const-string v2, "is_megagroup"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "start_from_boosts"

    const/4 v2, 0x1

    .line 2483
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2484
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    neg-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2485
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_stats:Z

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "only_boosts"

    .line 2486
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2489
    :cond_1
    new-instance v0, Lorg/telegram/ui/StatisticActivity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/StatisticActivity;-><init>(Landroid/os/Bundle;)V

    .line 2490
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$applyWallpaperBackground$20(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 7

    .line 2470
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2473
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x17

    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/ThemePreviewActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2474
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setCanApplyBoost(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    .line 2475
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setBoostsStats(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    .line 2476
    iget-wide v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setDialogId(J)V

    .line 2477
    invoke-virtual {p0}, Lorg/telegram/ui/ThemePreviewActivity;->insideBottomSheet()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2478
    new-instance p1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda21;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->showStatisticButtonInLink(Ljava/lang/Runnable;)V

    .line 2493
    :cond_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private static synthetic lambda$applyWallpaperBackground$21()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$checkBoostsLevel$1(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    const/4 p1, 0x1

    .line 423
    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkedBoostsLevel:Z

    .line 424
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->updateApplyButton1(Z)V

    const/4 p1, 0x0

    .line 425
    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkingBoostsLevel:Z

    return-void
.end method

.method private synthetic lambda$checkDiscard$25(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3269
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getActionBarMenuOnItemClick()Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;->onItemClick(I)V

    return-void
.end method

.method private synthetic lambda$checkDiscard$26(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 3270
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->cancelThemeApply(Z)V

    return-void
.end method

.method private synthetic lambda$createView$10(Ljava/lang/Float;)V
    .locals 0

    .line 1569
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    .line 1570
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1571
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->invalidateBlur()V

    return-void
.end method

.method private synthetic lambda$createView$11(ILorg/telegram/ui/Components/WallpaperCheckBoxView;Landroid/view/View;)V
    .locals 3

    .line 1716
    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p3, p3, v0

    if-nez p3, :cond_11

    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_0

    goto/16 :goto_4

    .line 1719
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

    .line 1720
    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    .line 1721
    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    .line 1722
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    .line 1723
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->animateMotionChange()V

    goto/16 :goto_4

    :cond_2
    const/4 v1, 0x0

    if-ne p1, v0, :cond_c

    if-eq p3, v0, :cond_3

    .line 1724
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v2, v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v2, :cond_c

    .line 1725
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1726
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastSelectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 1727
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1728
    iput-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 1729
    iput-boolean v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    .line 1730
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    .line 1731
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->animateMotionChange()V

    .line 1732
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_a

    .line 1733
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne p2, v0, :cond_4

    .line 1734
    invoke-direct {p0, v1, v0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    goto :goto_3

    .line 1736
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

    .line 1740
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastSelectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz p2, :cond_7

    const/4 p2, -0x1

    goto :goto_1

    :cond_7
    move p2, v1

    :goto_1
    invoke-direct {p0, p2}, Lorg/telegram/ui/ThemePreviewActivity;->selectPattern(I)V

    .line 1741
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne p2, v0, :cond_8

    .line 1742
    invoke-direct {p0, v0, v0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    goto :goto_3

    .line 1744
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

    .line 1747
    :cond_a
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object p1, p1, v0

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz p2, :cond_b

    move v1, v0

    :cond_b
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    .line 1748
    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updateSelectedPattern(Z)V

    .line 1749
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1750
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateMotionButton()V

    goto :goto_4

    .line 1751
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v2, v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v2, :cond_e

    .line 1752
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

    .line 1754
    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p3

    xor-int/2addr p3, v0

    invoke-virtual {p2, p3, v0}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    if-nez p1, :cond_10

    .line 1756
    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    if-eqz p1, :cond_f

    .line 1758
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setForceCrossfade(Z)V

    .line 1760
    :cond_f
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateBlurred()V

    goto :goto_4

    .line 1762
    :cond_10
    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    .line 1763
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    .line 1764
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->animateMotionChange()V

    :cond_11
    :goto_4
    return-void
.end method

.method private synthetic lambda$createView$12(ILorg/telegram/ui/Components/WallpaperCheckBoxView;Landroid/view/View;)V
    .locals 1

    .line 1878
    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1882
    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p1

    const/4 p3, 0x1

    xor-int/2addr p1, p3

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    .line 1883
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p2

    iput-boolean p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    .line 1884
    invoke-static {p3, p3}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors(ZZ)V

    .line 1885
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$13(ILandroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1959
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 1963
    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundRotation:I

    iput v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    .line 1964
    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundGradientColor3:I

    const/4 v6, 0x3

    invoke-direct {v0, v5, v6, v4, v4}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    .line 1965
    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundGradientColor2:I

    invoke-direct {v0, v5, v2, v4, v4}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    .line 1966
    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundGradientColor1:I

    invoke-direct {v0, v5, v4, v4, v4}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    .line 1967
    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundColor:I

    invoke-direct {v0, v5, v3, v4, v4}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    goto :goto_2

    .line 1969
    :cond_1
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->previousSelectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v5, :cond_2

    .line 1971
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1973
    :cond_2
    iget-object v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

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

    .line 1975
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

    .line 1977
    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->previousIntensity:F

    iput v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    .line 1978
    iget-object v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    .line 1979
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    iget v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1980
    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    .line 1981
    invoke-direct {v0, v4}, Lorg/telegram/ui/ThemePreviewActivity;->updateSelectedPattern(Z)V

    .line 1983
    :goto_2
    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v5, v2, :cond_4

    .line 1984
    invoke-direct {v0, v1, v3, v4}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    goto :goto_3

    .line 1986
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v1, :cond_6

    .line 1987
    iget-boolean v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    if-eqz v1, :cond_5

    .line 1988
    iput-boolean v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    .line 1989
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    .line 1990
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->animateMotionChange()V

    .line 1992
    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateMotionButton()V

    .line 1994
    :cond_6
    invoke-direct {v0, v3, v4, v4}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    :goto_3
    return-void
.end method

.method private synthetic lambda$createView$14(ILandroid/view/View;)V
    .locals 3

    .line 2008
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_0

    return-void

    .line 2011
    :cond_0
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    .line 2012
    invoke-direct {p0, p1, v1, v2}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    goto :goto_0

    .line 2014
    :cond_1
    invoke-direct {p0, v1, v2, v2}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$15(Landroid/view/View;I)V
    .locals 3

    .line 2058
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2059
    :goto_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/ThemePreviewActivity;->selectPattern(I)V

    .line 2060
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez p2, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    if-ne v0, p2, :cond_2

    .line 2061
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->animateMotionChange()V

    .line 2062
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateMotionButton()V

    .line 2064
    :cond_2
    invoke-direct {p0, v2}, Lorg/telegram/ui/ThemePreviewActivity;->updateSelectedPattern(Z)V

    .line 2065
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

    .line 2066
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 2068
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    .line 2069
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    const/16 v0, 0x34

    .line 2070
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p2, v0

    if-gez p2, :cond_4

    .line 2072
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_3

    :cond_4
    add-int/2addr p1, v0

    .line 2073
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    if-le p1, p2, :cond_5

    .line 2074
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_5
    :goto_3
    return-void
.end method

.method private synthetic lambda$createView$16()V
    .locals 4

    .line 2244
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x5dc

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->watchForKeyboardEndTime:J

    .line 2245
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$createView$17(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 2344
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->cancelThemeApply(Z)V

    return-void
.end method

.method private synthetic lambda$createView$18(Landroid/view/View;)V
    .locals 8

    .line 2356
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getPreviousTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2361
    :cond_0
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->prevAccentId:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 2362
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    goto :goto_0

    .line 2364
    :cond_1
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v0

    .line 2366
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 2367
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->saveAccentWallpaper()V

    .line 2368
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-static {v2, v3, v1, v1, v1}, Lorg/telegram/ui/ActionBar/Theme;->saveThemeAccents(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZZZ)V

    .line 2369
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->clearPreviousTheme()V

    .line 2370
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-boolean v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->nightTheme:Z

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->applyTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Z)V

    .line 2371
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2, v1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildAllFragmentViews(ZZ)V

    goto :goto_1

    .line 2373
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2, v1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildAllFragmentViews(ZZ)V

    .line 2374
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    invoke-static {v2, v5, v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeFile(Ljava/io/File;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_theme;Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 2375
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->account:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v1, v1}, Lorg/telegram/messenger/MessagesController;->saveTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;ZZ)V

    .line 2376
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "themeconfig"

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2377
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lastDayTheme"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2378
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2380
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v4

    invoke-interface {v4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2381
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 2382
    iget v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-nez v4, :cond_3

    .line 2383
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->didApplyNewTheme:I

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v1

    aput-object v0, v7, v3

    iget-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->deleteOnCancel:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v7, v5

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2385
    :cond_3
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->turnOffAutoNight(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private synthetic lambda$createView$2()V
    .locals 11

    .line 637
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 640
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->increaseDayNightWallpaperSiwtchHint()V

    .line 641
    new-instance v0, Lorg/telegram/ui/Components/HintView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;IZ)V

    const/4 v1, 0x0

    .line 642
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v1, 0x4

    .line 643
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-wide/16 v1, 0xfa0

    .line 644
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/HintView;->setShowingDuration(J)V

    .line 645
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x33

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->isDark()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 647
    sget v1, Lorg/telegram/messenger/R$string;->PreviewWallpaperDay:I

    const-string v2, "PreviewWallpaperDay"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 649
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->PreviewWallpaperNight:I

    const-string v2, "PreviewWallpaperNight"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v1, -0x15d8d0c8

    const/4 v2, -0x1

    .line 651
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/HintView;->setBackgroundColor(II)V

    .line 652
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    const/16 v1, 0xe

    .line 653
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setExtraTranslationY(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static synthetic lambda$createView$3(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$createView$4(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 2

    .line 1080
    iget-object p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of p4, p4, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-nez p4, :cond_1

    .line 1081
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 1083
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I

    move-result-object p4

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->checkBlur(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, p4, v0, p1, v1}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->applyChatServiceMessageColor([ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Float;)V

    if-nez p3, :cond_0

    .line 1084
    iget-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 1085
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 1086
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateBlurred()V

    .line 1087
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 1089
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->invalidateBlur()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 0

    .line 1154
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;IFF)V
    .locals 0

    .line 1376
    instance-of p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p2, :cond_2

    .line 1377
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1378
    invoke-virtual {p1, p3, p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->isInsideBackground(FF)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1379
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 1380
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1382
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 1385
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$7(IIF)V
    .locals 2

    .line 1410
    iget-boolean p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    if-nez p3, :cond_0

    return-void

    .line 1413
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p3}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 1415
    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->motionAnimation:Landroid/animation/AnimatorSet;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p3, :cond_1

    .line 1416
    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p3}, Landroid/view/View;->getScaleX()F

    move-result p3

    sub-float/2addr p3, v0

    iget v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxScale:F

    sub-float/2addr v1, v0

    div-float v0, p3, v1

    .line 1420
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    int-to-float p1, p1

    mul-float/2addr p1, v0

    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 1421
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    int-to-float p2, p2

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1497
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->applyWallpaperBackground(Z)V

    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1513
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->applyWallpaperBackground(Z)V

    return-void
.end method

.method private synthetic lambda$didReceivedNotification$28(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    .line 3669
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_0

    .line 3670
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 3671
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v0, :cond_0

    .line 3672
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const/4 p1, 0x0

    .line 3673
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    .line 3674
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    .line 3675
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3676
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsAdapter:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    if-eqz p1, :cond_0

    .line 3677
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$didReceivedNotification$29(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 3668
    new-instance p2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda24;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$didReceivedNotification$30(Lorg/telegram/tgnet/TLObject;)V
    .locals 10

    .line 3630
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;

    if-eqz v0, :cond_7

    .line 3631
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;

    .line 3632
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3633
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3635
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_4

    .line 3636
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v5, :cond_0

    goto :goto_2

    .line 3639
    :cond_0
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 3640
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v6, :cond_3

    .line 3641
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_1

    iget-object v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3642
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3643
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3645
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v6, :cond_2

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3646
    iput-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 3648
    invoke-direct {p0, v1}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    .line 3649
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    :goto_1
    move v3, v4

    goto :goto_2

    .line 3650
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v6, :cond_3

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    if-eqz v6, :cond_3

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

    .line 3655
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_5

    .line 3656
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3658
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsAdapter:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    if-eqz v0, :cond_6

    .line 3659
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3661
    :cond_6
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v4}, Lorg/telegram/messenger/MessagesStorage;->putWallpapers(Ljava/util/ArrayList;I)V

    .line 3663
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 3664
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPaper;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPaper;-><init>()V

    .line 3665
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperSlug;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperSlug;-><init>()V

    .line 3666
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperSlug;->slug:Ljava/lang/String;

    .line 3667
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPaper;->wallpaper:Lorg/telegram/tgnet/TLRPC$InputWallPaper;

    .line 3668
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 3682
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$didReceivedNotification$31(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 3629
    new-instance p2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda25;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptionsInternal$33()V
    .locals 6

    .line 5636
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5637
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 5638
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 5640
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->sheetDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 5641
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 5643
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 5644
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 5646
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    if-eqz v0, :cond_4

    .line 5647
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5648
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    .line 5649
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    iget-wide v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 5650
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOverlayNavBarColor(I)V

    goto :goto_0

    .line 5653
    :cond_3
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setNavigationBarColor(I)V

    .line 5656
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-eqz v0, :cond_6

    move v0, v1

    .line 5657
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 5658
    aget-object v3, v2, v0

    if-eqz v3, :cond_5

    .line 5659
    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5664
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-eqz v0, :cond_8

    .line 5665
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    array-length v2, v0

    if-ge v1, v2, :cond_8

    .line 5666
    aget-object v2, v0, v1

    if-eqz v2, :cond_7

    .line 5667
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5671
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 5672
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5674
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v0, :cond_a

    .line 5675
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ColorPicker;->invalidate()V

    :cond_a
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorScheduled:Z

    .line 237
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColor:I

    iget v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ThemePreviewActivity;->applyColor(II)V

    const/4 v0, -0x1

    .line 238
    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    return-void
.end method

.method private static synthetic lambda$onFragmentDestroy$27()V
    .locals 1

    const/4 v0, 0x0

    .line 3318
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->setChangingWallpaper(Z)V

    return-void
.end method

.method private synthetic lambda$selectColorType$22(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 2854
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    const-wide v2, 0x100000000L

    cmp-long p2, v0, v2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-wide/16 v1, 0x0

    .line 2855
    iput-wide v1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    .line 2856
    iput-wide v1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    .line 2857
    iput-wide v1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    .line 2858
    iput-wide v1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    .line 2859
    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    .line 2860
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors()V

    :cond_0
    const/4 p1, 0x1

    .line 2862
    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->removeBackgroundOverride:Z

    .line 2863
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->resetCustomWallpaper(Z)V

    const/4 p1, 0x2

    .line 2864
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(IZ)V

    return-void
.end method

.method private synthetic lambda$selectColorType$23(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 2867
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCustomWallpaperColor()Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 2868
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-object v2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    iget v3, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->color:I

    int-to-long v3, v3

    iput-wide v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    .line 2869
    iget v3, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor1:I

    int-to-long v3, v3

    iput-wide v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    .line 2870
    iget v3, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor2:I

    int-to-long v3, v3

    iput-wide v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    .line 2871
    iget v3, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor3:I

    int-to-long v3, v3

    iput-wide v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    .line 2872
    iget v3, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->rotation:I

    iput v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    .line 2873
    iget-object v3, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    iput-object v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    .line 2874
    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->intensity:F

    iput v2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    iput v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    if-eqz v3, :cond_1

    const-string p1, "c"

    .line 2875
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2876
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v2, v0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 2877
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 2878
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v4, :cond_0

    .line 2879
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2880
    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2886
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 2888
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->removeBackgroundOverride:Z

    .line 2889
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

    .line 2890
    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    .line 2891
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors()V

    .line 2893
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2894
    instance-of v2, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v2, :cond_7

    .line 2895
    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/16 v2, 0x64

    .line 2896
    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;)V

    .line 2897
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    .line 2898
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    cmpg-float p2, p2, v2

    if-gez p2, :cond_5

    .line 2899
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V

    .line 2901
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz p1, :cond_7

    .line 2902
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/SeekBarView;->setTwoSided(Z)V

    goto :goto_3

    .line 2904
    :cond_6
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    cmpg-float p2, p1, v2

    if-gez p2, :cond_7

    neg-float p1, p1

    .line 2905
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    .line 2908
    :cond_7
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz p1, :cond_8

    .line 2909
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    .line 2911
    :cond_8
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->resetCustomWallpaper(Z)V

    const/4 p1, 0x2

    .line 2912
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(IZ)V

    return-void
.end method

.method private synthetic lambda$selectColorType$24(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 2917
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    const-wide v2, 0x100000000L

    cmp-long p2, v0, v2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-wide/16 v1, 0x0

    .line 2918
    iput-wide v1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    .line 2919
    iput-wide v1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    .line 2920
    iput-wide v1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    .line 2921
    iput-wide v1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    .line 2922
    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    .line 2923
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors()V

    :cond_0
    const/4 p1, 0x1

    .line 2925
    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->removeBackgroundOverride:Z

    .line 2926
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->resetCustomWallpaper(Z)V

    const/4 p1, 0x2

    .line 2927
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(IZ)V

    return-void
.end method

.method private synthetic lambda$showAnimationHint$32(Landroid/content/SharedPreferences;)V
    .locals 3

    .line 4020
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 4023
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "bganimationhint"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4024
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    return-void
.end method

.method private static synthetic lambda$toggleTheme$34(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$toggleTheme$35(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 6419
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->progressToDarkTheme:F

    .line 6420
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 6421
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 6422
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->progressToDarkTheme:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 6423
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSliderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 6424
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->invalidateBlur()V

    return-void
.end method

.method private synthetic lambda$toggleTheme$36()V
    .locals 5

    .line 6395
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->switchDayNight(Z)V

    .line 6396
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->isDark()Z

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setForceDark(ZZ)V

    .line 6397
    invoke-direct {p0, v1}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    .line 6398
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->invalidateBlur()V

    .line 6399
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateBlurred()V

    .line 6400
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDescriptions:Ljava/util/List;

    if-eqz v0, :cond_0

    move v0, v1

    .line 6401
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDescriptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 6402
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDescriptions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDescriptions:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4, v1, v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6406
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowBrightnessControll:Z

    if-eqz v0, :cond_4

    .line 6407
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->isDark()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6408
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6409
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    iget v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stories/recorder/SliderView;->animateValueTo(F)V

    goto :goto_1

    .line 6411
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/SliderView;->animateValueTo(F)V

    .line 6413
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 6414
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 6415
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 6417
    iget v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->progressToDarkTheme:F

    aput v4, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->isDark()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_3
    aput v3, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator2:Landroid/animation/ValueAnimator;

    .line 6418
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6426
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator2:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$44;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemePreviewActivity$44;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6434
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator2:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6435
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator2:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6436
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void
.end method

.method private onColorsRotate()V
    .locals 3

    .line 2825
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/16 v1, 0x168

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2826
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    add-int/lit8 v0, v0, 0x2d

    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    .line 2827
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    if-lt v0, v1, :cond_0

    add-int/lit16 v0, v0, -0x168

    .line 2828
    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    goto :goto_0

    .line 2830
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    goto :goto_2

    .line 2831
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v0, :cond_3

    .line 2832
    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    add-int/lit8 v2, v2, 0x2d

    iput v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    .line 2833
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    if-lt v2, v1, :cond_2

    add-int/lit16 v2, v2, -0x168

    .line 2834
    iput v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    goto :goto_1

    .line 2836
    :cond_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors()V

    :cond_3
    :goto_2
    return-void
.end method

.method private saveAccentWallpaper()V
    .locals 9

    .line 3116
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 3120
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->getPathToWallpaper()Ljava/io/File;

    move-result-object v0

    .line 3122
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3123
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3124
    instance-of v3, v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/16 v4, 0x57

    if-eqz v3, :cond_1

    .line 3125
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3126
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v0, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3127
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 3129
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3130
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3131
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3132
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3134
    new-instance v1, Landroid/graphics/Paint;

    const/4 v6, 0x2

    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 3135
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    iget v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    iget-object v8, p0, Lorg/telegram/ui/ThemePreviewActivity;->blendMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/high16 v6, 0x437f0000    # 255.0f

    .line 3136
    iget v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    mul-float/2addr v7, v6

    float-to-int v6, v7

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v6, 0x0

    .line 3137
    invoke-virtual {v5, v2, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3139
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3140
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v0, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3141
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3145
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

    .line 3740
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-eq p1, v1, :cond_0

    if-ne p1, p3, :cond_9

    .line 3741
    :cond_0
    iget-wide v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundOverrideColor:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 3742
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v2, v6, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    goto :goto_0

    .line 3744
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v4, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    .line 3746
    :goto_0
    iget-wide v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor1:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 3747
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v2, v6, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    goto :goto_1

    .line 3749
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v4, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    .line 3751
    :goto_1
    iget-wide v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor2:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 3752
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v2, v6, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    goto :goto_2

    .line 3754
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v4, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    .line 3756
    :goto_2
    iget-wide v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor3:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    .line 3757
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v2, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    goto :goto_3

    .line 3759
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v4, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    .line 3761
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundRotation:I

    iput v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    if-ne p1, p3, :cond_9

    .line 3763
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result p1

    .line 3764
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v2

    .line 3765
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v3

    .line 3766
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v4

    .line 3767
    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v6, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    long-to-int v6, v6

    .line 3768
    iget-wide v7, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v7, v7

    .line 3769
    iget-wide v8, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    long-to-int v8, v8

    .line 3770
    iget-wide v9, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    long-to-int v5, v9

    .line 3771
    iget-object v9, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v8, :cond_5

    move v4, v8

    :cond_5
    invoke-virtual {v9, v4, p2}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 3772
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v7, :cond_6

    move v3, v7

    :cond_6
    invoke-virtual {v4, v3, p3}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 3773
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v6, :cond_7

    move v2, v6

    :cond_7
    invoke-virtual {v3, v2, v1}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 3774
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v5, :cond_8

    move p1, v5

    :cond_8
    invoke-virtual {v2, p1, v0}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 3777
    :cond_9
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    if-eq p1, v1, :cond_a

    if-ne p1, p2, :cond_10

    .line 3778
    :cond_a
    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAccentColor:I

    if-eqz v2, :cond_b

    .line 3779
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v2, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    goto :goto_4

    .line 3781
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v0, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    .line 3783
    :goto_4
    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor1:I

    if-eqz v2, :cond_c

    .line 3784
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v2, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    goto :goto_5

    .line 3786
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v0, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    .line 3788
    :goto_5
    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor2:I

    if-eqz v2, :cond_d

    .line 3789
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v2, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    goto :goto_6

    .line 3791
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v0, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    .line 3793
    :goto_6
    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor3:I

    if-eqz v2, :cond_e

    .line 3794
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v2, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    goto :goto_7

    .line 3796
    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v0, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    :goto_7
    if-ne p1, p2, :cond_10

    .line 3799
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 3800
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget p2, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 3801
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget p2, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 3802
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget p3, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    if-eqz p3, :cond_f

    goto :goto_8

    :cond_f
    iget p3, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    :goto_8
    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 3805
    :cond_10
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors()V

    .line 3806
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    return-void

    .line 3809
    :cond_11
    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    if-eq v2, v0, :cond_12

    if-eq v2, p2, :cond_12

    .line 3810
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3812
    :cond_12
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColor:I

    .line 3813
    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    if-eqz p3, :cond_13

    .line 3815
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorAction:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_9

    .line 3817
    :cond_13
    iget-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorScheduled:Z

    if-nez p1, :cond_14

    .line 3818
    iput-boolean v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorScheduled:Z

    .line 3819
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

    .line 2841
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(IZ)V

    return-void
.end method

.method private selectColorType(IZ)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2845
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2a

    iget v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    if-eq v2, v1, :cond_2a

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_2a

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-nez v2, :cond_0

    goto/16 :goto_14

    :cond_0
    const/4 v2, 0x2

    if-eqz p2, :cond_4

    if-ne v1, v2, :cond_4

    .line 2848
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasCustomWallpaper()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v3, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    const-wide v5, 0x100000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 2849
    :cond_1
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2850
    sget v2, Lorg/telegram/messenger/R$string;->ChangeChatBackground:I

    const-string v3, "ChangeChatBackground"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2851
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasCustomWallpaper()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCustomWallpaperColor()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 2915
    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->ChangeWallpaperToColor:I

    const-string v3, "ChangeWallpaperToColor"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2916
    sget v2, Lorg/telegram/messenger/R$string;->Change:I

    const-string v3, "Change"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2929
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v3, "Cancel"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 2852
    :cond_3
    :goto_0
    sget v2, Lorg/telegram/messenger/R$string;->ChangeColorToColor:I

    const-string v3, "ChangeColorToColor"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2853
    sget v2, Lorg/telegram/messenger/R$string;->Reset:I

    const-string v3, "Reset"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2866
    sget v2, Lorg/telegram/messenger/R$string;->Continue:I

    const-string v3, "Continue"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2931
    :goto_1
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 2934
    :cond_4
    iget v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    .line 2935
    iput v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v6, :cond_20

    const/16 v7, 0x3c

    if-eq v1, v2, :cond_d

    if-eq v1, v4, :cond_5

    goto/16 :goto_12

    .line 2996
    :cond_5
    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->ColorPickerMyMessages:I

    const-string v11, "ColorPickerMyMessages"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2998
    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v10, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v10, :cond_8

    .line 2999
    iget v10, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-eqz v10, :cond_6

    const/4 v13, 0x4

    goto :goto_2

    .line 3001
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

    .line 3009
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

    .line 3010
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    invoke-virtual {v8, v9, v4}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 3011
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    invoke-virtual {v8, v9, v2}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 3012
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-virtual {v8, v9, v6}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 3013
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v10, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    if-eqz v10, :cond_9

    goto :goto_3

    :cond_9
    iget v10, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    :goto_3
    invoke-virtual {v8, v10, v5}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 3014
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v6

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-virtual {v8, v5, v9}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    .line 3015
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v6

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-virtual {v8, v6, v9}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    .line 3016
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v6

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    invoke-virtual {v8, v2, v9}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    .line 3017
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v6

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    invoke-virtual {v8, v4, v9}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    .line 3018
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v8, v8, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v8, :cond_b

    if-ne v3, v6, :cond_a

    .line 3020
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_4

    .line 3022
    :cond_a
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_4

    :cond_b
    if-ne v3, v2, :cond_c

    .line 3025
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 3027
    :cond_c
    :goto_4
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v8, v5, v7}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 3028
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->showAnimationHint()V

    goto/16 :goto_12

    .line 2950
    :cond_d
    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->ColorPickerBackground:I

    const-string v11, "ColorPickerBackground"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2952
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v9

    .line 2953
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    goto :goto_5

    :cond_e
    move v10, v5

    .line 2954
    :goto_5
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v11

    goto :goto_6

    :cond_f
    move v11, v5

    .line 2955
    :goto_6
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v12

    goto :goto_7

    :cond_10
    move v12, v5

    .line 2957
    :goto_7
    iget-object v13, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v14, v13, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    long-to-int v8, v14

    const-wide/16 v16, 0x0

    if-nez v8, :cond_11

    cmp-long v14, v14, v16

    if-eqz v14, :cond_11

    move v10, v5

    .line 2961
    :cond_11
    iget-wide v14, v13, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v7, v14

    if-nez v7, :cond_12

    cmp-long v14, v14, v16

    if-eqz v14, :cond_12

    move v11, v5

    .line 2965
    :cond_12
    iget-wide v14, v13, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    long-to-int v5, v14

    if-nez v5, :cond_13

    cmp-long v14, v14, v16

    if-eqz v14, :cond_13

    const/4 v12, 0x0

    .line 2969
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

    .line 2982
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

    .line 2983
    iget-object v14, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v5, :cond_1a

    goto :goto_c

    :cond_1a
    move v5, v12

    :goto_c
    invoke-virtual {v14, v5, v4}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 2984
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v7, :cond_1b

    goto :goto_d

    :cond_1b
    move v7, v11

    :goto_d
    invoke-virtual {v5, v7, v2}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 2985
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v8, :cond_1c

    goto :goto_e

    :cond_1c
    move v8, v10

    :goto_e
    invoke-virtual {v5, v8, v6}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 2986
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v13, :cond_1d

    move v9, v13

    :cond_1d
    const/4 v7, 0x0

    invoke-virtual {v5, v9, v7}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    if-eq v3, v6, :cond_1f

    .line 2987
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v5, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-nez v5, :cond_1e

    goto :goto_f

    .line 2990
    :cond_1e
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_10

    .line 2988
    :cond_1f
    :goto_f
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 2992
    :goto_10
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v8, 0x3c

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_12

    .line 2938
    :cond_20
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->ColorPickerMainColor:I

    const-string v8, "ColorPickerMainColor"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2939
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v5, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v5, :cond_21

    move v11, v2

    goto :goto_11

    :cond_21
    move v11, v6

    .line 2940
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

    .line 2941
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 2942
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v5, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v5, :cond_22

    .line 2943
    iget-object v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v7, v5, v6}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    :cond_22
    if-eq v3, v2, :cond_23

    if-ne v3, v4, :cond_24

    .line 2945
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v5, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v5, :cond_24

    .line 2946
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

    .line 3050
    :cond_25
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/ColorPicker;->setMinBrightness(F)V

    .line 3051
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/ColorPicker;->setMaxBrightness(F)V

    goto :goto_14

    :cond_26
    :goto_13
    if-ne v3, v2, :cond_27

    .line 3034
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_27

    const/4 v2, 0x0

    .line 3035
    invoke-direct {v0, v2, v6, v6}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    :cond_27
    if-ne v1, v6, :cond_29

    .line 3039
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 3040
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ColorPicker;->setMinBrightness(F)V

    goto :goto_14

    .line 3042
    :cond_28
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const v2, 0x3d4ccccd    # 0.05f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ColorPicker;->setMinBrightness(F)V

    .line 3043
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ColorPicker;->setMaxBrightness(F)V

    goto :goto_14

    .line 3046
    :cond_29
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/ColorPicker;->setMinBrightness(F)V

    .line 3047
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/ColorPicker;->setMaxBrightness(F)V

    :cond_2a
    :goto_14
    return-void
.end method

.method private selectPattern(I)V
    .locals 14

    if-ltz p1, :cond_0

    .line 3057
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3058
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    goto :goto_0

    .line 3060
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastSelectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 3065
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 3066
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 3067
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3069
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    const/4 v11, 0x0

    aget-object v1, v0, v11

    const/4 v12, 0x1

    .line 3071
    aget-object v2, v0, v12

    aput-object v2, v0, v11

    .line 3072
    aput-object v1, v0, v12

    .line 3074
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    aget-object v0, v0, v11

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3075
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3076
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    aget-object v2, v2, v11

    add-int/2addr v0, v12

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 3078
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    aget-object v1, v0, v11

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    .line 3079
    aget-object v0, v0, v12

    invoke-virtual {v0}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3080
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateIntensity()V

    .line 3081
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    aget-object v0, v0, v12

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 3082
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    aget-object v0, v0, v12

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3083
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    const/4 v13, 0x2

    new-array v0, v13, [F

    .line 3085
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 3086
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$32;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemePreviewActivity$32;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3094
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$33;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemePreviewActivity$33;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3104
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3105
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3106
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3107
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeDuration(I)V

    .line 3108
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/4 v10, 0x1

    const-string v8, "jpg"

    move-object v9, p1

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 3109
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    .line 3110
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 3111
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object p1, p1, v13

    invoke-virtual {p1}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    .line 3112
    invoke-direct {p0, v11, v12}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setBackgroundColor(IIZZ)V
    .locals 5

    const/4 p3, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 4421
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_1

    .line 4423
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    .line 4425
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    goto :goto_0

    :cond_2
    if-ne p2, p3, :cond_3

    .line 4427
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor3:I

    .line 4429
    :cond_3
    :goto_0
    invoke-direct {p0, p4}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    .line 4430
    iget-object p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    const/4 v2, 0x0

    if-eqz p4, :cond_5

    move p4, v2

    .line 4431
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    array-length v4, v3

    if-ge p4, v4, :cond_5

    .line 4432
    aget-object v4, v3, p4

    if-eqz v4, :cond_4

    .line 4433
    aget-object v3, v3, p4

    invoke-virtual {v3, p2, p1}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    :cond_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 4437
    :cond_5
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    if-eqz p1, :cond_9

    .line 4438
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz p1, :cond_6

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 4439
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/SeekBarView;->setTwoSided(Z)V

    .line 4441
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4443
    instance-of p2, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p2, :cond_7

    .line 4444
    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    goto :goto_2

    .line 4446
    :cond_7
    new-instance p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    .line 4447
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setParentView(Landroid/view/View;)V

    .line 4448
    iget-boolean p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->rotatePreview:Z

    if-eqz p2, :cond_8

    .line 4449
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatePreview(Z)V

    .line 4452
    :cond_8
    :goto_2
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    iget p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    iget v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor3:I

    invoke-virtual {p1, p2, p4, v3, v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIII)V

    .line 4453
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4454
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    const/high16 p1, 0x2d000000

    .line 4455
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    goto :goto_3

    .line 4456
    :cond_9
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz p1, :cond_a

    .line 4457
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

    .line 4458
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4459
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    goto :goto_3

    .line 4461
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4462
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    .line 4464
    :goto_3
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceBackground:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result p2

    const/4 p4, 0x4

    if-eqz p2, :cond_c

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p2}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p2, :cond_b

    goto :goto_4

    .line 4466
    :cond_b
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p2, :cond_d

    .line 4467
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    .line 4468
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    new-array p4, p4, [I

    aput p1, p4, v2

    aput p1, p4, v1

    aput p1, p4, v0

    aput p1, p4, p3

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p3}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2, p4, p1, p3, v0}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->applyChatServiceMessageColor([ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Float;)V

    goto :goto_5

    .line 4465
    :cond_c
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    new-array p2, p4, [I

    iget p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    aput p4, p2, v2

    aput p4, p2, v1

    aput p4, p2, v0

    aput p4, p2, p3

    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p3}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p4}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p2, p3, p4, v0}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->applyChatServiceMessageColor([ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Float;)V

    .line 4470
    :cond_d
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_e

    .line 4471
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p3

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, p4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4473
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_f

    .line 4474
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p3

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, p4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4476
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    if-eqz p1, :cond_13

    .line 4477
    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    iget p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    iget-object p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->blendMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, p4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4478
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 4479
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 4480
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p1, :cond_11

    .line 4481
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz p1, :cond_10

    .line 4482
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/SeekBarView;->setTwoSided(Z)V

    .line 4484
    :cond_10
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_12

    .line 4485
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p2}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 4488
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V

    .line 4489
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz p1, :cond_12

    .line 4490
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/SeekBarView;->setTwoSided(Z)V

    .line 4493
    :cond_12
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz p1, :cond_13

    .line 4494
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    .line 4497
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_14

    .line 4498
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 4500
    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_15

    .line 4501
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    move p2, v2

    :goto_7
    if-ge p2, p1, :cond_15

    .line 4502
    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 4505
    :cond_15
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_16

    .line 4506
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    :goto_8
    if-ge v2, p1, :cond_16

    .line 4507
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    return-void
.end method

.method private setCurrentImage(Z)V
    .locals 21

    move-object/from16 v0, p0

    .line 4513
    iget v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-nez v3, :cond_1

    .line 4514
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    move v1, v2

    goto/16 :goto_f

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v1, v4, :cond_13

    .line 4516
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const/16 v8, 0x64

    if-eqz v7, :cond_4

    .line 4517
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz p1, :cond_2

    .line 4518
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v3, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v5

    .line 4520
    :goto_1
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v4, :cond_3

    .line 4521
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const-string v6, "b"

    invoke-static {v4, v6}, Lorg/telegram/messenger/ImageLoader;->getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_3
    move-object v14, v5

    .line 4523
    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3, v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v18, 0x1

    const-string v13, "100_100_b"

    const-string v15, "jpg"

    move-wide/from16 v16, v3

    move-object/from16 v19, v1

    invoke-virtual/range {v9 .. v19}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;JILjava/lang/Object;)V

    goto :goto_0

    .line 4524
    :cond_4
    instance-of v7, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v7, :cond_8

    .line 4525
    check-cast v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 4526
    iget v5, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientRotation:I

    iput v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    .line 4527
    iget v5, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->color:I

    invoke-direct {v0, v5, v2, v6, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    .line 4528
    iget v5, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor1:I

    if-eqz v5, :cond_5

    .line 4529
    invoke-direct {v0, v5, v6, v6, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    .line 4531
    :cond_5
    iget v5, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor2:I

    invoke-direct {v0, v5, v4, v6, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    .line 4532
    iget v4, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor3:I

    invoke-direct {v0, v4, v3, v6, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    .line 4533
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v3, :cond_6

    .line 4534
    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

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

    goto/16 :goto_0

    .line 4535
    :cond_6
    iget-object v3, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    const-string v4, "d"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4536
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4537
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 4539
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_7

    const/high16 v1, 0x57000000

    goto :goto_2

    .line 4542
    :cond_7
    iget v5, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->color:I

    iget v6, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor1:I

    iget v7, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor2:I

    iget v1, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor3:I

    invoke-static {v5, v6, v7, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor(IIII)I

    move-result v1

    .line 4544
    :goto_2
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    sget v6, Lorg/telegram/messenger/R$raw;->default_pattern:I

    invoke-static {v6, v3, v4, v1}, Lorg/telegram/messenger/SvgHelper;->getBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 4546
    :cond_8
    instance-of v3, v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz v3, :cond_d

    .line 4547
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_9

    .line 4548
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 4550
    :cond_9
    check-cast v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    .line 4551
    iget-object v3, v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->originalPath:Ljava/io/File;

    if-eqz v3, :cond_a

    .line 4552
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 4553
    :cond_a
    iget-object v3, v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->path:Ljava/io/File;

    if-eqz v3, :cond_b

    .line 4554
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 4555
    :cond_b
    iget-object v3, v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->slug:Ljava/lang/String;

    const-string v4, "t"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4556
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedWallpaper(ZLandroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 4557
    :cond_c
    iget v1, v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->resId:I

    if-eqz v1, :cond_0

    .line 4558
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 4561
    :cond_d
    instance-of v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v3, :cond_11

    .line 4562
    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 4563
    iget-object v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_10

    .line 4564
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v3, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 4565
    iget-object v4, v1, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    invoke-static {v4, v7, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    if-ne v4, v3, :cond_e

    goto :goto_3

    :cond_e
    move-object v5, v4

    :goto_3
    if-eqz v5, :cond_f

    .line 4569
    iget v4, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    goto :goto_4

    :cond_f
    move v4, v2

    .line 4570
    :goto_4
    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

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

    .line 4572
    :cond_10
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    iget-object v4, v1, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    const-string v6, "100_100_b"

    invoke-virtual {v3, v4, v5, v1, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4574
    :cond_11
    instance-of v1, v1, Lorg/telegram/ui/WallpapersListActivity$EmojiWallpaper;

    if-eqz v1, :cond_0

    .line 4575
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->isDark()Z

    move-result v1

    goto :goto_5

    :cond_12
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    .line 4576
    :goto_5
    iget v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    check-cast v4, Lorg/telegram/ui/WallpapersListActivity$EmojiWallpaper;

    iget-object v4, v4, Lorg/telegram/ui/WallpapersListActivity$EmojiWallpaper;->emoticon:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawableFromTheme(ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4577
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4578
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I

    move-result-object v4

    invoke-direct {v0, v1}, Lorg/telegram/ui/ThemePreviewActivity;->checkBlur(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    iget v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->applyChatServiceMessageColor([ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 4581
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    if-eqz v1, :cond_14

    .line 4582
    invoke-interface {v1}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 4583
    iput-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    .line 4586
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-nez v1, :cond_15

    return-void

    .line 4590
    :cond_15
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v1

    .line 4591
    iget-object v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    long-to-int v7, v7

    if-eqz v7, :cond_16

    move v1, v7

    .line 4594
    :cond_16
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v7

    .line 4595
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v8, v8, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    long-to-int v10, v8

    const-wide/16 v11, 0x0

    if-nez v10, :cond_17

    cmp-long v8, v8, v11

    if-eqz v8, :cond_17

    move v7, v2

    goto :goto_6

    :cond_17
    if-eqz v10, :cond_18

    move v7, v10

    .line 4602
    :cond_18
    :goto_6
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v8

    .line 4603
    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v13, v9

    if-nez v13, :cond_19

    cmp-long v9, v9, v11

    if-eqz v9, :cond_19

    move v8, v2

    goto :goto_7

    :cond_19
    if-eqz v13, :cond_1a

    move v8, v13

    .line 4610
    :cond_1a
    :goto_7
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v9

    .line 4611
    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v13, v10, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    long-to-int v15, v13

    if-nez v15, :cond_1b

    cmp-long v11, v13, v11

    if-eqz v11, :cond_1b

    move v9, v2

    goto :goto_8

    :cond_1b
    if-eqz v15, :cond_1c

    move v9, v15

    .line 4618
    :cond_1c
    :goto_8
    iget-object v10, v10, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_21

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasCustomWallpaper()Z

    move-result v10

    if-nez v10, :cond_21

    if-eqz v8, :cond_1f

    .line 4621
    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v10}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 4623
    instance-of v11, v10, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v11, :cond_1d

    .line 4624
    check-cast v10, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    goto :goto_9

    .line 4626
    :cond_1d
    new-instance v10, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v10}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    .line 4627
    iget-object v11, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setParentView(Landroid/view/View;)V

    .line 4628
    iget-boolean v11, v0, Lorg/telegram/ui/ThemePreviewActivity;->rotatePreview:Z

    if-eqz v11, :cond_1e

    .line 4629
    invoke-virtual {v10, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatePreview(Z)V

    .line 4632
    :cond_1e
    :goto_9
    invoke-virtual {v10, v1, v7, v8, v9}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIII)V

    goto :goto_a

    :cond_1f
    if-eqz v7, :cond_20

    .line 4635
    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v10, v10, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    invoke-static {v10}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v10

    .line 4636
    new-instance v11, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    new-array v12, v4, [I

    aput v1, v12, v2

    aput v7, v12, v6

    invoke-direct {v11, v10, v12}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 4637
    new-instance v10, Lorg/telegram/ui/ThemePreviewActivity$40;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ThemePreviewActivity$40;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    .line 4647
    invoke-static {}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes;->ofDeviceScreen()Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes;

    move-result-object v12

    const-wide/16 v13, 0x64

    invoke-virtual {v11, v12, v10, v13, v14}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->startDithering(Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes;Lorg/telegram/ui/Components/BackgroundGradientDrawable$Listener;J)Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    move-result-object v10

    iput-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    move-object v10, v11

    goto :goto_a

    .line 4650
    :cond_20
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v10, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 4652
    :goto_a
    iget-object v11, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v11, v10}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4653
    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v10, :cond_23

    .line 4654
    iget-object v11, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

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

    goto :goto_b

    .line 4657
    :cond_21
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 4659
    instance-of v3, v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v3, :cond_22

    .line 4660
    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setParentView(Landroid/view/View;)V

    .line 4662
    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_23
    :goto_b
    if-nez v7, :cond_24

    .line 4666
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    iput v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    goto :goto_c

    :cond_24
    if-eqz v8, :cond_25

    .line 4669
    invoke-static {v1, v7, v8, v9}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor(IIII)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    const/high16 v2, 0x2d000000

    .line 4670
    iput v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    goto :goto_c

    .line 4672
    :cond_25
    invoke-static {v1, v7}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    iput v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    .line 4675
    :goto_c
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    if-eqz v2, :cond_29

    .line 4676
    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    iget-object v11, v0, Lorg/telegram/ui/ThemePreviewActivity;->blendMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4677
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 4678
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 4679
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v2, :cond_27

    .line 4680
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz v2, :cond_26

    .line 4681
    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/SeekBarView;->setTwoSided(Z)V

    .line 4683
    :cond_26
    iget v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_28

    .line 4684
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_d

    .line 4687
    :cond_27
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V

    .line 4688
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz v2, :cond_28

    const/4 v3, 0x0

    .line 4689
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SeekBarView;->setTwoSided(Z)V

    .line 4692
    :cond_28
    :goto_d
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz v2, :cond_29

    .line 4693
    iget v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    .line 4696
    :cond_29
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-eqz v2, :cond_2a

    const/4 v3, 0x0

    .line 4697
    :goto_e
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    array-length v5, v2

    if-ge v3, v5, :cond_2a

    .line 4698
    aget-object v2, v2, v3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v1}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    .line 4699
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v3

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    .line 4700
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v3

    invoke-virtual {v2, v4, v8}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    .line 4701
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v3

    const/4 v5, 0x3

    invoke-virtual {v2, v5, v9}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 4704
    :cond_2a
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2b

    .line 4705
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4707
    :cond_2b
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2c

    .line 4708
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4710
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->invalidateBlur()V

    const/4 v1, 0x0

    .line 4712
    :goto_f
    iput-boolean v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->rotatePreview:Z

    return-void
.end method

.method private setCurrentServerWallpaper(Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->serverWallpaper:Lorg/telegram/messenger/MessageObject;

    return-void
.end method

.method private setVisiblePart(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 5

    .line 3428
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3434
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->access$8400(Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3435
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->access$8400(Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 3436
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-static {v2}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->access$8400(Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 3437
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v0, v2

    .line 3439
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentScrollOffset:F

    add-float/2addr v2, v0

    add-float/2addr v2, v1

    goto :goto_0

    .line 3441
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentScrollOffset:F

    add-float v2, v0, v1

    .line 3443
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    iget v0, v0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->ty:F

    neg-float v0, v0

    add-float/2addr v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    move v2, v0

    .line 3445
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    sub-float/2addr v3, v0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-boolean v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowBrightnessControll:Z

    if-eqz v4, :cond_3

    iget v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    iget v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->progressToDarkTheme:F

    mul-float/2addr v1, v4

    :cond_3
    invoke-virtual {p1, v3, v2, v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->setVisiblePart(FFIF)V

    return-void
.end method

.method private showAnimationHint()V
    .locals 10

    .line 4003
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 4006
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "bganimationhint"

    .line 4007
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 4010
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    if-nez v1, :cond_2

    .line 4011
    new-instance v1, Lorg/telegram/ui/Components/HintView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    const-wide/16 v2, 0x1388

    .line 4012
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/HintView;->setShowingDuration(J)V

    .line 4013
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4014
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4015
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    sget v2, Lorg/telegram/messenger/R$string;->BackgroundAnimateInfo:I

    const-string v3, "BackgroundAnimateInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    .line 4016
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/HintView;->setExtraTranslationY(F)V

    .line 4017
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

    .line 4019
    :cond_2
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/SharedPreferences;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static showFor(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V
    .locals 13

    .line 440
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;

    if-eqz v1, :cond_4

    .line 441
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;

    .line 442
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 444
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    const/high16 v2, 0x42c80000    # 100.0f

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v0

    goto :goto_1

    .line 445
    :cond_1
    :goto_0
    new-instance v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    iget v7, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    iget v8, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    const/4 v9, 0x0

    invoke-static {v3, v9}, Lorg/telegram/messenger/AndroidUtilities;->getWallpaperRotation(IZ)I

    move-result v9

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v10, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    int-to-float v10, v10

    div-float/2addr v10, v2

    iget-boolean v11, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    const/4 v12, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;-><init>(Ljava/lang/String;IIIIIFZLjava/io/File;)V

    .line 446
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v3, :cond_2

    .line 447
    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-object v3, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    :cond_2
    move-object v5, v1

    .line 453
    :goto_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v1

    .line 454
    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$3;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v4, v3

    move-object v9, p0

    move v10, v1

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ThemePreviewActivity$3;-><init>(Ljava/lang/Object;Landroid/graphics/Bitmap;ZZLorg/telegram/ui/ChatActivity;Z)V

    .line 480
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v0, :cond_3

    .line 481
    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->blur:Z

    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {v3, v4, v5, v0}, Lorg/telegram/ui/ThemePreviewActivity;->setInitialModes(ZZF)V

    .line 483
    :cond_3
    invoke-direct {v3, p1}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentServerWallpaper(Lorg/telegram/messenger/MessageObject;)V

    .line 484
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ThemePreviewActivity;->setDialogId(J)V

    .line 485
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ThemePreviewActivity;->setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 486
    new-instance p1, Lorg/telegram/ui/ThemePreviewActivity$4;

    invoke-direct {p1, v1, p0}, Lorg/telegram/ui/ThemePreviewActivity$4;-><init>(ZLorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ThemePreviewActivity;->setOnSwitchDayNightDelegate(Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;)V

    .line 506
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_4
    return-void
.end method

.method private showPatternsView(IZZ)V
    .locals 18

    move-object/from16 v6, p0

    move/from16 v4, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    if-ne v4, v0, :cond_0

    .line 4090
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v2, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eqz p2, :cond_7

    if-nez v4, :cond_4

    .line 4093
    iget v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v7, v3, :cond_7

    .line 4094
    iget v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    iput v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundColor:I

    .line 4095
    iget v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    iput v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundGradientColor1:I

    .line 4096
    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    iput v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundGradientColor2:I

    .line 4097
    iget v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor3:I

    iput v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundGradientColor3:I

    .line 4098
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
    move v7, v0

    .line 4109
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

    .line 4110
    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor3:I

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 4111
    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    invoke-virtual {v7, v8, v3}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 4112
    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    invoke-virtual {v7, v8, v0}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 4113
    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    invoke-virtual {v7, v8, v1}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    goto :goto_4

    .line 4116
    :cond_4
    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->previousSelectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 4117
    iget v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    iput v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->previousIntensity:F

    .line 4118
    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsAdapter:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4119
    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    .line 4121
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v8, :cond_5

    move v7, v1

    goto :goto_3

    .line 4124
    :cond_5
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v8, v3, :cond_6

    move v8, v0

    goto :goto_2

    :cond_6
    move v8, v1

    :goto_2
    add-int/2addr v7, v8

    .line 4126
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

    .line 4130
    :cond_7
    :goto_4
    iget v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-eq v7, v0, :cond_8

    if-ne v7, v3, :cond_a

    .line 4131
    :cond_8
    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-eqz v5, :cond_9

    move v8, v3

    goto :goto_5

    :cond_9
    move v8, v1

    :goto_5
    aget-object v7, v7, v8

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    const/4 v7, 0x0

    if-ne v4, v0, :cond_b

    .line 4133
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/SeekBarView;->isTwoSided()Z

    move-result v8

    if-nez v8, :cond_b

    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    cmpg-float v9, v8, v7

    if-gez v9, :cond_b

    neg-float v8, v8

    .line 4134
    iput v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    .line 4135
    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v9, v8}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    :cond_b
    const/16 v8, 0x3a

    const/16 v9, 0x15

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz p3, :cond_1a

    .line 4138
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    .line 4139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v4, :cond_c

    move v11, v0

    goto :goto_6

    :cond_c
    move v11, v1

    :goto_6
    if-eqz p2, :cond_19

    .line 4142
    iget-object v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v12, v12, v4

    invoke-virtual {v12, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4143
    iget v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v12, v0, :cond_11

    .line 4144
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v13, v0, [F

    if-ne v4, v0, :cond_d

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    goto :goto_7

    :cond_d
    move v9, v7

    :goto_7
    aput v9, v13, v1

    invoke-static {v8, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4145
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v3

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v0, [F

    if-eqz v5, :cond_e

    move v13, v10

    goto :goto_8

    :cond_e
    move v13, v7

    :goto_8
    aput v13, v12, v1

    invoke-static {v8, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4146
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v1

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v0, [F

    if-eqz v5, :cond_f

    move v13, v7

    goto :goto_9

    :cond_f
    move v13, v10

    :goto_9
    aput v13, v12, v1

    invoke-static {v8, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v4, v0, :cond_10

    .line 4148
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v0, v0, v4

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 4150
    :cond_10
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v4

    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4151
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v11

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    aput v7, v0, v1

    invoke-static {v3, v8, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4153
    :goto_a
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ColorPicker;->hideKeyboard()V

    goto/16 :goto_f

    :cond_11
    if-ne v12, v3, :cond_17

    .line 4155
    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v13, v0, [F

    iget-object v14, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v14, v14, v4

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v14

    neg-int v14, v14

    iget-object v15, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    if-eqz v15, :cond_12

    goto :goto_b

    :cond_12
    move v8, v1

    :goto_b
    add-int/lit8 v8, v8, 0x48

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v14, v8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->insideBottomSheet()Z

    move-result v8

    if-eqz v8, :cond_13

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    goto :goto_c

    :cond_13
    move v8, v1

    :goto_c
    add-int/2addr v14, v8

    int-to-float v8, v14

    aput v8, v13, v1

    invoke-static {v9, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4156
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v3

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v0, [F

    if-eqz v5, :cond_14

    move v13, v10

    goto :goto_d

    :cond_14
    move v13, v7

    :goto_d
    aput v13, v12, v1

    invoke-static {v8, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4157
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v1

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v0, [F

    if-eqz v5, :cond_15

    move v10, v7

    :cond_15
    aput v10, v12, v1

    invoke-static {v8, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4159
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_16

    .line 4160
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    aput v7, v0, v1

    invoke-static {v8, v9, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4161
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v0, v0, v4

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4162
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v0, v0, v4

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto/16 :goto_f

    .line 4164
    :cond_16
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v9, v8, v4

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    aget-object v8, v8, v4

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v3, v1

    aput v7, v3, v0

    invoke-static {v9, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_17
    if-ne v4, v0, :cond_18

    .line 4168
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v0, v0, v4

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 4170
    :cond_18
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v4

    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4171
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v11

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    aput v7, v0, v1

    invoke-static {v3, v8, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4173
    :goto_e
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ColorPicker;->hideKeyboard()V

    goto :goto_f

    .line 4176
    :cond_19
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v12, v0, [F

    aput v7, v12, v1

    invoke-static {v8, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4177
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v9, v8, v4

    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v13, v0, [F

    aget-object v8, v8, v4

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v13, v1

    invoke-static {v9, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4178
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v1

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v0, [F

    aput v10, v12, v1

    invoke-static {v8, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4179
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v3, v8, v3

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v0, [F

    aput v7, v9, v1

    invoke-static {v3, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4180
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    aput v10, v0, v1

    invoke-static {v3, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4182
    :goto_f
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 4183
    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v8, Lorg/telegram/ui/ThemePreviewActivity$36;

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v2, p2

    move v3, v11

    move/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ThemePreviewActivity$36;-><init>(Lorg/telegram/ui/ThemePreviewActivity;ZIIZ)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4202
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4203
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4204
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1f

    :cond_1a
    if-nez v4, :cond_1b

    move v11, v0

    goto :goto_10

    :cond_1b
    move v11, v1

    :goto_10
    if-eqz p2, :cond_29

    .line 4208
    iget-object v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v12, v12, v4

    invoke-virtual {v12, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4209
    iget v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v12, v0, :cond_20

    .line 4210
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v4, v0, :cond_1c

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    goto :goto_11

    :cond_1c
    move v9, v7

    :goto_11
    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 4211
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v3

    if-eqz v5, :cond_1d

    move v9, v10

    goto :goto_12

    :cond_1d
    move v9, v7

    :goto_12
    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 4212
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v1

    if-eqz v5, :cond_1e

    move v9, v7

    goto :goto_13

    :cond_1e
    move v9, v10

    :goto_13
    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    if-ne v4, v0, :cond_1f

    .line 4214
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_14

    .line 4216
    :cond_1f
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4217
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4219
    :goto_14
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ColorPicker;->hideKeyboard()V

    goto/16 :goto_1b

    :cond_20
    if-ne v12, v3, :cond_27

    .line 4221
    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v4, :cond_21

    const/16 v12, 0x157

    goto :goto_15

    :cond_21
    const/16 v12, 0x13c

    :goto_15
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    neg-int v12, v12

    iget-object v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    if-eqz v13, :cond_22

    goto :goto_16

    :cond_22
    move v8, v1

    :goto_16
    add-int/lit8 v8, v8, 0x48

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v12, v8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->insideBottomSheet()Z

    move-result v8

    if-eqz v8, :cond_23

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    goto :goto_17

    :cond_23
    move v8, v1

    :goto_17
    add-int/2addr v12, v8

    int-to-float v8, v12

    invoke-virtual {v9, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 4222
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v3

    if-eqz v5, :cond_24

    move v9, v10

    goto :goto_18

    :cond_24
    move v9, v7

    :goto_18
    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 4223
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v1

    if-eqz v5, :cond_25

    move v9, v7

    goto :goto_19

    :cond_25
    move v9, v10

    :goto_19
    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 4225
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_26

    .line 4226
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4227
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4228
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_1b

    .line 4230
    :cond_26
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_1b

    :cond_27
    if-ne v4, v0, :cond_28

    .line 4234
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_1a

    .line 4236
    :cond_28
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4237
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4239
    :goto_1a
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ColorPicker;->hideKeyboard()V

    goto :goto_1b

    .line 4242
    :cond_29
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 4243
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v9, v8, v4

    aget-object v8, v8, v4

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4244
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v1

    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    .line 4245
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v3

    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    .line 4246
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    :goto_1b
    if-eqz p2, :cond_2a

    .line 4249
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2a

    .line 4250
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4251
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1c

    :cond_2a
    if-nez p2, :cond_2b

    .line 4253
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4255
    :cond_2b
    :goto_1c
    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-eq v8, v0, :cond_2d

    if-ne v8, v3, :cond_2c

    goto :goto_1d

    :cond_2c
    if-ne v4, v0, :cond_2f

    .line 4259
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v0, v0, v11

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_1f

    .line 4256
    :cond_2d
    :goto_1d
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-eqz v5, :cond_2e

    goto :goto_1e

    :cond_2e
    move v1, v3

    :goto_1e
    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2f
    :goto_1f
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

.method private updateApplyButton1(Z)V
    .locals 6

    .line 2440
    iget-wide v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2441
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    sget v0, Lorg/telegram/messenger/R$string;->ApplyWallpaperForMe:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 2443
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 2445
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    sget v4, Lorg/telegram/messenger/R$string;->ApplyWallpaperForChannel:I

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;->setText(Ljava/lang/CharSequence;)V

    .line 2446
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz v0, :cond_2

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->channelCustomWallpaperLevelMin:I

    if-ge v0, v3, :cond_2

    .line 2447
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v3, "l"

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2448
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->lockSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

    if-nez v3, :cond_1

    .line 2449
    new-instance v3, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v4, Lorg/telegram/messenger/R$drawable;->mini_switch_lock:I

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->lockSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

    .line 2450
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTopOffset(I)V

    .line 2452
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->lockSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

    const/16 v4, 0x21

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v2, " "

    .line 2453
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->channelCustomWallpaperLevelMin:I

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "ReactionLevelRequiredBtn"

    invoke-static {v4, v3, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2454
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;->setSubText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 2455
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-nez p1, :cond_5

    .line 2456
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->checkBoostsLevel()V

    goto :goto_0

    .line 2459
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    sget v0, Lorg/telegram/messenger/R$string;->ApplyWallpaperForChannel:I

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrChannel:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2462
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    sget v0, Lorg/telegram/messenger/R$string;->ApplyWallpaper:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private updateBlurred()V
    .locals 2

    .line 3531
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 3532
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3533
    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->originalBitmap:Landroid/graphics/Bitmap;

    .line 3534
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->blurWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 3536
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    .line 3537
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasStaticThumb()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3538
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->originalBitmap:Landroid/graphics/Bitmap;

    .line 3539
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->blurWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    .line 3543
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    if-eqz v0, :cond_3

    .line 3544
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 3545
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 3548
    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateButtonState(ZZ)V
    .locals 8

    .line 3906
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3909
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    .line 3911
    :goto_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v0, :cond_1

    instance-of v1, p1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v1, :cond_13

    :cond_1
    const/4 p2, 0x1

    if-eqz v0, :cond_3

    .line 3920
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 3921
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    .line 3922
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 3925
    :cond_2
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v1, v2, p2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p2

    .line 3926
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    goto :goto_2

    .line 3928
    :cond_3
    check-cast p1, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 3929
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_4

    .line 3930
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    invoke-static {p1, v0, p2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    .line 3931
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p2

    .line 3932
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    .line 3933
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    goto :goto_1

    .line 3935
    :cond_4
    iget-object p2, p1, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string v0, "jpg"

    invoke-static {p2, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 3936
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3937
    iget p1, p1, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    :goto_1
    int-to-long v1, p1

    .line 3939
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 3943
    :cond_5
    :goto_2
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 p2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    if-eqz p1, :cond_7

    .line 3944
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 3945
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 3946
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v0, v5, :cond_9

    cmp-long v0, v1, v3

    if-eqz v0, :cond_6

    .line 3947
    iget-wide v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long v0, v6, v3

    if-nez v0, :cond_6

    .line 3948
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 3950
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 3954
    :cond_7
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 3955
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne p2, v5, :cond_8

    iget-wide v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long p2, v0, v3

    if-nez p2, :cond_8

    .line 3956
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->LoadingFullImage:I

    const-string v1, "LoadingFullImage"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 3958
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 3960
    :cond_9
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    if-nez p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_b

    if-eqz p1, :cond_a

    move v2, v0

    goto :goto_4

    :cond_a
    move v2, v1

    .line 3961
    :goto_4
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3963
    :cond_b
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-nez p2, :cond_d

    .line 3964
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3965
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    if-eqz p1, :cond_c

    goto :goto_5

    :cond_c
    move v0, v1

    :goto_5
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_9

    :cond_d
    if-ne p2, v5, :cond_11

    .line 3967
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 3968
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    if-eqz p2, :cond_f

    if-eqz p1, :cond_e

    move v2, v0

    goto :goto_6

    :cond_e
    move v2, v1

    .line 3969
    :goto_6
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 3971
    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    if-eqz p2, :cond_13

    if-eqz p1, :cond_10

    goto :goto_7

    :cond_10
    move v0, v1

    .line 3972
    :goto_7
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_9

    .line 3975
    :cond_11
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->saveItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 3976
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->saveItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_12

    goto :goto_8

    :cond_12
    move v0, v1

    :goto_8
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_13
    :goto_9
    return-void
.end method

.method private updateIntensity()V
    .locals 5

    .line 2418
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 2419
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2420
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 2421
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 2425
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2427
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    .line 2428
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setBlendMode(Ljava/lang/Object;)V

    .line 2430
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v0, :cond_2

    .line 2431
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    .line 2432
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V

    .line 2435
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->applyChatServiceMessageColor([ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Float;)V

    .line 2436
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->invalidateBlur()V

    return-void
.end method

.method private updateMotionButton()V
    .locals 13

    .line 4039
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

    .line 4058
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

    .line 4062
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v0, v0, v7

    invoke-virtual {v0, v7, v6}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    .line 4064
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

    .line 4066
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_5

    .line 4067
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v0, v0, v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4069
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 4070
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4071
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v9, 0x9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v0, v9

    div-int/2addr v0, v5

    new-array v5, v6, [Landroid/animation/Animator;

    .line 4072
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

    .line 4073
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

    .line 4074
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

    .line 4075
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4076
    invoke-virtual {v8, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4077
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$35;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ThemePreviewActivity$35;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4085
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_8

    .line 4040
    :cond_9
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v0, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v0, :cond_a

    .line 4041
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v0, v0, v5

    invoke-virtual {v0, v7, v6}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    .line 4043
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

    .line 4044
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v8, v5, [Landroid/animation/Animator;

    .line 4045
    iget-object v9, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v5, v9, v5

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v6, [F

    .line 4046
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

    .line 4047
    iget-object v11, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v11, :cond_d

    move v3, v4

    :cond_d
    aput v3, v10, v7

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v8, v6

    .line 4045
    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4048
    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$34;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ThemePreviewActivity$34;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4054
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4055
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4056
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_8
    return-void
.end method

.method private updatePlayAnimationView(Z)V
    .locals 17

    move-object/from16 v0, p0

    .line 4292
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 4380
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x1d

    if-lt v1, v9, :cond_8

    .line 4295
    iget v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-nez v1, :cond_1

    .line 4296
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v1, :cond_0

    .line 4297
    iget-wide v9, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v1, v9

    goto :goto_2

    .line 4299
    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    goto :goto_2

    :cond_1
    if-ne v1, v6, :cond_4

    .line 4302
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v1

    .line 4303
    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-nez v9, :cond_2

    move v10, v8

    goto :goto_0

    :cond_2
    iget-wide v10, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v10, v10

    :goto_0
    if-nez v10, :cond_3

    if-eqz v9, :cond_3

    .line 4304
    iget-wide v11, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    cmp-long v9, v11, v2

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v10, :cond_6

    move v1, v10

    goto :goto_2

    .line 4309
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v9, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v9, :cond_5

    .line 4310
    check-cast v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 4311
    iget v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v8

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 4313
    iget v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_7

    .line 4314
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    sget-object v9, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    invoke-virtual {v1, v9}, Lorg/telegram/messenger/ImageReceiver;->setBlendMode(Ljava/lang/Object;)V

    goto :goto_3

    .line 4316
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setBlendMode(Ljava/lang/Object;)V

    .line 4320
    :cond_8
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x5

    const/4 v14, 0x2

    const/16 v15, 0x22

    if-eqz v1, :cond_1e

    .line 4322
    iget v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v1, v14, :cond_9

    .line 4323
    iget v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz v1, :cond_c

    :goto_4
    move v1, v6

    goto :goto_6

    :cond_9
    if-ne v1, v6, :cond_c

    .line 4324
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v1, :cond_c

    .line 4325
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v1

    .line 4326
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v4, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    long-to-int v9, v4

    if-nez v9, :cond_a

    cmp-long v2, v4, v2

    if-eqz v2, :cond_a

    move v1, v8

    goto :goto_5

    :cond_a
    if-eqz v9, :cond_b

    move v1, v9

    :cond_b
    :goto_5
    if-eqz v1, :cond_c

    goto :goto_4

    :cond_c
    move v1, v8

    .line 4337
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    move v2, v6

    goto :goto_7

    :cond_d
    move v2, v8

    .line 4338
    :goto_7
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_e

    move-object v4, v7

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    if-eq v2, v1, :cond_1e

    if-eqz v1, :cond_f

    .line 4341
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4343
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_10

    .line 4344
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_10
    if-eqz p1, :cond_17

    .line 4347
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x6

    new-array v3, v3, [Landroid/animation/Animator;

    .line 4348
    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v6, [F

    if-eqz v1, :cond_11

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_11
    const/4 v10, 0x0

    :goto_9
    aput v10, v9, v8

    .line 4349
    invoke-static {v4, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v6, [F

    if-eqz v1, :cond_12

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_12
    const/4 v10, 0x0

    :goto_a
    aput v10, v9, v8

    .line 4350
    invoke-static {v4, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v6, [F

    if-eqz v1, :cond_13

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_13
    const/4 v10, 0x0

    :goto_b
    aput v10, v9, v8

    .line 4351
    invoke-static {v4, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v14

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v4, v4, v8

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v6, [F

    if-eqz v1, :cond_14

    .line 4352
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    goto :goto_c

    :cond_14
    const/4 v10, 0x0

    :goto_c
    aput v10, v9, v8

    invoke-static {v4, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v12

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v4, v4, v6

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v6, [F

    if-eqz v1, :cond_15

    .line 4353
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    goto :goto_d

    :cond_15
    const/4 v10, 0x0

    :goto_d
    aput v10, v9, v8

    invoke-static {v4, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v11

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v4, v4, v14

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v6, [F

    if-eqz v1, :cond_16

    .line 4354
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    move/from16 v16, v1

    goto :goto_e

    :cond_16
    const/16 v16, 0x0

    :goto_e
    aput v16, v9, v8

    invoke-static {v4, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v13

    .line 4348
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4355
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xb4

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4356
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$38;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ThemePreviewActivity$38;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4365
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4366
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_15

    .line 4368
    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_18

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_18
    const/4 v3, 0x0

    :goto_f
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4369
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_19

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_19
    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 4370
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1a

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_11

    :cond_1a
    const/4 v3, 0x0

    :goto_11
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 4371
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v8

    if-eqz v1, :cond_1b

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    goto :goto_12

    :cond_1b
    const/4 v3, 0x0

    :goto_12
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 4372
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v6

    if-eqz v1, :cond_1c

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    goto :goto_13

    :cond_1c
    const/4 v3, 0x0

    :goto_13
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 4373
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v14

    if-eqz v1, :cond_1d

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v5, v1

    goto :goto_14

    :cond_1d
    const/4 v5, 0x0

    :goto_14
    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 4377
    :cond_1e
    :goto_15
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_22

    .line 4379
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1f

    move v1, v6

    goto :goto_16

    :cond_1f
    move v1, v8

    .line 4380
    :goto_16
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    if-eq v1, v6, :cond_22

    .line 4383
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4385
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_20

    .line 4386
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_20
    if-eqz p1, :cond_21

    .line 4389
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

    new-array v2, v13, [Landroid/animation/Animator;

    .line 4390
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v8

    .line 4391
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v6, [F

    aput v7, v5, v8

    .line 4392
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v6, [F

    aput v7, v5, v8

    .line 4393
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v14

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v3, v3, v8

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v6, [F

    .line 4394
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

    .line 4395
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v11

    .line 4390
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4396
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xb4

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4397
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$39;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ThemePreviewActivity$39;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4406
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4407
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_17

    .line 4409
    :cond_21
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4410
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 4411
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 4412
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v1, v1, v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 4413
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v1, v1, v6

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    :cond_22
    :goto_17
    return-void
.end method

.method private updateSelectedPattern(Z)V
    .locals 4

    .line 4029
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4031
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4032
    instance-of v3, v2, Lorg/telegram/ui/Cells/PatternCell;

    if-eqz v3, :cond_0

    .line 4033
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
    .locals 37

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 619
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 620
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 621
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 622
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v8, 0x1

    .line 624
    iput-boolean v8, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    .line 625
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    iget-wide v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long v1, v1, v9

    if-eqz v1, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    move v1, v11

    :goto_0
    iput-boolean v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowDayNightIcon:Z

    if-eqz v1, :cond_2

    .line 626
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v2, v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-nez v2, :cond_1

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-nez v1, :cond_2

    :cond_1
    move v1, v8

    goto :goto_1

    :cond_2
    move v1, v11

    :goto_1
    iput-boolean v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowBrightnessControll:Z

    if-eqz v1, :cond_4

    .line 628
    invoke-interface {v0}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->isDark()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->progressToDarkTheme:F

    .line 630
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 631
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 633
    :cond_5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    .line 635
    iget-boolean v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowBrightnessControll:Z

    const/4 v14, 0x3

    if-eqz v0, :cond_6

    sget v0, Lorg/telegram/messenger/SharedConfig;->dayNightWallpaperSwitchHint:I

    if-ge v0, v14, :cond_6

    .line 636
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda20;

    invoke-direct {v0, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 658
    :cond_6
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 659
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v0, v11, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$5;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$5;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    .line 680
    sget v1, Lorg/telegram/messenger/R$string;->Search:I

    const-string v2, "Search"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/ActionBar/MenuDrawable;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 683
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 684
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->ThemePreview:I

    const-string v2, "ThemePreview"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 686
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$6;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$6;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    .line 715
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v6, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 716
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v15, -0x1

    const/4 v5, -0x2

    invoke-static {v15, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 719
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 720
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 721
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 722
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v7, v8, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 723
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v3, 0x2

    if-eqz v1, :cond_7

    move v1, v8

    goto :goto_3

    :cond_7
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVerticalScrollbarPosition(I)V

    .line 724
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/16 v16, 0xc

    if-eqz v1, :cond_8

    move/from16 v1, v16

    goto :goto_4

    :cond_8
    move v1, v11

    :goto_4
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v11, v11, v11, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 725
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda34;->INSTANCE:Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda34;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 728
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v2, 0x33

    invoke-static {v15, v15, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 730
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    .line 731
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v17, 0x38

    .line 733
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-virtual {v6, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    invoke-virtual {v6, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-static {v0, v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 734
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v1, v4, :cond_9

    .line 735
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 736
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v13, -0x1000000

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v13, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 737
    new-instance v5, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v5, v2, v0, v11, v11}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 738
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v5, v0, v2}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v0, v5

    .line 741
    :cond_9
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 742
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-virtual {v6, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 743
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->floating_pencil:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v12, 0x4

    if-lt v1, v4, :cond_a

    .line 745
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    new-array v2, v8, [I

    const v5, 0x10100a7

    aput v5, v2, v11

    .line 746
    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    sget-object v13, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v15, v3, [F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    aput v14, v15, v11

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    aput v14, v15, v8

    invoke-static {v5, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v14, 0xc8

    invoke-virtual {v5, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v2, v11, [I

    .line 747
    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    new-array v14, v3, [F

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    aput v15, v14, v11

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    aput v15, v14, v8

    invoke-static {v5, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v13, 0xc8

    invoke-virtual {v5, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 748
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 749
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$7;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$7;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 757
    :cond_a
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    if-lt v1, v4, :cond_b

    move/from16 v18, v17

    goto :goto_5

    :cond_b
    const/16 v5, 0x3c

    move/from16 v18, v5

    :goto_5
    if-lt v1, v4, :cond_c

    move/from16 v19, v17

    goto :goto_6

    :cond_c
    const/16 v1, 0x3c

    move/from16 v19, v1

    :goto_6
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_d

    const/4 v5, 0x3

    goto :goto_7

    :cond_d
    const/4 v5, 0x5

    :goto_7
    or-int/lit8 v20, v5, 0x50

    if-eqz v1, :cond_e

    const/16 v5, 0xe

    move/from16 v21, v5

    goto :goto_8

    :cond_e
    move/from16 v21, v11

    :goto_8
    const/16 v22, 0x0

    if-eqz v1, :cond_f

    move/from16 v23, v11

    goto :goto_9

    :cond_f
    const/16 v1, 0xe

    move/from16 v23, v1

    :goto_9
    const/16 v24, 0xe

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 759
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;

    invoke-direct {v0, v7}, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dialogsAdapter:Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;

    .line 760
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 762
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$8;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$8;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    .line 856
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    .line 858
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 859
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 860
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 862
    :cond_10
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v1, v11}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 863
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$9;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$9;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    move v0, v11

    :goto_a
    if-ge v0, v3, :cond_11

    .line 1070
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v6, v5}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 1072
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    aget-object v2, v2, v0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x33

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x30

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1074
    :cond_11
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    aget-object v0, v0, v11

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    .line 1075
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1076
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    aget-object v0, v0, v8

    const/16 v13, 0x8

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1078
    iget v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v0, v3, :cond_12

    .line 1079
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda28;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 1095
    :cond_12
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->access$5600(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)Z

    move-result v0

    const/16 v14, 0xa

    const-string v15, "fonts/rmedium.ttf"

    if-eqz v0, :cond_13

    .line 1096
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "Telegram Beta Chat"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1097
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Telegram"

    const-string v5, "iMe"

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1098
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    const/16 v1, 0x1f9

    new-array v2, v11, [Ljava/lang/Object;

    const-string v5, "Members"

    invoke-static {v5, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    move v13, v3

    const/4 v9, 0x0

    goto/16 :goto_f

    .line 1100
    :cond_13
    iget v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v0, v3, :cond_1c

    .line 1101
    iget-wide v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long v0, v0, v9

    if-eqz v0, :cond_14

    .line 1102
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->WallpaperPreview:I

    const-string v2, "WallpaperPreview"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 1104
    :cond_14
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->BackgroundPreview:I

    const-string v2, "BackgroundPreview"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1106
    :goto_b
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 1107
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v2, v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz v2, :cond_15

    .line 1108
    check-cast v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    .line 1109
    iget-object v1, v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->originalPath:Ljava/io/File;

    if-eqz v1, :cond_15

    const/4 v1, 0x7

    .line 1110
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_header_draw:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1113
    :cond_15
    iget-wide v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long v1, v1, v9

    if-nez v1, :cond_19

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v1, :cond_16

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v1

    invoke-virtual {v1, v11}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v1

    if-nez v1, :cond_18

    :cond_16
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v2, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v2, :cond_17

    check-cast v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-object v1, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    const-string v2, "d"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_17
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v1, :cond_19

    :cond_18
    const/4 v1, 0x5

    .line 1114
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_header_share:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1116
    :cond_19
    iget-wide v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long v1, v1, v9

    if-eqz v1, :cond_1b

    iget-boolean v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowDayNightIcon:Z

    if-eqz v1, :cond_1b

    .line 1117
    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/messenger/R$raw;->sun:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v3, 0x1c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v21

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v22

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v18, v1

    move/from16 v19, v2

    invoke-direct/range {v18 .. v24}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v2, 0x6

    .line 1118
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1120
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    .line 1121
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->isDark()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1122
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 1123
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_c

    .line 1125
    :cond_1a
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 1126
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 1128
    :goto_c
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 1129
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuName:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 1130
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v2, "Sunny.**"

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 1131
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v2, "Path 6.**"

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 1132
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v2, "Path.**"

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 1133
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v2, "Path 5.**"

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 1134
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    :cond_1b
    const/4 v9, 0x0

    const/4 v13, 0x2

    goto/16 :goto_f

    :cond_1c
    if-ne v0, v8, :cond_1e

    .line 1137
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    .line 1138
    sget v0, Lorg/telegram/messenger/R$string;->Save:I

    const-string v1, "Save"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->saveItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1140
    new-instance v5, Lorg/telegram/ui/ThemePreviewActivity$10;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    const/16 v13, 0x33

    move-object/from16 v2, p1

    const/4 v13, 0x2

    move v10, v4

    const/4 v9, 0x0

    move/from16 v4, v18

    move-object v10, v5

    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ThemePreviewActivity$10;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v10, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1147
    invoke-virtual {v10, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 1148
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->ColorPickerBackground:I

    const-string v2, "ColorPickerBackground"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1149
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->ColorPickerMainColor:I

    const-string v2, "ColorPickerMainColor"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1150
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->ColorPickerMyMessages:I

    const-string v3, "ColorPickerMyMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1151
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAllowCloseAnimation(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1152
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setForceSmoothKeyboard(Z)V

    .line 1153
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v27, -0x2

    const/16 v28, -0x1

    const/16 v29, 0x33

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v3, 0x40

    move/from16 v30, v3

    goto :goto_d

    :cond_1d
    move/from16 v30, v17

    :goto_d
    const/16 v31, 0x0

    const/16 v32, 0x28

    const/16 v33, 0x0

    invoke-static/range {v27 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1154
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1156
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    .line 1157
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 1158
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1159
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1160
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLines(I)V

    .line 1161
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1162
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1163
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-virtual {v6, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1164
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1165
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    const-string v3, "ColorPickerMainColor"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_arrow_drop_down:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1167
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v6, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1168
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v1, v9, v9, v0, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1169
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1170
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v11, v11, v1, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1171
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    const/16 v27, -0x2

    const/16 v28, -0x2

    const/16 v29, 0x10

    const/16 v30, 0x10

    const/16 v32, 0x0

    const/16 v33, 0x1

    invoke-static/range {v27 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    :cond_1e
    const/4 v9, 0x0

    const/4 v13, 0x2

    .line 1173
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v1, :cond_1f

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_theme;->title:Ljava/lang/String;

    goto :goto_e

    :cond_1f
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_e
    const-string v1, ".attheme"

    .line 1174
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_20

    .line 1176
    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1178
    :cond_20
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1179
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v0, :cond_21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_theme;->installs_count:I

    if-lez v0, :cond_21

    .line 1180
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "ThemeInstallCount"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 1182
    :cond_21
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0xe10

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatDateOnline(J[Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1187
    :goto_f
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$11;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$11;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1353
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$12;

    invoke-direct {v0, v6}, Lorg/telegram/ui/ThemePreviewActivity$12;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    .line 1359
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 1360
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1361
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1362
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 1363
    iget v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/16 v1, 0x10

    if-ne v0, v13, :cond_24

    .line 1364
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0x48

    iget-boolean v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->self:Z

    if-nez v4, :cond_22

    iget-wide v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v18, 0x0

    cmp-long v4, v4, v18

    if-lez v4, :cond_22

    const/16 v4, 0x3a

    goto :goto_10

    :cond_22
    move v4, v11

    :goto_10
    add-int/2addr v3, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/lit8 v3, v3, -0xc

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->insideBottomSheet()Z

    move-result v4

    if-eqz v4, :cond_23

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    goto :goto_11

    :cond_23
    move v4, v11

    :goto_11
    add-int/2addr v3, v4

    invoke-virtual {v0, v11, v2, v11, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_12

    :cond_24
    if-ne v0, v8, :cond_25

    .line 1366
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v11, v2, v11, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_12

    .line 1368
    :cond_25
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v11, v2, v11, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1370
    :goto_12
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1371
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v7, v8, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1372
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_26

    move v3, v8

    goto :goto_13

    :cond_26
    move v3, v13

    :goto_13
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVerticalScrollbarPosition(I)V

    .line 1373
    iget v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v0, v8, :cond_27

    .line 1374
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v29, 0x33

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x111

    invoke-static/range {v27 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1375
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda35;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    const/4 v4, -0x1

    goto :goto_14

    .line 1390
    :cond_27
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x33

    const/4 v4, -0x1

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1392
    :goto_14
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$13;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$13;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1407
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, -0x2

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1408
    new-instance v0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    .line 1409
    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda36;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setCallback(Lorg/telegram/ui/Components/WallpaperParallaxEffect$Callback;)V

    .line 1424
    iget v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/16 v5, 0x11

    if-eq v0, v8, :cond_28

    if-ne v0, v13, :cond_6b

    :cond_28
    if-ne v0, v13, :cond_2f

    .line 1426
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->insideBottomSheet()Z

    move-result v0

    .line 1427
    new-instance v10, Lorg/telegram/ui/ThemePreviewActivity$14;

    invoke-direct {v10, v6, v7, v0}, Lorg/telegram/ui/ThemePreviewActivity$14;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;Z)V

    iput-object v10, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    .line 1490
    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1491
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->insideBottomSheet()Z

    move-result v23

    if-eqz v23, :cond_29

    sget v23, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    goto :goto_15

    :cond_29
    move/from16 v23, v11

    :goto_15
    add-int v12, v19, v23

    invoke-virtual {v0, v10, v9, v2, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1492
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    const/16 v9, 0x51

    const/4 v10, -0x1

    invoke-static {v10, v11, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1494
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    const v2, 0x3d072b02    # 0.033f

    const v9, 0x3f99999a    # 1.2f

    .line 1495
    invoke-static {v0, v2, v9}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 1496
    invoke-direct {v6, v11}, Lorg/telegram/ui/ThemePreviewActivity;->updateApplyButton1(Z)V

    .line 1497
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1499
    iget-wide v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v21, 0x0

    cmp-long v0, v9, v21

    if-lez v0, :cond_2b

    iget-boolean v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->self:Z

    if-nez v0, :cond_2b

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->serverWallpaper:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_2b

    .line 1500
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    const v2, 0x3d072b02    # 0.033f

    const v9, 0x3f99999a    # 1.2f

    .line 1501
    invoke-static {v0, v2, v9}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 1502
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1503
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v9, ""

    invoke-direct {v2, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1504
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v9

    if-nez v9, :cond_2a

    const-string v9, "l "

    .line 1505
    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1506
    new-instance v9, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_mini_lock3:I

    invoke-direct {v9, v10}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/16 v10, 0x21

    invoke-virtual {v2, v9, v11, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1508
    :cond_2a
    sget v9, Lorg/telegram/messenger/R$string;->ApplyWallpaperForMeAndPeer:I

    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1509
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;->setText(Ljava/lang/CharSequence;)V

    .line 1511
    :try_start_0
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    invoke-static {v9}, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;->access$6400(Lorg/telegram/ui/ThemePreviewActivity$BlurButton;)Lorg/telegram/ui/Components/Text;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/Text;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    invoke-static {v2, v9, v11}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1513
    :catch_0
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1514
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    const/16 v25, -0x1

    const/16 v26, 0x30

    const/16 v27, 0x51

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x3a

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1515
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    const/16 v31, 0x0

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_16

    .line 1517
    :cond_2b
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    const/16 v25, -0x1

    const/16 v26, 0x30

    const/16 v27, 0x51

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1520
    :goto_16
    iget-boolean v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowBrightnessControll:Z

    if-eqz v0, :cond_2f

    .line 1521
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$15;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v6, v2}, Lorg/telegram/ui/ThemePreviewActivity$15;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSliderContainer:Landroid/widget/FrameLayout;

    .line 1554
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v0, v2, v9, v10, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1555
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSliderContainer:Landroid/widget/FrameLayout;

    const/16 v9, 0xde

    const/16 v10, 0x4c

    const/16 v12, 0x31

    invoke-static {v9, v10, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1557
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$16;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v9, 0x3

    invoke-direct {v0, v6, v2, v9}, Lorg/telegram/ui/ThemePreviewActivity$16;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;I)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    .line 1566
    iget v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/SliderView;->setValue(F)Lorg/telegram/ui/Stories/recorder/SliderView;

    .line 1567
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    const v2, 0x3f666666    # 0.9f

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v2}, Lorg/telegram/ui/Stories/recorder/SliderView;->setMinMax(FF)Lorg/telegram/ui/Stories/recorder/SliderView;

    .line 1568
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda29;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/SliderView;->setOnValueChange(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/SliderView;

    .line 1573
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSliderContainer:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1575
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    if-eqz v0, :cond_2f

    .line 1576
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    invoke-interface {v0}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->isDark()Z

    move-result v0

    if-eqz v0, :cond_2c

    move v0, v11

    goto :goto_17

    :cond_2c
    const/16 v0, 0x8

    :goto_17
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1577
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->isDark()Z

    move-result v2

    if-eqz v2, :cond_2d

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_18

    :cond_2d
    const/4 v9, 0x0

    :goto_18
    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1578
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->isDark()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    goto :goto_19

    :cond_2e
    const/4 v9, 0x0

    :goto_19
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Stories/recorder/SliderView;->setValue(F)Lorg/telegram/ui/Stories/recorder/SliderView;

    .line 1583
    :cond_2f
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1584
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v9, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->sheetDrawable:Landroid/graphics/drawable/Drawable;

    .line 1585
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1586
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->sheetDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v6, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1588
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v8}, Landroid/text/TextPaint;-><init>(I)V

    const/16 v9, 0xe

    .line 1589
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1590
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1591
    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v10, v9, Lorg/telegram/ui/WallpapersListActivity$EmojiWallpaper;

    if-nez v10, :cond_4c

    .line 1593
    iget v10, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-eq v10, v8, :cond_32

    instance-of v10, v9, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v10, :cond_30

    goto :goto_1a

    .line 1600
    :cond_30
    instance-of v10, v9, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz v10, :cond_31

    .line 1601
    check-cast v9, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    .line 1602
    iget-object v9, v9, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->slug:Ljava/lang/String;

    const-string v10, "t"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_31

    goto :goto_1b

    :cond_31
    move v9, v13

    goto :goto_1c

    .line 1595
    :cond_32
    :goto_1a
    instance-of v10, v9, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v10, :cond_33

    check-cast v9, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-object v9, v9, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    const-string v10, "d"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    :goto_1b
    move v9, v11

    goto :goto_1c

    :cond_33
    const/4 v9, 0x3

    .line 1608
    :goto_1c
    new-array v10, v9, [Ljava/lang/String;

    .line 1609
    new-array v12, v9, [I

    .line 1610
    new-array v1, v9, [Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-eqz v9, :cond_3c

    .line 1613
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    .line 1614
    iget v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-eq v1, v8, :cond_35

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v1, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v1, :cond_34

    goto :goto_1d

    .line 1619
    :cond_34
    sget v1, Lorg/telegram/messenger/R$string;->BackgroundBlurred:I

    const-string v14, "BackgroundBlurred"

    invoke-static {v14, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v11

    .line 1620
    sget v1, Lorg/telegram/messenger/R$string;->BackgroundMotion:I

    const-string v14, "BackgroundMotion"

    invoke-static {v14, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v8

    goto :goto_1e

    .line 1615
    :cond_35
    :goto_1d
    sget v1, Lorg/telegram/messenger/R$string;->BackgroundColors:I

    const-string v14, "BackgroundColors"

    invoke-static {v14, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v11

    .line 1616
    sget v1, Lorg/telegram/messenger/R$string;->BackgroundPattern:I

    const-string v14, "BackgroundPattern"

    invoke-static {v14, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v8

    .line 1617
    sget v1, Lorg/telegram/messenger/R$string;->BackgroundMotion:I

    const-string v14, "BackgroundMotion"

    invoke-static {v14, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v13

    :goto_1e
    move v1, v11

    move v14, v1

    :goto_1f
    if-ge v1, v9, :cond_36

    .line 1623
    aget-object v13, v10, v1

    invoke-virtual {v2, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-double v3, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    aput v3, v12, v1

    .line 1624
    aget v3, v12, v1

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v1, v1, 0x1

    const/4 v3, -0x2

    const/4 v13, 0x2

    goto :goto_1f

    .line 1627
    :cond_36
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$17;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$17;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    .line 1641
    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1642
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    iget v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz v3, :cond_37

    move v3, v11

    goto :goto_20

    :cond_37
    const/4 v3, 0x4

    :goto_20
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1643
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    iget v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz v3, :cond_38

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_21

    :cond_38
    const v3, 0x3dcccccd    # 0.1f

    :goto_21
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1644
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    iget v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz v3, :cond_39

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_22

    :cond_39
    const v3, 0x3dcccccd    # 0.1f

    :goto_22
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1645
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    iget v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz v3, :cond_3a

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_23

    :cond_3a
    const/4 v3, 0x0

    :goto_23
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1646
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    iget v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz v3, :cond_3b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_24

    :cond_3b
    const/4 v4, 0x0

    :goto_24
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1647
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    const/16 v4, 0x30

    invoke-static {v4, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v1, v3, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1648
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$18;

    invoke-direct {v3, v6}, Lorg/telegram/ui/ThemePreviewActivity$18;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1676
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationImageView:Landroid/widget/ImageView;

    .line 1677
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1678
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationImageView:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->bg_rotate_large:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1679
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationImageView:Landroid/widget/ImageView;

    const/4 v4, -0x2

    invoke-static {v4, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v1, v3, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_25

    :cond_3c
    move v14, v11

    :goto_25
    move v1, v11

    :goto_26
    if-ge v1, v9, :cond_4c

    .line 1684
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    new-instance v4, Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    iget v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-eq v13, v8, :cond_3d

    iget-object v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v13, v13, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v13, :cond_3e

    :cond_3d
    if-eqz v1, :cond_3f

    :cond_3e
    move v13, v8

    goto :goto_27

    :cond_3f
    move v13, v11

    :goto_27
    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    iget-object v11, v6, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-direct {v4, v7, v13, v5, v11}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;-><init>(Landroid/content/Context;ZLandroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v4, v3, v1

    .line 1685
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v3, v3, v1

    iget v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1686
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v3, v3, v1

    aget-object v4, v10, v1

    aget v5, v12, v1

    invoke-virtual {v3, v4, v5, v14}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setText(Ljava/lang/String;II)V

    .line 1688
    iget v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-eq v3, v8, :cond_42

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v3, v3, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v3, :cond_40

    goto :goto_29

    .line 1695
    :cond_40
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v3, v3, v1

    if-nez v1, :cond_41

    iget-boolean v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    goto :goto_28

    :cond_41
    iget-boolean v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    :goto_28
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    goto :goto_2c

    :cond_42
    :goto_29
    if-ne v1, v8, :cond_45

    .line 1690
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v3, v3, v1

    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v4, :cond_44

    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v4, :cond_43

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_43

    goto :goto_2a

    :cond_43
    const/4 v4, 0x0

    goto :goto_2b

    :cond_44
    :goto_2a
    move v4, v8

    :goto_2b
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    goto :goto_2c

    :cond_45
    const/4 v3, 0x2

    const/4 v5, 0x0

    if-ne v1, v3, :cond_46

    .line 1692
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v3, v3, v1

    iget-boolean v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    .line 1697
    :cond_46
    :goto_2c
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v14

    .line 1698
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    .line 1699
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v5, 0x3

    if-ne v9, v5, :cond_49

    if-eqz v1, :cond_48

    const/4 v5, 0x2

    if-ne v1, v5, :cond_47

    goto :goto_2d

    .line 1704
    :cond_47
    div-int/lit8 v3, v3, 0x2

    const/16 v5, 0xa

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v3, v11

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2e

    :cond_48
    :goto_2d
    const/16 v5, 0xa

    .line 1702
    div-int/lit8 v3, v3, 0x2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v3, v11

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_2e

    :cond_49
    const/16 v5, 0xa

    if-ne v1, v8, :cond_4a

    .line 1708
    div-int/lit8 v3, v3, 0x2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v3, v11

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_2e

    .line 1710
    :cond_4a
    div-int/lit8 v3, v3, 0x2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v3, v11

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1713
    :goto_2e
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v5, v5, v1

    invoke-virtual {v3, v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1714
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v4, v3, v1

    .line 1715
    aget-object v3, v3, v1

    new-instance v5, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda13;

    invoke-direct {v5, v6, v1, v4}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ThemePreviewActivity;ILorg/telegram/ui/Components/WallpaperCheckBoxView;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4b

    .line 1769
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1770
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v3, v3, v1

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2f

    :cond_4b
    const/4 v4, 0x0

    :goto_2f
    add-int/lit8 v1, v1, 0x1

    const/16 v5, 0x11

    const/4 v11, 0x0

    goto/16 :goto_26

    :cond_4c
    const/4 v4, 0x0

    .line 1775
    iget v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v1, v8, :cond_55

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    new-array v5, v1, [I

    new-array v9, v1, [Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    .line 1778
    iput-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    .line 1781
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    .line 1783
    sget v1, Lorg/telegram/messenger/R$string;->BackgroundAnimate:I

    const-string v9, "BackgroundAnimate"

    invoke-static {v9, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    aput-object v1, v3, v9

    .line 1784
    sget v1, Lorg/telegram/messenger/R$string;->BackgroundColors:I

    const-string v9, "BackgroundColors"

    invoke-static {v9, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_30
    const/4 v10, 0x2

    if-ge v1, v10, :cond_4d

    .line 1787
    aget-object v10, v3, v1

    invoke-virtual {v2, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    aput v10, v5, v1

    .line 1788
    aget v10, v5, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 1791
    :cond_4d
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v1, :cond_55

    .line 1792
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$19;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$19;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    .line 1806
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1808
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v2, :cond_4e

    const/4 v2, 0x0

    goto :goto_31

    :cond_4e
    const/4 v2, 0x4

    :goto_31
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1809
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v2, :cond_4f

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_32

    :cond_4f
    const v2, 0x3dcccccd    # 0.1f

    :goto_32
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1810
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v2, :cond_50

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_33

    :cond_50
    const v2, 0x3dcccccd    # 0.1f

    :goto_33
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1811
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v2, :cond_51

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_34

    :cond_51
    move v12, v4

    :goto_34
    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1812
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    const/16 v4, 0x30

    const/16 v10, 0x11

    invoke-static {v4, v4, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v2, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1813
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$20;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$20;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1854
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationImageView:Landroid/widget/ImageView;

    .line 1855
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1856
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationImageView:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->bg_rotate_large:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1857
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationImageView:Landroid/widget/ImageView;

    const/16 v4, 0x11

    const/4 v10, -0x2

    invoke-static {v10, v10, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v2, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    :goto_35
    const/4 v2, 0x2

    if-ge v1, v2, :cond_55

    .line 1861
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    new-instance v4, Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-nez v1, :cond_52

    move v10, v8

    goto :goto_36

    :cond_52
    const/4 v10, 0x0

    :goto_36
    iget-object v11, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    iget-object v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-direct {v4, v7, v10, v11, v12}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;-><init>(Landroid/content/Context;ZLandroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v4, v2, v1

    .line 1862
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v1

    aget-object v4, v3, v1

    aget v10, v5, v1

    invoke-virtual {v2, v4, v10, v9}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setText(Ljava/lang/String;II)V

    if-nez v1, :cond_53

    .line 1865
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v1

    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-boolean v4, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    const/4 v10, 0x0

    invoke-virtual {v2, v4, v10}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    .line 1867
    :cond_53
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, v9

    .line 1868
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v4, v2, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x11

    .line 1869
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v1, v8, :cond_54

    .line 1871
    div-int/lit8 v2, v2, 0x2

    const/16 v10, 0xa

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v2, v11

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_37

    :cond_54
    const/16 v10, 0xa

    .line 1873
    div-int/lit8 v2, v2, 0x2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v2, v11

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1875
    :goto_37
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    iget-object v11, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v11, v11, v1

    invoke-virtual {v2, v11, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1876
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v4, v2, v1

    .line 1877
    aget-object v2, v2, v1

    new-instance v11, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda14;

    invoke-direct {v11, v6, v1, v4}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ThemePreviewActivity;ILorg/telegram/ui/Components/WallpaperCheckBoxView;)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 1893
    :cond_55
    iget v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-eq v1, v8, :cond_57

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v1, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v1, :cond_56

    goto :goto_38

    :cond_56
    const/4 v0, 0x0

    goto/16 :goto_47

    :cond_57
    :goto_38
    const/4 v1, 0x0

    .line 1894
    iput-boolean v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    const/4 v1, 0x0

    :goto_39
    const/4 v2, 0x2

    if-ge v1, v2, :cond_56

    .line 1899
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    new-instance v4, Lorg/telegram/ui/ThemePreviewActivity$21;

    invoke-direct {v4, v6, v7, v1, v0}, Lorg/telegram/ui/ThemePreviewActivity$21;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;ILandroid/graphics/Rect;)V

    aput-object v4, v3, v1

    if-eq v1, v8, :cond_59

    .line 1910
    iget v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v3, v2, :cond_58

    goto :goto_3a

    :cond_58
    const/4 v3, 0x4

    goto :goto_3b

    .line 1911
    :cond_59
    :goto_3a
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1913
    :goto_3b
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1915
    iget v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5b

    if-nez v1, :cond_5a

    const/16 v2, 0x141

    goto :goto_3c

    :cond_5a
    const/16 v2, 0x13c

    :goto_3c
    const/16 v4, 0x53

    const/4 v5, -0x1

    .line 1916
    invoke-static {v5, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    goto :goto_3e

    :cond_5b
    const/16 v4, 0x53

    const/4 v5, -0x1

    if-nez v1, :cond_5c

    const/16 v2, 0x111

    goto :goto_3d

    :cond_5c
    const/16 v2, 0x13c

    .line 1918
    :goto_3d
    invoke-static {v5, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    :goto_3e
    if-nez v1, :cond_5e

    .line 1920
    iget v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5d

    const/16 v4, 0x141

    goto :goto_3f

    :cond_5d
    const/16 v4, 0x111

    goto :goto_3f

    :cond_5e
    const/16 v4, 0x13c

    :goto_3f
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1921
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->insideBottomSheet()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 1922
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_5f
    if-nez v1, :cond_60

    .line 1925
    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->sheetDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1926
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v5

    add-int/2addr v4, v9

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1928
    :cond_60
    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v4, v4, v1

    if-nez v1, :cond_61

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iget v9, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v9

    goto :goto_40

    :cond_61
    const/4 v5, 0x0

    :goto_40
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->insideBottomSheet()Z

    move-result v9

    if-eqz v9, :cond_62

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    goto :goto_41

    :cond_62
    const/4 v9, 0x0

    :goto_41
    const/4 v10, 0x0

    invoke-virtual {v4, v10, v5, v10, v9}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1929
    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eq v1, v8, :cond_64

    .line 1931
    iget v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_63

    goto :goto_42

    :cond_63
    const/4 v5, 0x3

    goto/16 :goto_43

    .line 1932
    :cond_64
    :goto_42
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    new-instance v4, Lorg/telegram/ui/ThemePreviewActivity$22;

    invoke-direct {v4, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$22;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    aput-object v4, v2, v1

    .line 1944
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1945
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    const/4 v5, 0x3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v2, v4, v9, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1946
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1947
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v4, v4, v1

    const/16 v9, 0x50

    const/16 v10, 0x33

    const/4 v11, -0x1

    invoke-static {v11, v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v4, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1949
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v1

    .line 1950
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v2, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1951
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1952
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_fieldOverlayText:I

    invoke-virtual {v6, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1953
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    sget v9, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v10, "Cancel"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1954
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const/16 v9, 0x11

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1955
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const/16 v9, 0x15

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    const/4 v9, 0x0

    invoke-virtual {v2, v10, v9, v11, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1956
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v6, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v11

    invoke-static {v11, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1957
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v9, v9, v1

    const/16 v11, 0x33

    const/4 v12, -0x2

    const/4 v13, -0x1

    invoke-static {v12, v13, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v2, v9, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1958
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    new-instance v9, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda11;

    invoke-direct {v9, v6, v1}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ThemePreviewActivity;I)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1998
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v9, v2, v1

    .line 1999
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const/high16 v9, 0x41700000    # 15.0f

    invoke-virtual {v2, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2000
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2001
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-virtual {v6, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2002
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    sget v4, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    const-string v9, "ApplyTheme"

    invoke-static {v9, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2003
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2004
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const/16 v4, 0x15

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    const/4 v4, 0x0

    invoke-virtual {v2, v9, v4, v11, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2005
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-virtual {v6, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v9

    invoke-static {v9, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2006
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    const/16 v9, 0x35

    const/4 v10, -0x2

    const/4 v11, -0x1

    invoke-static {v10, v11, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v4, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2007
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    new-instance v4, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda12;

    invoke-direct {v4, v6, v1}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ThemePreviewActivity;I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_43
    if-ne v1, v8, :cond_65

    .line 2020
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    .line 2021
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setLines(I)V

    .line 2022
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2023
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->BackgroundChoosePattern:I

    const-string v9, "BackgroundChoosePattern"

    invoke-static {v9, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2025
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v6, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2026
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2027
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2028
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    const/16 v4, 0x15

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/4 v10, 0x6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    const/16 v12, 0x8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-virtual {v2, v9, v10, v11, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2030
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2031
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    const/16 v9, 0x10

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 2032
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    iget-object v10, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    const/16 v29, -0x1

    const/16 v30, 0x30

    const/16 v31, 0x33

    const/16 v32, 0x0

    const/16 v33, 0x15

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2034
    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$23;

    invoke-direct {v2, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$23;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 2043
    new-instance v10, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v11, 0x0

    invoke-direct {v10, v7, v11, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v10, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2044
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v10, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    invoke-direct {v10, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v10, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsAdapter:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2045
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v10, Lorg/telegram/ui/ThemePreviewActivity$24;

    invoke-direct {v10, v6}, Lorg/telegram/ui/ThemePreviewActivity$24;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 2056
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    iget-object v10, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v30, 0x64

    const/16 v33, 0x4c

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2057
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v10, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda33;

    invoke-direct {v10, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 2078
    new-instance v2, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    iput-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensityCell:Lorg/telegram/ui/Cells/HeaderCell;

    .line 2079
    sget v10, Lorg/telegram/messenger/R$string;->BackgroundIntensity:I

    const-string v11, "BackgroundIntensity"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 2080
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    iget-object v10, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensityCell:Lorg/telegram/ui/Cells/HeaderCell;

    const/16 v30, -0x2

    const/16 v33, 0xaf

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2082
    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$25;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    invoke-direct {v2, v6, v7, v10}, Lorg/telegram/ui/ThemePreviewActivity$25;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    .line 2091
    iget v10, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    .line 2092
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    .line 2093
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    new-instance v10, Lorg/telegram/ui/ThemePreviewActivity$26;

    invoke-direct {v10, v6}, Lorg/telegram/ui/ThemePreviewActivity$26;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    .line 2105
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    iget-object v10, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    const/16 v30, 0x26

    const/16 v32, 0x5

    const/16 v33, 0xd3

    const/16 v34, 0x5

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_46

    :cond_65
    const/16 v4, 0x15

    const/16 v9, 0x10

    .line 2107
    new-instance v2, Lorg/telegram/ui/Components/ColorPicker;

    iget-boolean v10, v6, Lorg/telegram/ui/ThemePreviewActivity;->editingTheme:Z

    new-instance v11, Lorg/telegram/ui/ThemePreviewActivity$27;

    invoke-direct {v11, v6}, Lorg/telegram/ui/ThemePreviewActivity$27;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-direct {v2, v7, v10, v11}, Lorg/telegram/ui/Components/ColorPicker;-><init>(Landroid/content/Context;ZLorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;)V

    iput-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    .line 2176
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/ColorPicker;->setResourcesProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2177
    iget v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v2, v8, :cond_68

    .line 2178
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    iget-object v10, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const/4 v11, -0x1

    invoke-static {v11, v11, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v2, v10, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2179
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 2180
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const v10, 0x3e4ccccd    # 0.2f

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/ColorPicker;->setMinBrightness(F)V

    goto :goto_44

    .line 2182
    :cond_66
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const v10, 0x3d4ccccd    # 0.05f

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/ColorPicker;->setMinBrightness(F)V

    .line 2183
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const v10, 0x3f4ccccd    # 0.8f

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/ColorPicker;->setMaxBrightness(F)V

    .line 2185
    :goto_44
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v2, :cond_69

    .line 2186
    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v2, :cond_67

    const/16 v33, 0x2

    goto :goto_45

    :cond_67
    move/from16 v33, v8

    .line 2187
    :goto_45
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const/16 v30, 0x1

    invoke-direct {v6, v8}, Lorg/telegram/ui/ThemePreviewActivity;->hasChanges(I)Z

    move-result v31

    const/16 v32, 0x2

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v29, v2

    invoke-virtual/range {v29 .. v36}, Lorg/telegram/ui/Components/ColorPicker;->setType(IZIIZIZ)V

    .line 2188
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object v10, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v10, v10, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    .line 2189
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v2, :cond_69

    .line 2190
    iget-object v10, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v10, v2, v8}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    goto :goto_46

    .line 2194
    :cond_68
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    iget-object v10, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x30

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_69
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_39

    .line 2200
    :goto_47
    invoke-direct {v6, v0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    .line 2201
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 2202
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2205
    :cond_6a
    iget v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-eq v0, v8, :cond_6b

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v0, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-nez v0, :cond_6b

    .line 2206
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 2210
    :cond_6b
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2212
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$28;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$28;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 2241
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 2242
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    iput-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 2243
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2248
    new-instance v0, Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v0, v7}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 2249
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$29;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$29;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 2265
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$30;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$30;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 2301
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-virtual {v6, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setViewPagerEdgeEffectColor(Landroidx/viewpager/widget/ViewPager;I)V

    .line 2302
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/16 v31, 0x33

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    iget v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-nez v2, :cond_6c

    const/16 v35, 0x30

    goto :goto_48

    :cond_6c
    const/16 v35, 0x0

    :goto_48
    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2304
    new-instance v0, Lorg/telegram/ui/Components/UndoView;

    invoke-direct {v0, v7, v6}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/16 v1, 0x33

    .line 2305
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UndoView;->setAdditionalTranslationY(F)V

    .line 2306
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/16 v29, -0x1

    const/16 v30, -0x2

    const/16 v31, 0x53

    const/16 v32, 0x8

    const/16 v33, 0x0

    const/16 v34, 0x8

    const/16 v35, 0x8

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2308
    iget v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-nez v0, :cond_6d

    .line 2309
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2310
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-virtual {v6, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2311
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x53

    const/4 v3, -0x1

    invoke-direct {v1, v3, v8, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 v2, 0x30

    .line 2312
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2313
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2315
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->saveButtonsContainer:Landroid/widget/FrameLayout;

    .line 2316
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {v6, v1}, Lorg/telegram/ui/ThemePreviewActivity;->getButtonsColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2317
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->saveButtonsContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x53

    const/16 v3, 0x30

    const/4 v4, -0x1

    invoke-static {v4, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2319
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$31;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$31;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dotsContainer:Landroid/view/View;

    .line 2333
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->saveButtonsContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x16

    const/16 v3, 0x8

    const/16 v4, 0x11

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2335
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    .line 2336
    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2337
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_fieldOverlayText:I

    invoke-direct {v6, v1}, Lorg/telegram/ui/ThemePreviewActivity;->getButtonsColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2338
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2339
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    const/high16 v2, 0xf000000

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2340
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    const/16 v2, 0x1d

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v4, 0x1d

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2341
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v3, "Cancel"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2342
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2343
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->saveButtonsContainer:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    const/16 v3, 0x33

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-static {v4, v5, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2344
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2346
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    .line 2347
    invoke-virtual {v0, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2348
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/ThemePreviewActivity;->getButtonsColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2349
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2350
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    const/high16 v1, 0xf000000

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2351
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    const/16 v1, 0x1d

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v3, 0x1d

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2352
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    const-string v2, "ApplyTheme"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2353
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2354
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->saveButtonsContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    const/16 v2, 0x35

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-static {v3, v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2355
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2389
    :cond_6d
    iget v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v0, v8, :cond_6e

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasCustomWallpaper()Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v0, :cond_6e

    iget-wide v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    const-wide v2, 0x100000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6e

    const/4 v0, 0x2

    .line 2390
    invoke-direct {v6, v0}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(I)V

    .line 2393
    :cond_6e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->getThemeDescriptionsInternal()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->themeDescriptions:Ljava/util/List;

    .line 2394
    invoke-direct {v6, v8}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    const/4 v0, 0x0

    .line 2395
    invoke-direct {v6, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    .line 2397
    iget-boolean v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->showColor:Z

    if-eqz v1, :cond_6f

    .line 2398
    invoke-direct {v6, v0, v8, v0}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    .line 2401
    :cond_6f
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->scroller:Landroid/widget/Scroller;

    .line 2403
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_70

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 2404
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v6, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    .line 2405
    iget v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_70

    iget-wide v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_70

    .line 2406
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOverlayNavBarColor(I)V

    .line 2410
    :cond_70
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 10

    .line 3564
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    .line 3565
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez p1, :cond_0

    return-void

    .line 3568
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move p2, v0

    :goto_0
    if-ge p2, p1, :cond_f

    .line 3570
    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 3571
    instance-of v1, p3, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v1, :cond_1

    .line 3572
    check-cast p3, Lorg/telegram/ui/Cells/DialogCell;

    .line 3573
    invoke-virtual {p3, v0}, Lorg/telegram/ui/Cells/DialogCell;->update(I)Z

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 3576
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->invalidateMotionBackground:I

    if-ne p1, p2, :cond_3

    .line 3577
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_f

    .line 3578
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    goto/16 :goto_5

    .line 3580
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    const/4 v1, 0x1

    if-ne p1, p2, :cond_4

    .line 3581
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_f

    .line 3582
    invoke-direct {p0, v1}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    goto/16 :goto_5

    .line 3584
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->wallpapersNeedReload:I

    if-ne p1, p2, :cond_5

    .line 3585
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of p2, p1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz p2, :cond_f

    .line 3586
    check-cast p1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    .line 3587
    iget-object p2, p1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->slug:Ljava/lang/String;

    if-nez p2, :cond_f

    .line 3588
    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->slug:Ljava/lang/String;

    goto/16 :goto_5

    .line 3591
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoad:I

    const-wide/16 v2, 0x0

    if-ne p1, p2, :cond_e

    .line 3592
    aget-object p1, p3, v0

    check-cast p1, Ljava/util/ArrayList;

    .line 3593
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 3594
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 3597
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    move p3, v0

    move v4, p3

    :goto_1
    if-ge p3, p2, :cond_9

    .line 3598
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 3599
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v6, :cond_8

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v6, :cond_8

    .line 3600
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_6

    iget-object v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 3601
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3602
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3604
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v6, :cond_7

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3605
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 3607
    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    .line 3608
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    :goto_2
    move v4, v1

    goto :goto_3

    .line 3609
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-nez v6, :cond_8

    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v6, :cond_8

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_9
    if-nez v4, :cond_a

    .line 3614
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz p2, :cond_a

    .line 3615
    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {p3, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3617
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsAdapter:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    if-eqz p2, :cond_b

    .line 3618
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3621
    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_4
    if-ge v0, p2, :cond_d

    .line 3622
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 3623
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v1, :cond_c

    .line 3624
    iget-wide v4, p3, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v1

    move-wide v2, v1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3627
    :cond_d
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPapers;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPapers;-><init>()V

    .line 3628
    iput-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPapers;->hash:J

    .line 3629
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda31;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 3685
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_5

    .line 3686
    :cond_e
    sget p2, Lorg/telegram/messenger/NotificationCenter;->wallpaperSettedToUser:I

    if-ne p1, p2, :cond_f

    .line 3687
    iget-wide p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long p1, p1, v2

    if-eqz p1, :cond_f

    .line 3688
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_f
    :goto_5
    return-void
.end method

.method public getObserverTag()I
    .locals 1

    .line 3527
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->TAG:I

    return v0
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    .line 5787
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowDayNightIcon:Z

    if-eqz v0, :cond_0

    .line 5788
    invoke-virtual {p0}, Lorg/telegram/ui/ThemePreviewActivity;->getThemeDescriptionsInternal()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 5790
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getThemeDescriptionsInternal()Ljava/util/ArrayList;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 5635
    new-instance v10, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda32;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    .line 5679
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 5680
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v7, v10

    move/from16 v8, v19

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5681
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move/from16 v27, v9

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5683
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v30, v9

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5684
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v32, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v30, v1

    move-object/from16 v31, v2

    move/from16 v37, v3

    invoke-direct/range {v30 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5685
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move/from16 v27, v4

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5686
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v29, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    sget v34, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearch:I

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    invoke-direct/range {v27 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5687
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearchPlaceholder:I

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5689
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v30, v9

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5690
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v30, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5691
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v32, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBTITLECOLOR:I

    sget v37, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    const/16 v34, 0x0

    move-object/from16 v30, v1

    move-object/from16 v31, v2

    invoke-direct/range {v30 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5692
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move/from16 v27, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5693
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    const/4 v4, 0x0

    move-object v1, v12

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5694
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    move-object v1, v12

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5696
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/16 v27, 0x0

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v30, v9

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5697
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5699
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    sget v32, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v37, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    move-object/from16 v30, v1

    move-object/from16 v31, v2

    invoke-direct/range {v30 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5700
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5701
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v30, v3, v4

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v28, v1

    move-object/from16 v29, v2

    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5703
    iget-boolean v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->useDefaultThemeForButtons:Z

    if-nez v1, :cond_0

    .line 5704
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ThemePreviewActivity;->saveButtonsContainer:Landroid/widget/FrameLayout;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5705
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_chat_fieldOverlayText:I

    move-object v2, v1

    move/from16 v9, v19

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5706
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    move-object v12, v1

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5709
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v1, :cond_1

    .line 5710
    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/ColorPicker;->provideThemeDescriptions(Ljava/util/List;)V

    .line 5713
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    const/4 v12, 0x0

    if-eqz v1, :cond_7

    move v1, v12

    .line 5714
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 5715
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v14, v4, v1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v12

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelShadow:I

    move-object v13, v2

    move-object/from16 v18, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5716
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v22, v3, v1

    const/16 v23, 0x0

    const/16 v24, 0x0

    sget-object v25, Lorg/telegram/ui/ActionBar/Theme;->chat_composeBackgroundPaint:Landroid/graphics/Paint;

    const/16 v26, 0x0

    const/16 v27, 0x0

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v12

    .line 5719
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 5720
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v14, v4, v1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-array v4, v3, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v12

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelShadow:I

    move-object v13, v2

    move-object/from16 v18, v4

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5721
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v22, v4, v1

    const/16 v23, 0x0

    const/16 v24, 0x0

    sget-object v25, Lorg/telegram/ui/ActionBar/Theme;->chat_composeBackgroundPaint:Landroid/graphics/Paint;

    const/16 v26, 0x0

    const/16 v27, 0x0

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5724
    :cond_3
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-array v2, v3, [Landroid/graphics/drawable/Drawable;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v12

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelShadow:I

    move-object v13, v1

    move-object/from16 v18, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5725
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    const/16 v23, 0x0

    const/16 v24, 0x0

    sget-object v25, Lorg/telegram/ui/ActionBar/Theme;->chat_composeBackgroundPaint:Landroid/graphics/Paint;

    const/16 v26, 0x0

    const/16 v27, 0x0

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v12

    .line 5727
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 5728
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v14, v4, v1

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chat_fieldOverlayText:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v12

    .line 5730
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 5731
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v14, v4, v1

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chat_fieldOverlayText:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 5734
    :cond_5
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    const/4 v15, 0x0

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/SeekBarView;

    aput-object v4, v2, v12

    const-string v4, "innerPaint1"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_player_progressBackground:I

    move-object v13, v1

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5735
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    const/16 v24, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/SeekBarView;

    aput-object v5, v4, v12

    const-string v5, "outerPaint1"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_player_progress:I

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5737
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemePreviewActivity;->intensityCell:Lorg/telegram/ui/Cells/HeaderCell;

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v4, v2, v12

    const-string v4, "textView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    move-object v13, v1

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5739
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v12

    const/16 v26, 0x0

    const/4 v5, 0x2

    new-array v6, v5, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v6, v12

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v6, v3

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v25, v4

    move-object/from16 v27, v6

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5740
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v4, v2, v12

    const/16 v17, 0x0

    new-array v4, v5, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v4, v12

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v4, v3

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleSelected:I

    move-object v13, v1

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5742
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v1, :cond_6

    .line 5743
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v15, 0x0

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v4, v2, v12

    const/16 v17, 0x0

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleShadow:I

    move-object v13, v1

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5744
    :cond_6
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v23, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v6, v4, v12

    const/16 v25, 0x0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v26

    const/16 v27, 0x0

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleShadow:I

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5745
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v15, 0x0

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v4, v2, v12

    const/16 v17, 0x0

    new-array v4, v5, [Landroid/graphics/drawable/Drawable;

    iget-object v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v4, v12

    iget-object v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v4, v3

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    move-object v13, v1

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5746
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v6, v4, v12

    new-array v6, v5, [Landroid/graphics/drawable/Drawable;

    iget-object v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v6, v12

    iget-object v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v6, v3

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient1:I

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v24, v4

    move-object/from16 v26, v6

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5747
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v4, v2, v12

    new-array v4, v5, [Landroid/graphics/drawable/Drawable;

    iget-object v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v4, v12

    iget-object v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v4, v3

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient2:I

    move-object v13, v1

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5748
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v6, v4, v12

    new-array v6, v5, [Landroid/graphics/drawable/Drawable;

    iget-object v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v6, v12

    iget-object v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v6, v3

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient3:I

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v24, v4

    move-object/from16 v26, v6

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5749
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v4, v2, v12

    new-array v4, v5, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v4, v12

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v4, v3

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleSelected:I

    move-object v13, v1

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5750
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v6, v4, v12

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v26

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleShadow:I

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v24, v4

    move/from16 v28, v20

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5751
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v4, v2, v12

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object v13, v1

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5752
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v6, v4, v12

    const/16 v26, 0x0

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextIn:I

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5753
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v4, v2, v12

    const/16 v18, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextOut:I

    move-object v13, v1

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5754
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v6, v4, v12

    new-array v6, v3, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v12

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheck:I

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v24, v4

    move-object/from16 v26, v6

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5755
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v4, v2, v12

    new-array v4, v3, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v12

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckSelected:I

    move-object v13, v1

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5756
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v6, v4, v12

    new-array v6, v5, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckReadDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v12

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutHalfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v3

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckRead:I

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v24, v4

    move-object/from16 v26, v6

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5757
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v4, v2, v12

    new-array v4, v5, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckReadSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v12

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutHalfCheckSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v3

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckReadSelected:I

    move-object v13, v1

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5758
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v6, v4, v12

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v12

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaHalfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v3

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaSentCheck:I

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5759
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v4, v2, v12

    const/16 v18, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    move-object v13, v1

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5760
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v12

    const/16 v26, 0x0

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine:I

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5761
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v4, v2, v12

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyNameText:I

    move-object v13, v1

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5762
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v12

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyNameText:I

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5763
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v4, v2, v12

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyMessageText:I

    move-object v13, v1

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5764
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v12

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMessageText:I

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5765
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v4, v2, v12

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyMediaMessageSelectedText:I

    move-object v13, v1

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5766
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v12

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMediaMessageSelectedText:I

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5767
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v4, v2, v12

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTimeText:I

    move-object v13, v1

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5768
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v12

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeText:I

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5769
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v4, v2, v12

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTimeSelectedText:I

    move-object v13, v1

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5770
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v4, v3, v12

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeSelectedText:I

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v24, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5772
    :cond_7
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    move-object v1, v13

    move-object v8, v10

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5773
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    move-object v1, v13

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5774
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v1, v13

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5775
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    move-object v1, v13

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5778
    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_8

    .line 5779
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_8
    return-object v11
.end method

.method public insideBottomSheet()Z
    .locals 1

    .line 2414
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 3496
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 3499
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->hasScrollingBackground:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onBackPressed()Z
    .locals 1

    .line 3554
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->checkDiscard()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 3557
    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->cancelThemeApply(Z)V

    return v0
.end method

.method public onBottomSheetCreated()V
    .locals 4

    .line 3461
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBottomSheetCreated()V

    .line 3462
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3463
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    .line 3464
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3465
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOverlayNavBarColor(I)V

    :cond_0
    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    const/4 p1, 0x1

    .line 3507
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 4

    .line 3279
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3280
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->invalidateMotionBackground:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3281
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpaperSettedToUser:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3282
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 3283
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3285
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_3

    .line 3286
    :cond_2
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->setChangingWallpaper(Z)V

    .line 3288
    :cond_3
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 3303
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isWallpaperMotion()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    goto :goto_1

    .line 3289
    :cond_5
    :goto_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3290
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3291
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

    .line 3292
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    .line 3294
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3295
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3296
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->TAG:I

    .line 3298
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 3299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    .line 3300
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getWallpapers()V

    .line 3306
    :cond_6
    :goto_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 4

    .line 3311
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3312
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->invalidateMotionBackground:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3313
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpaperSettedToUser:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3314
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_0

    .line 3315
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3317
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    if-nez v0, :cond_2

    .line 3318
    sget-object v0, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda27;->INSTANCE:Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda27;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3321
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    .line 3322
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 3323
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3324
    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    .line 3326
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->applyChatServiceMessageColor()V

    .line 3327
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

    .line 3329
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3331
    :cond_6
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v0, :cond_8

    .line 3332
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3333
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3336
    :cond_8
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 3337
    invoke-direct {p0, v3}, Lorg/telegram/ui/ThemePreviewActivity;->checkBlur(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 3487
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 3488
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3489
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    .line 3491
    :cond_0
    sput-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->disallowChangeServiceMessageColor:Z

    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 3472
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 3473
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogsAdapter:Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;

    if-eqz v0, :cond_0

    .line 3474
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3476
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    if-eqz v0, :cond_1

    .line 3477
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3479
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 3480
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    .line 3482
    :cond_2
    sput-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->disallowChangeServiceMessageColor:Z

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 3512
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .locals 1

    .line 3450
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    if-nez p1, :cond_0

    .line 3452
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 3453
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-virtual {p1}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->applyChatServiceMessageColor()V

    .line 3454
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

    .line 3982
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->delegate:Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;

    return-void
.end method

.method public setDialogId(J)V
    .locals 2

    .line 516
    iput-wide p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 517
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->self:Z

    return-void
.end method

.method public setForceDark(ZZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 6443
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v0

    :cond_0
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 6444
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_3

    .line 6445
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 6448
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result p1

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_2
    move p1, v0

    .line 6449
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, p1, v0, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 6450
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 6451
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_3

    .line 6452
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setInitialModes(ZZF)V
    .locals 0

    .line 611
    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    .line 612
    iput-boolean p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    .line 613
    iput p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    return-void
.end method

.method public setOnSwitchDayNightDelegate(Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

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

    .line 3986
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    .line 3987
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v0, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v0, :cond_3

    .line 3988
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 3989
    iget-wide v1, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->patternId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 3990
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_2

    .line 3991
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 3992
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iget-wide v5, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->patternId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 3993
    iput-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3997
    :cond_2
    :goto_1
    iget p1, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->intensity:F

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    :cond_3
    return-void
.end method

.method public setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    iput-object p1, v0, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->parentProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method public toggleTheme()V
    .locals 17

    move-object/from16 v12, p0

    .line 6314
    iget-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    .line 6318
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->insideBottomSheet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    move-object v13, v0

    .line 6319
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 6320
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 6321
    iget-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 6322
    invoke-virtual {v13, v3}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 6323
    iget-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 6325
    new-instance v7, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v1, -0x1000000

    .line 6326
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6327
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 6329
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 6330
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v15, 0x2

    new-array v1, v15, [I

    .line 6332
    iget-object v2, v12, Lorg/telegram/ui/ThemePreviewActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    const/4 v2, 0x0

    .line 6333
    aget v2, v1, v2

    int-to-float v10, v2

    .line 6334
    aget v0, v1, v0

    int-to-float v11, v0

    .line 6335
    iget-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float v4, v10, v0

    .line 6336
    iget-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    add-float v5, v11, v0

    .line 6338
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v0, v1

    int-to-float v6, v0

    .line 6340
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v8, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 6341
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 6342
    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$41;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v15, v2

    move-object/from16 v2, v16

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/ThemePreviewActivity$41;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Paint;FF)V

    iput-object v15, v12, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightView:Landroid/view/View;

    .line 6360
    sget-object v0, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda15;->INSTANCE:Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda15;

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6361
    iput v14, v12, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewProgress:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 6362
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    .line 6363
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$42;

    invoke-direct {v1, v12}, Lorg/telegram/ui/ThemePreviewActivity$42;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6375
    iget-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$43;

    invoke-direct {v1, v12}, Lorg/telegram/ui/ThemePreviewActivity$43;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6388
    iget-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6389
    iget-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6390
    iget-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 6392
    iget-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6394
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda22;

    invoke-direct {v0, v12}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
