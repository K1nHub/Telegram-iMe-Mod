.class public Lorg/telegram/messenger/AndroidUtilities;
.super Ljava/lang/Object;
.source "AndroidUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/AndroidUtilities$IntColorCallback;,
        Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;,
        Lorg/telegram/messenger/AndroidUtilities$VcardItem;,
        Lorg/telegram/messenger/AndroidUtilities$VcardData;,
        Lorg/telegram/messenger/AndroidUtilities$LinkSpec;
    }
.end annotation


# static fields
.field public static BAD_CHARS_MESSAGE_LONG_PATTERN:Ljava/util/regex/Pattern; = null

.field public static BAD_CHARS_MESSAGE_PATTERN:Ljava/util/regex/Pattern; = null

.field public static BAD_CHARS_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final DARK_STATUS_BAR_OVERLAY:I = 0x33000000

.field public static final FLAG_TAG_ALL:I = 0xb

.field public static final FLAG_TAG_BOLD:I = 0x2

.field public static final FLAG_TAG_BR:I = 0x1

.field public static final FLAG_TAG_COLOR:I = 0x4

.field public static final FLAG_TAG_URL:I = 0x8

.field public static final LIGHT_STATUS_BAR_OVERLAY:I = 0xf000000

.field public static final REPLACING_TAG_TYPE_BOLD:I = 0x1

.field public static final REPLACING_TAG_TYPE_LINK:I = 0x0

.field public static final STICKERS_PLACEHOLDER_PACK_NAME:Ljava/lang/String; = "tg_placeholders_android"

.field public static final TYPEFACE_COURIER_NEW_BOLD:Ljava/lang/String; = "fonts/courier_new_bold.ttf"

.field public static final TYPEFACE_MERRIWEATHER_BOLD:Ljava/lang/String; = "fonts/mw_bold.ttf"

.field public static final TYPEFACE_ROBOTO_MEDIUM:Ljava/lang/String; = "fonts/rmedium.ttf"

.field public static final TYPEFACE_ROBOTO_MEDIUM_ITALIC:Ljava/lang/String; = "fonts/rmediumitalic.ttf"

.field public static final TYPEFACE_ROBOTO_MONO:Ljava/lang/String; = "fonts/rmono.ttf"

.field public static WEB_URL:Ljava/util/regex/Pattern;

.field public static accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private static accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private static adjustOwnerClassGuid:I

.field private static altFocusableClassGuid:I

.field private static bitmapRect:Landroid/graphics/RectF;

.field private static final callLock:Ljava/lang/Object;

.field private static callReceiver:Lorg/telegram/messenger/CallReceiver;

.field private static characters:[C

.field private static charactersMap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field public static density:F

.field public static displayMetrics:Landroid/util/DisplayMetrics;

.field public static displaySize:Landroid/graphics/Point;

.field private static documentIcons:[I

.field private static documentMediaIcons:[I

.field public static firstConfigurationWas:Z

.field private static generatingVideoPathFormat:Ljava/text/SimpleDateFormat;

.field private static hasCallPermissions:Z

.field public static incorrectDisplaySizeFix:Z

.field public static isInMultiwindow:Z

.field private static isSmallScreen:Ljava/lang/Boolean;

.field private static isTablet:Ljava/lang/Boolean;

.field public static leftBaseline:I

.field private static linksPattern:Ljava/util/regex/Pattern;

.field private static mAttachInfoField:Ljava/lang/reflect/Field;

.field private static mStableInsetsField:Ljava/lang/reflect/Field;

.field private static navigationBarColorAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/Window;",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field public static navigationBarHeight:I

.field public static final numbersSignatureArray:[Ljava/lang/String;

.field public static overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

.field public static photoSize:Ljava/lang/Integer;

.field private static prevOrientation:I

.field public static final rectTmp:Landroid/graphics/RectF;

.field public static final rectTmp2:Landroid/graphics/Rect;

.field public static roundMessageInset:I

.field public static roundMessageSize:I

.field private static roundPaint:Landroid/graphics/Paint;

.field public static roundPlayingMessageSize:I

.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static screenRefreshRate:F

.field public static screenRefreshTime:F

.field private static singleTagPatter:Ljava/util/regex/Pattern;

.field private static final smsLock:Ljava/lang/Object;

.field public static statusBarHeight:I

.field public static touchSlop:F

.field private static final typefaceCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static unregisterRunnable:Ljava/lang/Runnable;

.field private static uriParse:Ljava/util/regex/Pattern;

.field public static usingHardwareInput:Z

.field private static vibrator:Landroid/os/Vibrator;

.field private static waitingForCall:Z

.field private static waitingForSms:Z

.field private static wasTablet:Ljava/lang/Boolean;


# direct methods
.method public static synthetic $r8$lambda$0vZbVmlZY56kXQfeW5Vh_KwpKgY(Ljava/lang/Void;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->lambda$setWaitingForSms$7(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2xpS5Mzc28cvzifWClIxJwCLl1A(JLorg/telegram/ui/Cells/TextDetailSettingsCell;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lambda$showProxyAlert$12(JLorg/telegram/ui/Cells/TextDetailSettingsCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3anzhozEvqh3Fepic3JuPIphbXw(Lorg/telegram/messenger/Utilities$Callback;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lambda$makeGlobalBlurBitmap$19(Lorg/telegram/messenger/Utilities$Callback;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BWuLrPNofA3UKYafrf7ar-udLi4(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->lambda$formatSpannable$11(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$J0hzW9CVkVodMhZKO7wyVnwCTUk(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->lambda$makeGlobalBlurBitmap$20(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L2H9dRQfVKqQTwQ9tWjbWAXahdE(Lorg/telegram/messenger/AndroidUtilities$LinkSpec;Lorg/telegram/messenger/AndroidUtilities$LinkSpec;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lambda$pruneOverlaps$5(Lorg/telegram/messenger/AndroidUtilities$LinkSpec;Lorg/telegram/messenger/AndroidUtilities$LinkSpec;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LUBCYgLju9idp5WZEkuYseg7DCc(Landroid/widget/ImageView;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lambda$updateImageViewImageAnimated$18(Landroid/widget/ImageView;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LuMjOb9hVyGi8sKgfVR4DzLT4ls(Ljava/util/concurrent/CountDownLatch;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lambda$getBitmapFromSurface$3(Ljava/util/concurrent/CountDownLatch;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NrqYhOH3nz0A4vjLxW2TczZ6-G0(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->lambda$googleVoiceClientService_performAction$2(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OKEN8rVVAaV9Lv6LrFX3Sn7PVYQ(Ljava/lang/Runnable;Landroid/view/View;FLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/messenger/AndroidUtilities;->lambda$shakeViewSpring$9(Ljava/lang/Runnable;Landroid/view/View;FLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$QzRXRiLKb9fegd-VVXsWlk1kZqI(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->lambda$recycleBitmaps$1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RnJSJD80FoB-9V12DNe1hS6Py6o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lorg/telegram/messenger/AndroidUtilities;->lambda$showProxyAlert$15(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aMOfD2aj8XHhP7JnH0AqoIRZ4AA(Ljava/lang/CharSequence;II)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lambda$static$4(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iidNWxdg74xpRXaLGRKS0G4Sddo(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lambda$shakeView$8(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jBYNJ7aYvvPzxYLIfrdJtlVjX3I(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->lambda$formatSpannableSimple$10(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mTG1R2CfkTDQihjWp8g98iZ_lyk(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lambda$isMapsInstalled$6(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nL5aQPOlnYlAQEid78O-HTkSK3A(Lorg/telegram/ui/Cells/TextDetailSettingsCell;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lambda$showProxyAlert$13(Lorg/telegram/ui/Cells/TextDetailSettingsCell;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$qNw5wHuhIdr9tkHE5c21-dGE_CA(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->lambda$recycleBitmaps$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uG1HwIoHB1xLaD7KONzRbtZ7Ghs(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lambda$showProxyAlert$14(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xdIKQTEhB3qVoBA1mc2jxSMUSbg(Lorg/telegram/messenger/AndroidUtilities$IntColorCallback;Landroid/view/Window;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lambda$setNavigationBarColor$16(Lorg/telegram/messenger/AndroidUtilities$IntColorCallback;Landroid/view/Window;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y9XPHqlVgzpwbVMGWmaAtqRXw44(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/ui/Components/RecyclerListView;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lambda$scrollToFragmentRow$17(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 346
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->typefaceCache:Ljava/util/Hashtable;

    const/16 v0, -0xa

    .line 348
    sput v0, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    const/4 v0, 0x0

    .line 349
    sput-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->waitingForSms:Z

    .line 350
    sput-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->waitingForCall:Z

    .line 351
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->smsLock:Ljava/lang/Object;

    .line 352
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->callLock:Ljava/lang/Object;

    .line 354
    sput v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 355
    sput v0, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 357
    sput v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    .line 358
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    const/high16 v1, 0x42700000    # 60.0f

    .line 359
    sput v1, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v2, v1

    .line 360
    sput v2, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshTime:F

    const/4 v1, 0x0

    .line 365
    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    .line 366
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 371
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 372
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 373
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 378
    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->wasTablet:Ljava/lang/Boolean;

    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen:Ljava/lang/Boolean;

    .line 379
    sput v0, Lorg/telegram/messenger/AndroidUtilities;->adjustOwnerClassGuid:I

    .line 380
    sput v0, Lorg/telegram/messenger/AndroidUtilities;->altFocusableClassGuid:I

    .line 385
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 386
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    .line 388
    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->WEB_URL:Ljava/util/regex/Pattern;

    .line 389
    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->BAD_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 390
    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->BAD_CHARS_MESSAGE_PATTERN:Ljava/util/regex/Pattern;

    .line 391
    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->BAD_CHARS_MESSAGE_LONG_PATTERN:Ljava/util/regex/Pattern;

    .line 392
    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->singleTagPatter:Ljava/util/regex/Pattern;

    :try_start_0
    const-string v2, "[\u2500-\u25ff]"

    .line 397
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->BAD_CHARS_PATTERN:Ljava/util/regex/Pattern;

    const-string v2, "[\u0300-\u036f\u2066-\u2067]+"

    .line 398
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->BAD_CHARS_MESSAGE_LONG_PATTERN:Ljava/util/regex/Pattern;

    const-string v2, "[\u2066-\u2067]+"

    .line 399
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->BAD_CHARS_MESSAGE_PATTERN:Ljava/util/regex/Pattern;

    const-string v2, "((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))"

    .line 400
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]){0,1}\\.)+[a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "((?:(http|https|Http|Https|ton|tg):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")(?:\\:\\d{1,5})?)(\\/(?:(?:["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->WEB_URL:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 420
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 425
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x50

    goto :goto_1

    :cond_0
    const/16 v2, 0x48

    :goto_1
    sput v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    .line 426
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 429
    sget v3, Lorg/telegram/messenger/R$drawable;->media_doc_blue:I

    aput v3, v2, v0

    sget v3, Lorg/telegram/messenger/R$drawable;->media_doc_green:I

    const/4 v4, 0x1

    aput v3, v2, v4

    sget v3, Lorg/telegram/messenger/R$drawable;->media_doc_red:I

    const/4 v5, 0x2

    aput v3, v2, v5

    sget v3, Lorg/telegram/messenger/R$drawable;->media_doc_yellow:I

    const/4 v6, 0x3

    aput v3, v2, v6

    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->documentIcons:[I

    new-array v1, v1, [I

    .line 436
    sget v2, Lorg/telegram/messenger/R$drawable;->media_doc_blue_b:I

    aput v2, v1, v0

    sget v2, Lorg/telegram/messenger/R$drawable;->media_doc_green_b:I

    aput v2, v1, v4

    sget v2, Lorg/telegram/messenger/R$drawable;->media_doc_red_b:I

    aput v2, v1, v5

    sget v2, Lorg/telegram/messenger/R$drawable;->media_doc_yellow_b:I

    aput v2, v1, v6

    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->documentMediaIcons:[I

    .line 903
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda4;

    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 2542
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    move v0, v4

    :cond_1
    sput-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->hasCallPermissions:Z

    const-string v1, ""

    const-string v2, "K"

    const-string v3, "M"

    const-string v4, "G"

    const-string v5, "T"

    const-string v6, "P"

    .line 3510
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->numbersSignatureArray:[Ljava/lang/String;

    const/16 v0, 0x264

    new-array v0, v0, [C

    .line 4590
    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->characters:[C

    return-void

    nop

    :array_0
    .array-data 2
        0xa0s
        0x20s
        0x21s
        0x22s
        0x23s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3fs
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5fs
        0x7bs
        0x7ds
        0xa1s
        0xa7s
        0xabs
        0xb6s
        0xb7s
        0xbbs
        0xbfs
        0x37es
        0x387s
        0x55as
        0x55bs
        0x55cs
        0x55ds
        0x55es
        0x55fs
        0x589s
        0x58as
        0x5bes
        0x5c0s
        0x5c3s
        0x5c6s
        0x5f3s
        0x5f4s
        0x609s
        0x60as
        0x60cs
        0x60ds
        0x61bs
        0x61es
        0x61fs
        0x66as
        0x66bs
        0x66cs
        0x66ds
        0x6d4s
        0x700s
        0x701s
        0x702s
        0x703s
        0x704s
        0x705s
        0x706s
        0x707s
        0x708s
        0x709s
        0x70as
        0x70bs
        0x70cs
        0x70ds
        0x7f7s
        0x7f8s
        0x7f9s
        0x830s
        0x831s
        0x832s
        0x833s
        0x834s
        0x835s
        0x836s
        0x837s
        0x838s
        0x839s
        0x83as
        0x83bs
        0x83cs
        0x83ds
        0x83es
        0x85es
        0x964s
        0x965s
        0x970s
        0x9fds
        0xa76s
        0xaf0s
        0xc77s
        0xc84s
        0xdf4s
        0xe4fs
        0xe5as
        0xe5bs
        0xf04s
        0xf05s
        0xf06s
        0xf07s
        0xf08s
        0xf09s
        0xf0as
        0xf0bs
        0xf0cs
        0xf0ds
        0xf0es
        0xf0fs
        0xf10s
        0xf11s
        0xf12s
        0xf14s
        0xf3as
        0xf3bs
        0xf3cs
        0xf3ds
        0xf85s
        0xfd0s
        0xfd1s
        0xfd2s
        0xfd3s
        0xfd4s
        0xfd9s
        0xfdas
        0x104as
        0x104bs
        0x104cs
        0x104ds
        0x104es
        0x104fs
        0x10fbs
        0x1360s
        0x1361s
        0x1362s
        0x1363s
        0x1364s
        0x1365s
        0x1366s
        0x1367s
        0x1368s
        0x1400s
        0x166es
        0x169bs
        0x169cs
        0x16ebs
        0x16ecs
        0x16eds
        0x1735s
        0x1736s
        0x17d4s
        0x17d5s
        0x17d6s
        0x17d8s
        0x17d9s
        0x17das
        0x1800s
        0x1801s
        0x1802s
        0x1803s
        0x1804s
        0x1805s
        0x1806s
        0x1807s
        0x1808s
        0x1809s
        0x180as
        0x1944s
        0x1945s
        0x1a1es
        0x1a1fs
        0x1aa0s
        0x1aa1s
        0x1aa2s
        0x1aa3s
        0x1aa4s
        0x1aa5s
        0x1aa6s
        0x1aa8s
        0x1aa9s
        0x1aaas
        0x1aabs
        0x1aacs
        0x1aads
        0x1b5as
        0x1b5bs
        0x1b5cs
        0x1b5ds
        0x1b5es
        0x1b5fs
        0x1b60s
        0x1bfcs
        0x1bfds
        0x1bfes
        0x1bffs
        0x1c3bs
        0x1c3cs
        0x1c3ds
        0x1c3es
        0x1c3fs
        0x1c7es
        0x1c7fs
        0x1cc0s
        0x1cc1s
        0x1cc2s
        0x1cc3s
        0x1cc4s
        0x1cc5s
        0x1cc6s
        0x1cc7s
        0x1cd3s
        0x2010s
        0x2011s
        0x2012s
        0x2013s
        0x2014s
        0x2015s
        0x2016s
        0x2017s
        0x2018s
        0x2019s
        0x201as
        0x201bs
        0x201cs
        0x201ds
        0x201es
        0x201fs
        0x2020s
        0x2021s
        0x2022s
        0x2023s
        0x2024s
        0x2025s
        0x2026s
        0x2027s
        0x2030s
        0x2031s
        0x2032s
        0x2033s
        0x2034s
        0x2035s
        0x2036s
        0x2037s
        0x2038s
        0x2039s
        0x203as
        0x203bs
        0x203cs
        0x203ds
        0x203es
        0x203fs
        0x2040s
        0x2041s
        0x2042s
        0x2043s
        0x2045s
        0x2046s
        0x2047s
        0x2048s
        0x2049s
        0x204as
        0x204bs
        0x204cs
        0x204ds
        0x204es
        0x204fs
        0x2050s
        0x2051s
        0x2053s
        0x2054s
        0x2055s
        0x2056s
        0x2057s
        0x2058s
        0x2059s
        0x205as
        0x205bs
        0x205cs
        0x205ds
        0x205es
        0x207ds
        0x207es
        0x208ds
        0x208es
        0x2308s
        0x2309s
        0x230as
        0x230bs
        0x2329s
        0x232as
        0x2768s
        0x2769s
        0x276as
        0x276bs
        0x276cs
        0x276ds
        0x276es
        0x276fs
        0x2770s
        0x2771s
        0x2772s
        0x2773s
        0x2774s
        0x2775s
        0x27c5s
        0x27c6s
        0x27e6s
        0x27e7s
        0x27e8s
        0x27e9s
        0x27eas
        0x27ebs
        0x27ecs
        0x27eds
        0x27ees
        0x27efs
        0x2983s
        0x2984s
        0x2985s
        0x2986s
        0x2987s
        0x2988s
        0x2989s
        0x298as
        0x298bs
        0x298cs
        0x298ds
        0x298es
        0x298fs
        0x2990s
        0x2991s
        0x2992s
        0x2993s
        0x2994s
        0x2995s
        0x2996s
        0x2997s
        0x2998s
        0x29d8s
        0x29d9s
        0x29das
        0x29dbs
        0x29fcs
        0x29fds
        0x2cf9s
        0x2cfas
        0x2cfbs
        0x2cfcs
        0x2cfes
        0x2cffs
        0x2d70s
        0x2e00s
        0x2e01s
        0x2e02s
        0x2e03s
        0x2e04s
        0x2e05s
        0x2e06s
        0x2e07s
        0x2e08s
        0x2e09s
        0x2e0as
        0x2e0bs
        0x2e0cs
        0x2e0ds
        0x2e0es
        0x2e0fs
        0x2e10s
        0x2e11s
        0x2e12s
        0x2e13s
        0x2e14s
        0x2e15s
        0x2e16s
        0x2e17s
        0x2e18s
        0x2e19s
        0x2e1as
        0x2e1bs
        0x2e1cs
        0x2e1ds
        0x2e1es
        0x2e1fs
        0x2e20s
        0x2e21s
        0x2e22s
        0x2e23s
        0x2e24s
        0x2e25s
        0x2e26s
        0x2e27s
        0x2e28s
        0x2e29s
        0x2e2as
        0x2e2bs
        0x2e2cs
        0x2e2ds
        0x2e2es
        0x2e30s
        0x2e31s
        0x2e32s
        0x2e33s
        0x2e34s
        0x2e35s
        0x2e36s
        0x2e37s
        0x2e38s
        0x2e39s
        0x2e3as
        0x2e3bs
        0x2e3cs
        0x2e3ds
        0x2e3es
        0x2e3fs
        0x2e40s
        0x2e41s
        0x2e42s
        0x2e43s
        0x2e44s
        0x2e45s
        0x2e46s
        0x2e47s
        0x2e48s
        0x2e49s
        0x2e4as
        0x2e4bs
        0x2e4cs
        0x2e4ds
        0x2e4es
        0x2e4fs
        0x3001s
        0x3002s
        0x3003s
        0x3008s
        0x3009s
        0x300as
        0x300bs
        0x300cs
        0x300ds
        0x300es
        0x300fs
        0x3010s
        0x3011s
        0x3014s
        0x3015s
        0x3016s
        0x3017s
        0x3018s
        0x3019s
        0x301as
        0x301bs
        0x301cs
        0x301ds
        0x301es
        0x301fs
        0x3030s
        0x303ds
        0x30a0s
        0x30fbs
        -0x5b02s
        -0x5b01s
        -0x59f3s
        -0x59f2s
        -0x59f1s
        -0x598ds
        -0x5982s
        -0x590es
        -0x590ds
        -0x590cs
        -0x590bs
        -0x590as
        -0x5909s
        -0x578cs
        -0x578bs
        -0x578as
        -0x5789s
        -0x5732s
        -0x5731s
        -0x5708s
        -0x5707s
        -0x5706s
        -0x5704s
        -0x56d2s
        -0x56d1s
        -0x56a1s
        -0x563fs
        -0x563es
        -0x563ds
        -0x563cs
        -0x563bs
        -0x563as
        -0x5639s
        -0x5638s
        -0x5637s
        -0x5636s
        -0x5635s
        -0x5634s
        -0x5633s
        -0x5622s
        -0x5621s
        -0x55a4s
        -0x55a3s
        -0x55a2s
        -0x55a1s
        -0x5522s
        -0x5521s
        -0x5510s
        -0x550fs
        -0x5415s
        -0x2c2s
        -0x2c1s
        -0x1f0s
        -0x1efs
        -0x1ees
        -0x1eds
        -0x1ecs
        -0x1ebs
        -0x1eas
        -0x1e9s
        -0x1e8s
        -0x1e7s
        -0x1d0s
        -0x1cfs
        -0x1ces
        -0x1cds
        -0x1ccs
        -0x1cbs
        -0x1cas
        -0x1c9s
        -0x1c8s
        -0x1c7s
        -0x1c6s
        -0x1c5s
        -0x1c4s
        -0x1c3s
        -0x1c2s
        -0x1c1s
        -0x1c0s
        -0x1bfs
        -0x1bes
        -0x1bds
        -0x1bcs
        -0x1bbs
        -0x1bas
        -0x1b9s
        -0x1b8s
        -0x1b7s
        -0x1b6s
        -0x1b5s
        -0x1b4s
        -0x1b3s
        -0x1b2s
        -0x1b1s
        -0x1b0s
        -0x1afs
        -0x1aes
        -0x1acs
        -0x1abs
        -0x1aas
        -0x1a9s
        -0x1a8s
        -0x1a7s
        -0x1a6s
        -0x1a5s
        -0x1a4s
        -0x1a3s
        -0x1a2s
        -0x1a1s
        -0x1a0s
        -0x19fs
        -0x19ds
        -0x198s
        -0x196s
        -0x195s
        -0xffs
        -0xfes
        -0xfds
        -0xfbs
        -0xfas
        -0xf9s
        -0xf8s
        -0xf7s
        -0xf6s
        -0xf4s
        -0xf3s
        -0xf2s
        -0xf1s
        -0xe6s
        -0xe5s
        -0xe1s
        -0xe0s
        -0xc5s
        -0xc4s
        -0xc3s
        -0xc1s
        -0xa5s
        -0xa3s
        -0xa1s
        -0xa0s
        -0x9fs
        -0x9es
        -0x9ds
        -0x9cs
        -0x9bs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSBtoRGB(FFF)I
    .locals 7

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x437f0000    # 255.0f

    if-nez v0, :cond_0

    mul-float/2addr p2, v3

    add-float/2addr p2, v2

    float-to-int v1, p2

    goto :goto_0

    :cond_0
    float-to-double v4, p0

    .line 4328
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v0, v4

    sub-float/2addr p0, v0

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr p0, v0

    float-to-double v4, p0

    .line 4329
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v0, v4

    sub-float v0, p0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, p1

    mul-float/2addr v5, p2

    mul-float v6, p1, v0

    sub-float v6, v4, v6

    mul-float/2addr v6, p2

    sub-float v0, v4, v0

    mul-float/2addr p1, v0

    sub-float/2addr v4, p1

    mul-float/2addr v4, p2

    float-to-int p0, p0

    if-eqz p0, :cond_6

    const/4 p1, 0x1

    if-eq p0, p1, :cond_5

    const/4 p1, 0x2

    if-eq p0, p1, :cond_4

    const/4 p1, 0x3

    if-eq p0, p1, :cond_3

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1

    :goto_0
    move p0, v1

    move p1, p0

    goto :goto_3

    :cond_1
    mul-float/2addr p2, v3

    add-float/2addr p2, v2

    float-to-int v1, p2

    mul-float/2addr v5, v3

    add-float/2addr v5, v2

    float-to-int p0, v5

    mul-float/2addr v6, v3

    add-float/2addr v6, v2

    float-to-int p1, v6

    goto :goto_3

    :cond_2
    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    float-to-int v1, v4

    mul-float/2addr v5, v3

    add-float/2addr v5, v2

    float-to-int p0, v5

    goto :goto_1

    :cond_3
    mul-float/2addr v5, v3

    add-float/2addr v5, v2

    float-to-int v1, v5

    mul-float/2addr v6, v3

    add-float/2addr v6, v2

    float-to-int p0, v6

    :goto_1
    mul-float/2addr p2, v3

    add-float/2addr p2, v2

    float-to-int p1, p2

    goto :goto_3

    :cond_4
    mul-float/2addr v5, v3

    add-float/2addr v5, v2

    float-to-int v1, v5

    mul-float/2addr p2, v3

    add-float/2addr p2, v2

    float-to-int p0, p2

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    float-to-int p1, v4

    goto :goto_3

    :cond_5
    mul-float/2addr v6, v3

    add-float/2addr v6, v2

    float-to-int v1, v6

    mul-float/2addr p2, v3

    add-float/2addr p2, v2

    float-to-int p0, p2

    goto :goto_2

    :cond_6
    mul-float/2addr p2, v3

    add-float/2addr p2, v2

    float-to-int v1, p2

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    float-to-int p0, v4

    :goto_2
    mul-float/2addr v5, v3

    add-float/2addr v5, v2

    float-to-int p1, v5

    :goto_3
    const/high16 p2, -0x1000000

    and-int/lit16 v0, v1, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method public static RGBtoHSB(III)[F
    .locals 8

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 4284
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le p2, v1, :cond_0

    move v1, p2

    .line 4288
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge p2, v2, :cond_1

    move v2, p2

    :cond_1
    int-to-float v3, v1

    const/high16 v4, 0x437f0000    # 255.0f

    div-float v4, v3, v4

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    sub-int v6, v1, v2

    int-to-float v6, v6

    div-float/2addr v6, v3

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_0
    cmpl-float v3, v6, v5

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    sub-int v3, v1, p0

    int-to-float v3, v3

    sub-int v2, v1, v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    sub-int v7, v1, p1

    int-to-float v7, v7

    div-float/2addr v7, v2

    sub-int p2, v1, p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    if-ne p0, v1, :cond_4

    sub-float/2addr p2, v7

    goto :goto_1

    :cond_4
    if-ne p1, v1, :cond_5

    const/high16 p0, 0x40000000    # 2.0f

    add-float/2addr v3, p0

    sub-float p2, v3, p2

    goto :goto_1

    :cond_5
    const/high16 p0, 0x40800000    # 4.0f

    add-float/2addr v7, p0

    sub-float p2, v7, v3

    :goto_1
    const/high16 p0, 0x40c00000    # 6.0f

    div-float/2addr p2, p0

    cmpg-float p0, p2, v5

    if-gez p0, :cond_6

    const/high16 p0, 0x3f800000    # 1.0f

    add-float v5, p2, p0

    goto :goto_2

    :cond_6
    move v5, p2

    :goto_2
    const/4 p0, 0x0

    aput v5, v0, p0

    const/4 p0, 0x1

    aput v6, v0, p0

    const/4 p0, 0x2

    aput v4, v0, p0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .line 217
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->navigationBarColorAnimators:Ljava/util/HashMap;

    return-object v0
.end method

.method public static addLinks(Landroid/text/Spannable;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 914
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->addLinks(Landroid/text/Spannable;IZ)Z

    move-result p0

    return p0
.end method

.method public static addLinks(Landroid/text/Spannable;IZ)Z
    .locals 1

    const/4 v0, 0x1

    .line 918
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->addLinks(Landroid/text/Spannable;IZZ)Z

    move-result p0

    return p0
.end method

.method public static addLinks(Landroid/text/Spannable;IZZ)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    .line 922
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->containsUnsupportedCharacters(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 925
    :cond_0
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 926
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_3

    .line 927
    aget-object v4, v1, v2

    .line 928
    instance-of v5, v4, Lorg/telegram/ui/Components/URLSpanReplacement;

    if-eqz v5, :cond_1

    if-eqz p3, :cond_2

    .line 929
    :cond_1
    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 932
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_4

    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    .line 934
    invoke-static {p0, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    :cond_4
    and-int/2addr p1, v3

    if-eqz p1, :cond_5

    .line 937
    sget-object v6, Lorg/telegram/messenger/LinkifyPort;->WEB_URL:Ljava/util/regex/Pattern;

    const-string p1, "http://"

    const-string v2, "https://"

    const-string/jumbo v4, "tg://"

    filled-new-array {p1, v2, v4}, [Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    move-object v4, v1

    move-object v5, p0

    move v9, p2

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/AndroidUtilities;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Z)V

    .line 939
    :cond_5
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->pruneOverlaps(Ljava/util/ArrayList;)V

    .line 940
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_6

    return v0

    .line 943
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, v0

    :goto_1
    if-ge p2, p1, :cond_b

    .line 944
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;

    .line 945
    iget v4, v2, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->start:I

    iget v5, v2, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->end:I

    const-class v6, Landroid/text/style/URLSpan;

    invoke-interface {p0, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/URLSpan;

    if-eqz v4, :cond_9

    .line 946
    array-length v5, v4

    if-lez v5, :cond_9

    move v5, v0

    .line 947
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_9

    .line 948
    aget-object v6, v4, v5

    .line 949
    invoke-interface {p0, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 951
    instance-of v7, v6, Lorg/telegram/ui/Components/URLSpanReplacement;

    if-eqz v7, :cond_7

    if-eqz p3, :cond_8

    .line 952
    :cond_7
    invoke-interface {p0, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 956
    :cond_9
    iget-object v4, v2, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->url:Ljava/lang/String;

    if-eqz v4, :cond_a

    const-string/jumbo v5, "\u2215|\u2044|%E2%81%84|%E2%88%95"

    const-string v6, "/"

    .line 958
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 960
    :cond_a
    new-instance v5, Landroid/text/style/URLSpan;

    invoke-direct {v5, v4}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->start:I

    iget v2, v2, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->end:I

    const/16 v6, 0x21

    invoke-interface {p0, v5, v4, v2, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_b
    return v3

    :cond_c
    :goto_3
    return v0
.end method

.method public static addMediaToGallery(Ljava/io/File;)V
    .locals 2

    .line 3108
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 3113
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3114
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3115
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3117
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static addMediaToGallery(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 3103
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3104
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/io/File;)V

    return-void
.end method

.method public static addToClipboard(Ljava/lang/CharSequence;)Z
    .locals 4

    .line 3082
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 3084
    instance-of v1, p0, Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const-string v3, "label"

    if-eqz v1, :cond_0

    .line 3085
    :try_start_1
    move-object v1, p0

    check-cast v1, Landroid/text/Spanned;

    invoke-static {v1}, Lorg/telegram/messenger/utils/CustomHtml;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, p0, v1}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object p0

    .line 3086
    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return v2

    .line 3089
    :cond_0
    invoke-static {v3, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    .line 3090
    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 3094
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    .line 1215
    new-instance v0, Landroid/graphics/ColorMatrix;

    const/16 v1, 0x14

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v1, v2

    const/4 v2, 0x2

    aput v4, v1, v2

    const/4 v2, 0x3

    aput v4, v1, v2

    const/4 v2, 0x4

    aput p1, v1, v2

    const/4 v2, 0x5

    aput v4, v1, v2

    const/4 v2, 0x6

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v4, v1, v2

    const/16 v2, 0x8

    aput v4, v1, v2

    const/16 v2, 0x9

    aput p1, v1, v2

    const/16 v2, 0xa

    aput v4, v1, v2

    const/16 v2, 0xb

    aput v4, v1, v2

    const/16 v2, 0xc

    aput v3, v1, v2

    const/16 v2, 0xd

    aput v4, v1, v2

    const/16 v2, 0xe

    aput p1, v1, v2

    const/16 p1, 0xf

    aput v4, v1, p1

    const/16 p1, 0x10

    aput v4, v1, p1

    const/16 p1, 0x11

    aput v4, v1, p1

    const/16 p1, 0x12

    aput v3, v1, p1

    const/16 p1, 0x13

    aput v4, v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v0}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public static adjustHueColorMatrix(Landroid/graphics/ColorMatrix;F)V
    .locals 12

    const/high16 v0, 0x43340000    # 180.0f

    .line 1224
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->cleanValue(FF)F

    move-result p1

    div-float/2addr p1, v0

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    float-to-double v1, p1

    .line 1228
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p1, v3

    .line 1229
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3e5a1cac    # 0.213f

    const v3, 0x3f370a3d    # 0.715f

    const v4, 0x3d9374bc    # 0.072f

    const/16 v5, 0x19

    new-array v5, v5, [F

    const/4 v6, 0x0

    const v7, 0x3f4978d5    # 0.787f

    mul-float/2addr v7, p1

    add-float/2addr v7, v2

    const v8, -0x41a5e354    # -0.213f

    mul-float v9, v1, v8

    add-float/2addr v7, v9

    aput v7, v5, v6

    const/4 v6, 0x1

    const v7, -0x40c8f5c3    # -0.715f

    mul-float v9, p1, v7

    add-float/2addr v9, v3

    mul-float/2addr v7, v1

    add-float/2addr v7, v9

    aput v7, v5, v6

    const/4 v6, 0x2

    const v7, -0x426c8b44    # -0.072f

    mul-float/2addr v7, p1

    add-float/2addr v7, v4

    const v10, 0x3f6d9168    # 0.928f

    mul-float v11, v1, v10

    add-float/2addr v11, v7

    aput v11, v5, v6

    const/4 v6, 0x3

    aput v0, v5, v6

    const/4 v6, 0x4

    aput v0, v5, v6

    const/4 v6, 0x5

    mul-float/2addr v8, p1

    add-float/2addr v8, v2

    const v2, 0x3e126e98    # 0.143f

    mul-float/2addr v2, v1

    add-float/2addr v2, v8

    aput v2, v5, v6

    const/4 v2, 0x6

    const v6, 0x3e91eb86    # 0.28500003f

    mul-float/2addr v6, p1

    add-float/2addr v6, v3

    const v11, 0x3e0f5c29    # 0.14f

    mul-float/2addr v11, v1

    add-float/2addr v6, v11

    aput v6, v5, v2

    const/4 v2, 0x7

    const v6, -0x416f1aa0    # -0.283f

    mul-float/2addr v6, v1

    add-float/2addr v7, v6

    aput v7, v5, v2

    const/16 v2, 0x8

    aput v0, v5, v2

    const/16 v2, 0x9

    aput v0, v5, v2

    const/16 v2, 0xa

    const v6, -0x40b6872b    # -0.787f

    mul-float/2addr v6, v1

    add-float/2addr v8, v6

    aput v8, v5, v2

    const/16 v2, 0xb

    mul-float/2addr v3, v1

    add-float/2addr v9, v3

    aput v9, v5, v2

    const/16 v2, 0xc

    mul-float/2addr p1, v10

    add-float/2addr p1, v4

    mul-float/2addr v1, v4

    add-float/2addr p1, v1

    aput p1, v5, v2

    const/16 p1, 0xd

    aput v0, v5, p1

    const/16 p1, 0xe

    aput v0, v5, p1

    const/16 p1, 0xf

    aput v0, v5, p1

    const/16 p1, 0x10

    aput v0, v5, p1

    const/16 p1, 0x11

    aput v0, v5, p1

    const/16 p1, 0x12

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v5, p1

    const/16 p1, 0x13

    aput v0, v5, p1

    const/16 p1, 0x14

    aput v0, v5, p1

    const/16 p1, 0x15

    aput v0, v5, p1

    const/16 p1, 0x16

    aput v0, v5, p1

    const/16 p1, 0x17

    aput v0, v5, p1

    const/16 p1, 0x18

    aput v1, v5, p1

    .line 1240
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1, v5}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, p1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public static adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 1202
    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v2, 0x14

    new-array v2, v2, [F

    const/4 v3, 0x0

    const v4, 0x3e9e00d2    # 0.3086f

    sub-float v5, v0, p1

    mul-float/2addr v4, v5

    add-float v6, v4, p1

    aput v6, v2, v3

    const/4 v3, 0x1

    const v6, 0x3f1c01a3    # 0.6094f

    mul-float/2addr v6, v5

    aput v6, v2, v3

    const/4 v3, 0x2

    const v7, 0x3da7ef9e    # 0.082f

    mul-float/2addr v5, v7

    aput v5, v2, v3

    const/4 v3, 0x3

    const/4 v7, 0x0

    aput v7, v2, v3

    const/4 v3, 0x4

    aput v7, v2, v3

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    add-float v8, v6, p1

    aput v8, v2, v3

    const/4 v3, 0x7

    aput v5, v2, v3

    const/16 v3, 0x8

    aput v7, v2, v3

    const/16 v3, 0x9

    aput v7, v2, v3

    const/16 v3, 0xa

    aput v4, v2, v3

    const/16 v3, 0xb

    aput v6, v2, v3

    const/16 v3, 0xc

    add-float/2addr v5, p1

    aput v5, v2, v3

    const/16 p1, 0xd

    aput v7, v2, p1

    const/16 p1, 0xe

    aput v7, v2, p1

    const/16 p1, 0xf

    aput v7, v2, p1

    const/16 p1, 0x10

    aput v7, v2, p1

    const/16 p1, 0x11

    aput v7, v2, p1

    const/16 p1, 0x12

    aput v0, v2, p1

    const/16 p1, 0x13

    aput v7, v2, p1

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public static allGlobalViews()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5161
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 5162
    invoke-static {}, Landroid/view/inspector/WindowInspector;->getGlobalWindowViews()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v2, 0x11

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_2

    const-string v1, "android.view.WindowManagerGlobal"

    .line 5164
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    new-array v5, v4, [Ljava/lang/Class;

    .line 5165
    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "getViewRootNames"

    new-array v6, v4, [Ljava/lang/Class;

    .line 5167
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "getRootView"

    new-array v7, v3, [Ljava/lang/Class;

    .line 5168
    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 5169
    invoke-virtual {v5, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 5171
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5172
    array-length v7, v5

    move v8, v4

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v5, v8

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v9, v10, v4

    .line 5173
    invoke-virtual {v1, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return-object v6

    :cond_2
    const/16 v5, 0xe

    if-lt v1, v5, :cond_4

    if-ge v1, v2, :cond_4

    const-string v1, "android.view.WindowManagerImpl"

    .line 5177
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDefault"

    new-array v5, v4, [Ljava/lang/Class;

    .line 5178
    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "mViews"

    .line 5180
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 5181
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5182
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 5184
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_3

    .line 5185
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1

    .line 5186
    :cond_3
    instance-of v3, v3, [Landroid/view/View;

    if-eqz v3, :cond_4

    .line 5187
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/View;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "allGlobalViews()"

    .line 5191
    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-object v0
.end method

.method public static allowScreenCapture()Z
    .locals 1

    .line 4566
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static appCenterLog(Ljava/lang/Throwable;)V
    .locals 0

    .line 3073
    invoke-static {p0}, Lorg/telegram/messenger/ApplicationLoader;->appCenterLog(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static calcAuthKeyHash([B)[B
    .locals 3

    .line 3599
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object p0

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 3601
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static calcBitmapColor(Landroid/graphics/Bitmap;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 1059
    :try_start_0
    invoke-static {p0, v1, v1, v1}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1061
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    if-eq p0, v1, :cond_1

    .line 1063
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v2

    :catch_0
    move-exception p0

    .line 1068
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    return v0
.end method

.method public static calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I
    .locals 19

    move-object/from16 v0, p0

    .line 1074
    instance-of v1, v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v1, :cond_0

    .line 1075
    check-cast v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    .line 1076
    invoke-virtual {v0}, Lorg/telegram/ui/ChatBackgroundDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I

    move-result-object v0

    return-object v0

    :cond_0
    const/high16 v1, -0x1000000

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1081
    :try_start_0
    instance-of v7, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_1

    .line 1082
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1083
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->calcBitmapColor(Landroid/graphics/Bitmap;)I

    move-result v1

    goto :goto_1

    .line 1084
    :cond_1
    instance-of v7, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v7, :cond_2

    .line 1085
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    goto :goto_1

    .line 1086
    :cond_2
    instance-of v7, v0, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    if-eqz v7, :cond_4

    .line 1087
    check-cast v0, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->getColorsList()[I

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1089
    array-length v7, v0

    if-le v7, v5, :cond_3

    .line 1090
    aget v7, v0, v6

    aget v0, v0, v5

    invoke-static {v7, v0}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v0

    goto :goto_0

    .line 1091
    :cond_3
    array-length v7, v0

    if-lez v7, :cond_5

    .line 1092
    aget v0, v0, v6

    :goto_0
    move v1, v0

    goto :goto_1

    .line 1095
    :cond_4
    instance-of v0, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v0, :cond_5

    const/16 v0, 0x2d

    .line 1096
    invoke-static {v0, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    aput v0, v2, v4

    aput v0, v2, v6

    const/16 v0, 0x3d

    .line 1097
    invoke-static {v0, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    aput v0, v2, v3

    aput v0, v2, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 1101
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    shr-int/lit8 v0, v1, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v1, v1, 0xff

    .line 1104
    invoke-static {v0, v7, v1}, Lorg/telegram/messenger/AndroidUtilities;->rgbToHsv(III)[D

    move-result-object v0

    .line 1105
    aget-wide v7, v0, v5

    const-wide v9, 0x3fa999999999999aL    # 0.05

    add-double/2addr v7, v9

    const-wide v9, 0x3fb999999999999aL    # 0.1

    aget-wide v11, v0, v5

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double v11, v13, v11

    mul-double/2addr v11, v9

    add-double/2addr v7, v11

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    aput-wide v7, v0, v5

    .line 1106
    aget-wide v7, v0, v4

    const-wide v9, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v7, v9

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v15

    .line 1107
    aget-wide v11, v0, v6

    aget-wide v13, v0, v5

    invoke-static/range {v11 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->hsvToRgb(DDD)[I

    move-result-object v1

    .line 1108
    aget v7, v1, v6

    aget v8, v1, v5

    aget v11, v1, v4

    const/16 v12, 0x66

    invoke-static {v12, v7, v8, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v2, v6

    .line 1109
    aget v7, v1, v6

    aget v8, v1, v5

    aget v1, v1, v4

    const/16 v11, 0x88

    invoke-static {v11, v7, v8, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v2, v5

    .line 1111
    aget-wide v7, v0, v4

    const-wide v13, 0x3fe70a3d70a3d70aL    # 0.72

    mul-double/2addr v7, v13

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v17

    .line 1112
    aget-wide v13, v0, v6

    aget-wide v15, v0, v5

    invoke-static/range {v13 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->hsvToRgb(DDD)[I

    move-result-object v0

    .line 1113
    aget v1, v0, v6

    aget v7, v0, v5

    aget v8, v0, v4

    invoke-static {v12, v1, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v2, v4

    .line 1114
    aget v1, v0, v6

    aget v5, v0, v5

    aget v0, v0, v4

    invoke-static {v11, v1, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    aput v0, v2, v3

    return-object v2
.end method

.method public static cancelRunOnUIThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 2449
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 2452
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static cascade(FFFF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float v1, v0, p2

    mul-float/2addr v1, p3

    div-float/2addr p1, p2

    sub-float p2, v0, v1

    mul-float/2addr p1, p2

    sub-float/2addr p0, p1

    div-float/2addr p0, v1

    const/4 p1, 0x0

    .line 4547
    invoke-static {p0, p1, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p0

    return p0
.end method

.method public static charSequenceContains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 2707
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->charSequenceIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static charSequenceIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1

    const/4 v0, 0x0

    .line 2703
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->charSequenceIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public static charSequenceIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 4

    .line 2688
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 2690
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2691
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int v3, p2, v1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public static checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 5

    const-string v0, " "

    .line 2312
    :try_start_0
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    .line 2313
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    .line 2315
    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->firstConfigurationWas:Z

    if-eqz v3, :cond_0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 2316
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->reloadAllResources(Landroid/content/Context;)V

    :cond_0
    const/4 v1, 0x1

    .line 2318
    sput-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->firstConfigurationWas:Z

    if-nez p1, :cond_1

    .line 2321
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 2323
    :cond_1
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v1, :cond_2

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    const-string/jumbo v1, "window"

    .line 2324
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    if-eqz v1, :cond_3

    .line 2326
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2328
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2329
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2330
    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    sput v1, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v2, v1

    .line 2331
    sput v2, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshTime:F

    .line 2334
    :cond_3
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/4 v2, 0x3

    if-eqz v1, :cond_4

    int-to-float v1, v1

    .line 2335
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 2336
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_4

    .line 2337
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iput v1, v3, Landroid/graphics/Point;->x:I

    .line 2340
    :cond_4
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_5

    int-to-float v1, v1

    .line 2341
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 2342
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_5

    .line 2343
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iput v1, v2, Landroid/graphics/Point;->y:I

    .line 2346
    :cond_5
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    if-nez v1, :cond_7

    .line 2347
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    const/16 v2, 0x1c

    const v3, 0x3f19999a    # 0.6f

    if-eqz v1, :cond_6

    .line 2348
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sput v1, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    .line 2349
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    sput v1, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize:I

    goto :goto_1

    .line 2351
    :cond_6
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sput v1, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    .line 2352
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    sput v1, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize:I

    :goto_1
    const/4 v1, 0x2

    .line 2354
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sput v1, Lorg/telegram/messenger/AndroidUtilities;->roundMessageInset:I

    .line 2356
    :cond_7
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_9

    .line 2357
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-nez v1, :cond_8

    .line 2358
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->fillStatusBarHeight(Landroid/content/Context;)V

    .line 2360
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "density = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " display size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", screen layout: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", statusbar height: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", navbar height: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2362
    :cond_9
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    .line 2363
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    int-to-float p0, p0

    sput p0, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 2365
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static checkHostForPunycode(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 4773
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v2, :cond_6

    .line 4774
    :try_start_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_5

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_5

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_5

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_5

    const/16 v7, 0x30

    if-lt v6, v7, :cond_1

    const/16 v7, 0x39

    if-gt v6, v7, :cond_1

    goto :goto_2

    :cond_1
    const/16 v7, 0x61

    if-lt v6, v7, :cond_2

    const/16 v7, 0x7a

    if-le v6, v7, :cond_3

    :cond_2
    const/16 v7, 0x41

    if-lt v6, v7, :cond_4

    const/16 v7, 0x5a

    if-gt v6, v7, :cond_4

    :cond_3
    move v4, v1

    goto :goto_1

    :cond_4
    move v5, v1

    :goto_1
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    move v4, v0

    move v5, v4

    .line 4788
    :goto_3
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    move v0, v1

    :cond_7
    return v0
.end method

.method public static checkInlinePermissions(Landroid/content/Context;)Z
    .locals 2

    .line 4836
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static checkPhonePattern(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 2601
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "\\*"

    .line 2604
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2605
    invoke-static {p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    .line 2608
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_3

    .line 2609
    aget-object v4, p0, v2

    .line 2610
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2611
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    return v0

    .line 2614
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method protected static cleanValue(FF)F
    .locals 1

    neg-float v0, p1

    .line 1244
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static clearDrawableAnimation(Landroid/view/View;)V
    .locals 2

    .line 2796
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 2800
    :cond_0
    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 2801
    check-cast p0, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2803
    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 2806
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2808
    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2809
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static cloneByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    .line 5517
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5519
    :catch_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 5520
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5522
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 5523
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 5524
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 5525
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static compare(II)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static compare(JJ)I
    .locals 0

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static computeDampingRatio(FFF)F
    .locals 2

    mul-float/2addr p2, p0

    float-to-double v0, p2

    .line 4555
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p0, p2

    div-float/2addr p1, p0

    return p1
.end method

.method public static computePerceivedBrightness(I)F
    .locals 3

    .line 4370
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f371759    # 0.7152f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    const v1, 0x3d93dd98    # 0.0722f

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    const/high16 p0, 0x437f0000    # 255.0f

    div-float/2addr v0, p0

    return v0
.end method

.method public static varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    .line 4247
    array-length v0, p0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 4251
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 4252
    aget-object p0, p0, v1

    return-object p0

    .line 4256
    :cond_1
    array-length v0, p0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p0, v3

    .line 4257
    instance-of v4, v4, Landroid/text/Spanned;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    .line 4264
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4265
    array-length v2, p0

    :goto_2
    if-ge v1, v2, :cond_5

    aget-object v3, p0, v1

    if-nez v3, :cond_4

    const-string v3, "null"

    .line 4269
    :cond_4
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4271
    :cond_5
    new-instance p0, Landroid/text/SpannedString;

    invoke-direct {p0, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object p0

    .line 4273
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4274
    array-length v2, p0

    :goto_3
    if-ge v1, v2, :cond_7

    aget-object v3, p0, v1

    .line 4275
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4277
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static containsUnsupportedCharacters(Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "\u202c"

    .line 446
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "\u202d"

    .line 449
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string/jumbo v0, "\u202e"

    .line 452
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 456
    :cond_2
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->BAD_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0

    :catchall_0
    return v1
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3583
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3586
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3587
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 3589
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3590
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3591
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return v1

    :catchall_0
    move-exception p1

    .line 3589
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 3592
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3568
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result p0

    return p0
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 3574
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 3575
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const/4 v2, 0x0

    .line 3576
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 3578
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    const/4 p0, 0x1

    return p0
.end method

.method public static copyImageToClipboard(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;)V
    .locals 5

    .line 306
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p1

    .line 307
    instance-of v0, p0, Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 308
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    const-string p1, "ErrorOccurred"

    if-eqz v0, :cond_1

    .line 310
    sget p0, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/UndoView;->showError(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 312
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$raw;->error:I

    sget v1, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    invoke-static {p1, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :goto_1
    return-void

    .line 316
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    .line 320
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".provider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v3, "clipboard"

    .line 321
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    .line 322
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "URI"

    invoke-static {v2, v4, p1}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p1

    .line 323
    invoke-virtual {v3, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    if-eqz v0, :cond_4

    const-wide/16 p0, 0x0

    .line 325
    sget v2, Lcom/iMe/common/IdFabric$CustomType;->UNDO_IMAGE_COPIED:I

    invoke-virtual {v0, p0, p1, v2, v1}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    goto :goto_2

    .line 327
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->photo_viewer_image_copied:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :goto_2
    return-void
.end method

.method public static createEmptyFile(Ljava/io/File;)V
    .locals 1

    .line 1353
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1356
    :cond_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 1357
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 1358
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    .line 1360
    invoke-static {p0, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :goto_0
    return-void
.end method

.method public static decodeQuotedPrintable([B)[B
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3542
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    .line 3543
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 3544
    aget-byte v3, p0, v2

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 3547
    :try_start_0
    aget-byte v3, p0, v2

    int-to-char v3, v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    .line 3548
    aget-byte v5, p0, v2

    int-to-char v5, v5

    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v4

    int-to-char v3, v3

    .line 3549
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 3551
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0

    .line 3555
    :cond_1
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3558
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 3560
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 3562
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-object p0
.end method

.method public static distanceInfluenceForSnapDuration(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p0, v0

    const v0, 0x3ef1463b

    mul-float/2addr p0, v0

    float-to-double v0, p0

    .line 4448
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static dp(F)I
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2268
    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public static dp(I)I
    .locals 0

    int-to-float p0, p0

    .line 283
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    return p0
.end method

.method public static dp2(F)I
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2282
    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public static dpf2(F)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    return v0

    .line 2307
    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public static dpr(F)I
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2275
    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;
    .locals 11

    const-string v0, "..."

    .line 475
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 476
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x0

    if-le v1, p4, :cond_0

    .line 479
    div-int/lit8 v3, p4, 0x2

    sub-int v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/lit8 v4, p4, 0x2

    add-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {p0, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 480
    div-int/lit8 p4, p4, 0x2

    sub-int p4, p1, p4

    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    sub-int/2addr p1, p4

    .line 481
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 483
    :cond_0
    new-instance p4, Landroid/text/StaticLayout;

    const v6, 0x7fffffff

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p4

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 484
    invoke-virtual {p4, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    .line 485
    invoke-virtual {p3, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v3, v1

    int-to-float p2, p2

    cmpg-float v3, v3, p2

    if-gez v3, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    move v3, p1

    .line 490
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 495
    :cond_2
    invoke-virtual {p4, v3}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 496
    invoke-virtual {p4, v3}, Landroid/text/StaticLayout;->isRtlCharAt(I)Z

    move-result v5

    if-eqz v5, :cond_3

    sub-float v4, v1, v4

    :cond_3
    cmpg-float v1, v4, p2

    if-gez v1, :cond_4

    return-object p0

    :cond_4
    sub-float/2addr v4, p2

    .line 502
    invoke-virtual {p3, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p3

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p3, v1

    add-float/2addr v4, p3

    const p3, 0x3dcccccd    # 0.1f

    mul-float/2addr p3, p2

    add-float/2addr v4, p3

    .line 503
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v3

    const/16 v3, 0x14

    if-le v1, v3, :cond_5

    add-float/2addr v4, p3

    :cond_5
    const/4 p3, 0x0

    cmpl-float p3, v4, p3

    if-lez p3, :cond_b

    .line 508
    invoke-virtual {p4, v2, v4}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result p3

    .line 510
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p3, v1, :cond_6

    .line 511
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :cond_6
    move v1, v2

    .line 513
    :cond_7
    invoke-interface {p0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    const/16 v5, 0xa

    if-nez v3, :cond_8

    if-ge v1, v5, :cond_8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p3, p3, 0x1

    .line 516
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le p3, v3, :cond_7

    .line 517
    invoke-virtual {p4, v2, v4}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result p3

    :cond_8
    if-lt v1, v5, :cond_9

    .line 523
    invoke-virtual {p4, p1}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result p1

    const p3, 0x3e99999a    # 0.3f

    mul-float/2addr p2, p3

    sub-float/2addr p1, p2

    .line 524
    invoke-virtual {p4, v2, p1}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-interface {p0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    :cond_9
    if-lez p3, :cond_a

    .line 526
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    if-ge p3, p1, :cond_a

    invoke-interface {p0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_a

    add-int/lit8 p3, p3, 0x1

    .line 529
    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p0, p3, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 531
    :goto_1
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 534
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_b
    return-object p0
.end method

.method public static emptyMotionEvent()Landroid/view/MotionEvent;
    .locals 8

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 827
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static endIncomingCall()V
    .locals 5

    .line 2546
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->hasCallPermissions:Z

    if-nez v0, :cond_0

    return-void

    .line 2550
    :cond_0
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2551
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getITelephony"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 2552
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 2553
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 2554
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ITelephony;

    new-array v2, v3, [Ljava/lang/Object;

    .line 2555
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .line 2556
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V

    .line 2557
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2559
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static fillStatusBarHeight(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1011
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 1014
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 1015
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    sput p0, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static findActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 577
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 578
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 580
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 581
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findClickableView(Landroid/view/ViewGroup;FF)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 705
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 706
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 707
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 710
    :cond_1
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v4, p1

    float-to-int v5, p2

    .line 711
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_2

    return v4

    .line 713
    :cond_2
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    sub-float v5, p1, v5

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float v2, p2, v2

    invoke-static {v3, v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->findClickableView(Landroid/view/ViewGroup;FF)Z

    move-result v2

    if-eqz v2, :cond_3

    return v4

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static fixGoogleMapsBug()V
    .locals 5

    .line 4238
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "google_bug_154855417"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "fixed"

    .line 4239
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4240
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v3

    const-string v4, "ZoomTables.data"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4241
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4242
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static fixLocationCoord(D)D
    .locals 2

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr p0, v0

    double-to-long p0, p0

    long-to-double p0, p0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/google/android/exoplayer2/util/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 5450
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5451
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 5453
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5454
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 5456
    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5457
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5459
    :cond_2
    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 5460
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static formapMapUrl(IDDIIZII)Ljava/lang/String;
    .locals 16

    .line 2374
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, -0x1

    move/from16 v3, p9

    if-ne v3, v2, :cond_0

    .line 2376
    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->mapProvider:I

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x6

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v2, v11, :cond_5

    if-ne v2, v9, :cond_1

    goto/16 :goto_1

    .line 2396
    :cond_1
    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->mapKey:Ljava/lang/String;

    .line 2397
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    if-eqz p7, :cond_2

    .line 2399
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v3, v10

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v3, v11

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v5

    aput-object v2, v3, v4

    const-string v0, "https://maps.googleapis.com/maps/api/staticmap?center=%.6f,%.6f&zoom=%d&size=%dx%d&maptype=roadmap&scale=%d&markers=color:red%%7Csize:mid%%7C%.6f,%.6f&sensor=false&key=%s"

    invoke-static {v12, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2401
    :cond_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v9

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    aput-object v2, v4, v8

    const-string v0, "https://maps.googleapis.com/maps/api/staticmap?center=%.6f,%.6f&zoom=%d&size=%dx%d&maptype=roadmap&scale=%d&key=%s"

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    if-eqz p7, :cond_4

    .line 2405
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v5

    const-string v0, "https://maps.googleapis.com/maps/api/staticmap?center=%.6f,%.6f&zoom=%d&size=%dx%d&maptype=roadmap&scale=%d&markers=color:red%%7Csize:mid%%7C%.6f,%.6f&sensor=false"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2407
    :cond_4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    const-string v0, "https://maps.googleapis.com/maps/api/staticmap?center=%.6f,%.6f&zoom=%d&size=%dx%d&maptype=roadmap&scale=%d"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_1
    const/4 v2, 0x0

    const-string/jumbo v12, "ru_RU"

    const-string/jumbo v13, "tr_TR"

    .line 2380
    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    .line 2381
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v13

    move v14, v10

    :goto_2
    if-ge v14, v1, :cond_7

    .line 2383
    aget-object v15, v12, v14

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    iget-object v4, v13, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2384
    aget-object v2, v12, v14

    :cond_6
    add-int/lit8 v14, v14, 0x1

    const/16 v4, 0x8

    goto :goto_2

    :cond_7
    if-nez v2, :cond_8

    const-string v2, "en_US"

    :cond_8
    if-eqz p7, :cond_9

    .line 2391
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v3, v10

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v3, v11

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v1

    mul-int v1, p5, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    mul-int v1, p6, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v5

    const/16 v0, 0x8

    aput-object v2, v3, v0

    const-string v0, "https://static-maps.yandex.ru/1.x/?ll=%.6f,%.6f&z=%d&size=%d,%d&l=map&scale=%d&pt=%.6f,%.6f,vkbkm&lang=%s"

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2393
    :cond_9
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    mul-int v1, p5, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v9

    mul-int v1, p6, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    aput-object v2, v4, v8

    const-string v0, "https://static-maps.yandex.ru/1.x/?ll=%.6f,%.6f&z=%d&size=%d,%d&l=map&scale=%d&lang=%s"

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatCount(I)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_0

    .line 3487
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3489
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 v1, 0x1

    if-eqz p0, :cond_2

    .line 3491
    rem-int/lit16 v2, p0, 0x3e8

    .line 3492
    div-int/lit16 p0, p0, 0x3e8

    if-lez p0, :cond_1

    .line 3494
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "%03d"

    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3496
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3499
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3500
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1
    if-ltz v2, :cond_4

    .line 3501
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    const-string v1, ","

    .line 3503
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3507
    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDuration(IIZ)Ljava/lang/String;
    .locals 10

    .line 3433
    div-int/lit16 v0, p1, 0xe10

    .line 3434
    div-int/lit8 v1, p1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 3435
    rem-int/lit8 v2, p1, 0x3c

    .line 3437
    div-int/lit16 v3, p0, 0xe10

    .line 3438
    div-int/lit8 v4, p0, 0x3c

    rem-int/lit8 v4, v4, 0x3c

    .line 3439
    rem-int/lit8 p0, p0, 0x3c

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_2

    if-nez v3, :cond_1

    if-eqz p2, :cond_0

    .line 3444
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v7

    const-string p0, "%02d:%02d / -:--"

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3446
    :cond_0
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v7

    const-string p0, "%d:%02d / -:--"

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3449
    :cond_1
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v6

    const-string p0, "%d:%02d:%02d / -:--"

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p1, 0x4

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    .line 3454
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v5

    const-string p0, "%02d:%02d / %02d:%02d"

    invoke-static {p2, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3456
    :cond_3
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v5

    const-string p0, "%d:%02d / %d:%02d"

    invoke-static {p2, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3459
    :cond_4
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v9, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v9, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v9, p1

    const/4 p0, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v9, p0

    const-string p0, "%d:%02d:%02d / %d:%02d:%02d"

    invoke-static {p2, p0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDuration(IZ)Ljava/lang/String;
    .locals 6

    .line 3389
    div-int/lit16 v0, p0, 0xe10

    .line 3390
    div-int/lit8 v1, p0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 3391
    rem-int/lit8 p0, p0, 0x3c

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 3394
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    const-string p0, "%02d:%02d"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3396
    :cond_0
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    const-string p0, "%d:%02d"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3399
    :cond_1
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v2

    const-string p0, "%d:%02d:%02d"

    invoke-static {p1, p0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDurationNoHours(IZ)Ljava/lang/String;
    .locals 4

    .line 3415
    div-int/lit8 v0, p0, 0x3c

    .line 3416
    rem-int/lit8 p0, p0, 0x3c

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    .line 3418
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    const-string p0, "%02d:%02d"

    invoke-static {p1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3420
    :cond_0
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    const-string p0, "%d:%02d"

    invoke-static {p1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3348
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatFileSize(JZ)Ljava/lang/String;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-string v1, "%d KB"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    .line 3353
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v4, 0x400

    cmp-long v0, p0, v4

    if-gez v0, :cond_1

    new-array p2, v2, [Ljava/lang/Object;

    .line 3355
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p2, v3

    const-string p0, "%d B"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/32 v6, 0x100000

    cmp-long v0, p0, v6

    const/4 v6, 0x0

    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v8, 0x44800000    # 1024.0f

    if-gez v0, :cond_3

    long-to-float p0, p0

    div-float/2addr p0, v8

    if-eqz p2, :cond_2

    float-to-int p1, p0

    int-to-float p2, p1

    sub-float p2, p0, p2

    mul-float/2addr p2, v7

    cmpl-float p2, p2, v6

    if-nez p2, :cond_2

    new-array p0, v2, [Ljava/lang/Object;

    .line 3359
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    .line 3361
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, v3

    const-string p0, "%.1f KB"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-wide/32 v0, 0x3e800000

    cmp-long v0, p0, v0

    if-gez v0, :cond_5

    long-to-float p0, p0

    div-float/2addr p0, v8

    div-float/2addr p0, v8

    if-eqz p2, :cond_4

    float-to-int p1, p0

    int-to-float p2, p1

    sub-float p2, p0, p2

    mul-float/2addr p2, v7

    cmpl-float p2, p2, v6

    if-nez p2, :cond_4

    new-array p0, v2, [Ljava/lang/Object;

    .line 3366
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    const-string p1, "%d MB"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-array p1, v2, [Ljava/lang/Object;

    .line 3368
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, v3

    const-string p0, "%.1f MB"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3371
    :cond_5
    div-long/2addr p0, v4

    div-long/2addr p0, v4

    long-to-int p0, p0

    int-to-float p0, p0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    if-eqz p2, :cond_6

    float-to-int p1, p0

    int-to-float p2, p1

    sub-float p2, p0, p2

    mul-float/2addr p2, v7

    cmpl-float p2, p2, v6

    if-nez p2, :cond_6

    new-array p0, v2, [Ljava/lang/Object;

    .line 3373
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    const-string p1, "%d GB"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    new-array p1, v2, [Ljava/lang/Object;

    .line 3375
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, v3

    const-string p0, "%.2f GB"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatFullDuration(I)Ljava/lang/String;
    .locals 7

    .line 3404
    div-int/lit16 v0, p0, 0xe10

    .line 3405
    div-int/lit8 v1, p0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 3406
    rem-int/lit8 v2, p0, 0x3c

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-gez p0, :cond_0

    .line 3408
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    const-string v0, "-%02d:%02d:%02d"

    invoke-static {p0, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3410
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    const-string v0, "%02d:%02d:%02d"

    invoke-static {p0, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatLongDuration(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 3385
    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->formatDuration(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatLongDuration(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 3429
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->formatDuration(IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatNumber(J)Ljava/lang/String;
    .locals 11

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    .line 235
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->formatNumber(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-long p0, p0

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->formatNumber(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/16 v0, 0x3e8

    cmp-long v2, p0, v0

    if-gez v2, :cond_2

    .line 241
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 244
    :cond_2
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 245
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$array;->short_numbers:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v4, v3, v1

    invoke-interface {v2, v0, v4}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v4, 0xf4240

    .line 247
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-interface {v2, v0, v5}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v5, 0x3b9aca00

    .line 248
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-interface {v2, v0, v5}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v5, 0xe8d4a51000L

    .line 249
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v5, 0x3

    aget-object v3, v3, v5

    invoke-interface {v2, v0, v3}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p0, 0x0

    return-object p0

    .line 255
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v5, 0xa

    div-long/2addr v2, v5

    div-long/2addr p0, v2

    const-wide/16 v2, 0x64

    cmp-long v2, p0, v2

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    if-gez v2, :cond_4

    long-to-double v2, p0

    div-double/2addr v2, v7

    long-to-float v9, p0

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v9, v10

    float-to-double v9, v9

    cmpl-double v2, v2, v9

    if-eqz v2, :cond_4

    move v1, v4

    :cond_4
    if-eqz v1, :cond_5

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    div-double/2addr p0, v7

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p0, v5

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatShortDuration(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3381
    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->formatDuration(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatShortDuration(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3425
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->formatDuration(IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatSpannable(Ljava/lang/CharSequence;Lorg/telegram/messenger/GenericProvider;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lorg/telegram/messenger/GenericProvider<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/CharSequence;",
            ")",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .line 3775
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3776
    invoke-static {p0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 3777
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 3778
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/telegram/messenger/GenericProvider;->provide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3779
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 3781
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    aget-object v6, p2, v2

    invoke-virtual {p0, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3782
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p2, v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static varargs formatSpannable(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 2

    .line 3769
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3770
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannableSimple(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 3771
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda17;->INSTANCE:Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda17;

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannable(Ljava/lang/CharSequence;Lorg/telegram/messenger/GenericProvider;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatSpannableSimple(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 3765
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda18;->INSTANCE:Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda18;

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannable(Ljava/lang/CharSequence;Lorg/telegram/messenger/GenericProvider;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static formatTimerDurationFast(JI)Ljava/lang/String;
    .locals 10

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x3c

    .line 777
    div-long v3, p0, v1

    cmp-long v5, v3, v1

    const-string v6, ","

    const-string v7, ":"

    if-ltz v5, :cond_0

    .line 779
    div-long v8, v3, v1

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    rem-long/2addr v3, v1

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->normalizeTimePart(Ljava/lang/StringBuilder;J)V

    .line 781
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    rem-long/2addr p0, v1

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->normalizeTimePart(Ljava/lang/StringBuilder;J)V

    .line 783
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 p2, p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 785
    :cond_0
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    rem-long/2addr p0, v1

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->normalizeTimePart(Ljava/lang/StringBuilder;J)V

    .line 787
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 p2, p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 789
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatVideoDuration(II)Ljava/lang/String;
    .locals 12

    .line 3465
    div-int/lit16 v0, p1, 0xe10

    .line 3466
    div-int/lit8 v1, p1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 3467
    rem-int/lit8 p1, p1, 0x3c

    .line 3469
    div-int/lit16 v2, p0, 0xe10

    .line 3470
    div-int/lit8 v3, p0, 0x3c

    rem-int/lit8 v3, v3, 0x3c

    .line 3471
    rem-int/lit8 p0, p0, 0x3c

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 3474
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    const-string p0, "%02d:%02d / %02d:%02d"

    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v9, 0x5

    if-nez v0, :cond_1

    .line 3477
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v9, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v9, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v9, v4

    const-string p0, "%d:%02d:%02d / %02d:%02d"

    invoke-static {v0, p0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez v2, :cond_2

    .line 3479
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v9, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v9, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v9, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v9, v4

    const-string p0, "%02d:%02d / %d:%02d:%02d"

    invoke-static {v2, p0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3481
    :cond_2
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v11, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v11, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v11, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v11, v9

    const-string p0, "%d:%02d:%02d / %d:%02d:%02d"

    invoke-static {v10, p0, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatVideoDurationFast(II)Ljava/lang/String;
    .locals 4

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    const/16 v2, 0x3c

    if-lt p0, v2, :cond_0

    .line 762
    div-int/lit8 v3, p0, 0x3c

    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->normalizeTimePart(Ljava/lang/StringBuilder;I)V

    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    rem-int/2addr p0, v2

    invoke-static {v0, p0}, Lorg/telegram/messenger/AndroidUtilities;->normalizeTimePart(Ljava/lang/StringBuilder;I)V

    .line 765
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->normalizeTimePart(Ljava/lang/StringBuilder;I)V

    goto :goto_0

    .line 768
    :cond_0
    invoke-static {v0, p0}, Lorg/telegram/messenger/AndroidUtilities;->normalizeTimePart(Ljava/lang/StringBuilder;I)V

    .line 769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->normalizeTimePart(Ljava/lang/StringBuilder;I)V

    .line 772
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatWholeNumber(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 230
    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatWholeNumber(II)Ljava/lang/String;
    .locals 9

    const-string v0, "0"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    int-to-float v1, p0

    if-nez p1, :cond_1

    move p1, p0

    :cond_1
    const/16 v2, 0x3e8

    if-ge p1, v2, :cond_2

    .line 3520
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->formatCount(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    move v3, p0

    :goto_0
    const/4 v4, 0x1

    if-lt p1, v2, :cond_3

    .line 3522
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->numbersSignatureArray:[Ljava/lang/String;

    array-length v5, v5

    sub-int/2addr v5, v4

    if-ge v3, v5, :cond_3

    .line 3523
    div-int/lit16 p1, p1, 0x3e8

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    float-to-double v5, v1

    const-wide v7, 0x3fb999999999999aL    # 0.1

    cmpg-double p1, v5, v7

    if-gez p1, :cond_4

    return-object v0

    :cond_4
    const/high16 p1, 0x41200000    # 10.0f

    mul-float v0, v1, p1

    float-to-int v2, v0

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    const/4 v5, 0x2

    if-nez v0, :cond_5

    .line 3531
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v5, [Ljava/lang/Object;

    float-to-int v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->formatCount(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->numbersSignatureArray:[Ljava/lang/String;

    aget-object p0, p0, v3

    aput-object p0, v0, v4

    const-string p0, "%s%s"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3533
    :cond_5
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v5, [Ljava/lang/Object;

    div-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, p0

    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->numbersSignatureArray:[Ljava/lang/String;

    aget-object p0, p0, v3

    aput-object p0, v1, v4

    const-string p0, "%.1f%s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/AndroidUtilities$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Z)V"
        }
    .end annotation

    const/16 v0, 0x2500

    .line 874
    invoke-static {p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    if-ltz v1, :cond_0

    .line 875
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v1

    .line 877
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/16 v0, 0x5f

    invoke-static {p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_1

    .line 879
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 880
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result p1

    const-string v3, "a"

    invoke-virtual {v0, v2, p1, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 882
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 883
    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 884
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    .line 885
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    if-eqz p4, :cond_3

    .line 887
    invoke-interface {p4, p1, v0, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 888
    :cond_3
    new-instance v3, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;-><init>(Lorg/telegram/messenger/AndroidUtilities$1;)V

    const/4 v5, 0x0

    .line 890
    invoke-virtual {p2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, p2}, Lorg/telegram/messenger/AndroidUtilities;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v5

    if-eqz p5, :cond_4

    .line 891
    invoke-static {v5, v1, v4}, Lorg/telegram/messenger/browser/Browser;->isInternalUrl(Ljava/lang/String;Z[Z)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 894
    :cond_4
    iput-object v5, v3, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->url:Ljava/lang/String;

    .line 895
    iput v0, v3, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->start:I

    .line 896
    iput v2, v3, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->end:I

    .line 898
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static generateFileName(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 3250
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 3251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 3252
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "yyyyMMdd_HHmmss_SSS"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_1

    .line 3254
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMG_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "jpg"

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3256
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "VID_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".mp4"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generatePicturePath()Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3231
    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath(ZLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static generatePicturePath(ZLjava/lang/String;)Ljava/io/File;
    .locals 2

    const/16 v0, 0x64

    .line 3236
    :try_start_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3241
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-static {v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->generateFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0

    .line 3238
    :cond_1
    :goto_0
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 3239
    new-instance v0, Ljava/io/File;

    invoke-static {v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->generateFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 3244
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    .line 3261
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string p0, ""

    return-object p0

    .line 3264
    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v1, " "

    if-eqz p0, :cond_4

    .line 3266
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_5

    .line 3268
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    .line 3269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    :goto_0
    move-object p0, p1

    .line 3271
    :cond_5
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 3272
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    .line 3276
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_b

    const/4 v5, 0x1

    if-nez v4, :cond_6

    move v6, v2

    goto :goto_3

    :cond_6
    move v6, v5

    :goto_3
    sub-int v6, v4, v6

    .line 3278
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v4, :cond_7

    move v5, v2

    :cond_7
    add-int/2addr v7, v5

    add-int/2addr v7, v6

    if-eqz v3, :cond_8

    add-int/lit8 v4, v6, 0x1

    if-eq v3, v4, :cond_8

    .line 3281
    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    :cond_8
    if-nez v3, :cond_9

    if-eqz v6, :cond_9

    .line 3283
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3286
    :cond_9
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3287
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3288
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3290
    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 3292
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 3293
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3294
    new-instance v5, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    const/16 v6, 0x21

    invoke-virtual {v0, v5, v4, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move v3, v7

    goto :goto_2

    :cond_b
    if-eq v3, v5, :cond_c

    .line 3299
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v3, p1, :cond_c

    .line 3300
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_c
    return-object v0
.end method

.method public static generateVideoPath()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    .line 3326
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->generateVideoPath(Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static generateVideoPath(Z)Ljava/io/File;
    .locals 5

    .line 3333
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->getAlbumDir(Z)Ljava/io/File;

    move-result-object p0

    .line 3334
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 3335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 3336
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->generatingVideoPathFormat:Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_0

    .line 3337
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd_HHmmss_SSS"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->generatingVideoPathFormat:Ljava/text/SimpleDateFormat;

    .line 3339
    :cond_0
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->generatingVideoPathFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 3340
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VID_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".mp4"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 3342
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getAlbumDir(Z)Ljava/io/File;
    .locals 3

    if-nez p0, :cond_5

    .line 3122
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz p0, :cond_5

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p0, v0, :cond_0

    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    .line 3126
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mounted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 3127
    new-instance p0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "Telegram"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3128
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3129
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3130
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_1

    const-string p0, "failed to create directory"

    .line 3131
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    move-object v0, p0

    goto :goto_0

    .line 3137
    :cond_3
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_4

    const-string p0, "External storage is not mounted READ/WRITE."

    .line 3138
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-object v0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    .line 3123
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getAverageColor(II)I
    .locals 4

    .line 4622
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 4623
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 4624
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 4625
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 4626
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 4627
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 4628
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    const/16 p1, 0xff

    invoke-static {p1, v0, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static getBitmapFromSurface(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 836
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 839
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 840
    new-instance v1, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    sget-object v2, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 842
    invoke-virtual {v2}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 840
    invoke-static {p0, p1, v1, v2}, Landroid/view/PixelCopy;->request(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 844
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 846
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getBitmapShareUri(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Landroid/net/Uri;
    .locals 3

    .line 5041
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 5042
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 5044
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5046
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v2

    .line 5050
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5051
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v0, 0x57

    .line 5052
    :try_start_2
    invoke-virtual {p0, p2, v0, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 5053
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 5054
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".provider"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5055
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object p0

    :catchall_0
    move-exception p0

    .line 5051
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p0

    .line 5056
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 6

    const/4 v0, 0x0

    .line 2201
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2203
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "mounted"

    .line 2206
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_0
    const-string v1, "external dir mounted"

    .line 2207
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2211
    :try_start_1
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    .line 2212
    aget-object v3, v1, v2

    .line 2213
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2214
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 2215
    aget-object v4, v1, v2

    if-eqz v4, :cond_1

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2216
    aget-object v3, v1, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2222
    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check dir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-eqz v3, :cond_5

    .line 2223
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v3

    :cond_5
    if-eqz v3, :cond_6

    .line 2235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check dir file exist "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " can write "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 2238
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2242
    :cond_6
    :goto_4
    :try_start_2
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_7

    return-object v0

    :catch_2
    move-exception v0

    .line 2247
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2250
    :cond_7
    :try_start_3
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2252
    new-instance v1, Ljava/io/File;

    const-string v2, "cache/"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2253
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 2254
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v0, :cond_9

    return-object v1

    .line 2261
    :catch_3
    :cond_9
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCertificateSHA256Fingerprint()Ljava/lang/String;
    .locals 3

    .line 4574
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4575
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    .line 4577
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 4578
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    .line 4579
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 4580
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v0, "X509"

    .line 4581
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 4582
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 4583
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->computeSHA256([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const-string v0, ""

    return-object v0
.end method

.method public static getColorDistance(II)I
    .locals 5

    .line 4606
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 4607
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 4608
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 4610
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 4611
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 4612
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    add-int v4, v0, v2

    .line 4614
    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v2

    sub-int/2addr v1, v3

    sub-int/2addr p0, p1

    add-int/lit16 p1, v4, 0x200

    mul-int/2addr p1, v0

    mul-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x8

    mul-int/lit8 v0, v1, 0x4

    mul-int/2addr v0, v1

    add-int/2addr p1, v0

    rsub-int v0, v4, 0x2ff

    mul-int/2addr v0, p0

    mul-int/2addr v0, p0

    shr-int/lit8 p0, v0, 0x8

    add-int/2addr p1, p0

    return p1
.end method

.method public static getCurrentKeyboardLanguage()[Ljava/lang/String;
    .locals 10

    const-string v0, "en"

    .line 2063
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 2064
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    const/16 v3, 0x18

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 2067
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_0

    .line 2068
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v4

    .line 2070
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2071
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 2074
    :cond_1
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2076
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_2

    .line 2077
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v4

    .line 2079
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2080
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    goto :goto_2

    :cond_4
    move-object v1, v4

    .line 2084
    :cond_5
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x2d

    const/16 v5, 0x5f

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_b

    .line 2085
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getSystemLocaleStringIso639()Ljava/lang/String;

    move-result-object v1

    .line 2087
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    .line 2088
    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getBaseLangCode()Ljava/lang/String;

    move-result-object v8

    .line 2089
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2090
    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object v8

    .line 2092
    :cond_6
    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    move-object v4, v8

    goto :goto_4

    .line 2093
    :cond_8
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object v4, v0

    .line 2099
    :cond_9
    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 2100
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    aput-object v4, v2, v7

    return-object v2

    :cond_a
    new-array v2, v7, [Ljava/lang/String;

    .line 2102
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    return-object v2

    :cond_b
    new-array v2, v7, [Ljava/lang/String;

    .line 2105
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 2110
    :catch_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "_data"

    .line 3200
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 3203
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    .line 3204
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3205
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 3206
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "content://"

    .line 3207
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "file://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_0

    goto :goto_0

    .line 3212
    :cond_0
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v7

    :catchall_0
    move-exception p1

    .line 3203
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :cond_2
    if-eqz p0, :cond_3

    .line 3212
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_3
    return-object v7
.end method

.method public static getDataDirs()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    .line 2132
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 2134
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 2135
    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 2138
    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2143
    :cond_1
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 2148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2150
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2151
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v1
.end method

.method public static getDominantColor(Landroid/graphics/Bitmap;)I
    .locals 13

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 5468
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    .line 5469
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    const/16 v8, 0xa

    if-ge v3, v8, :cond_3

    move v9, v1

    :goto_1
    if-ge v9, v8, :cond_2

    int-to-float v10, v3

    mul-float/2addr v10, v2

    float-to-int v10, v10

    int-to-float v11, v9

    mul-float/2addr v11, v0

    float-to-int v11, v11

    .line 5476
    invoke-virtual {p0, v10, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    .line 5477
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    const/16 v12, 0xc8

    if-le v11, v12, :cond_1

    .line 5478
    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v11

    add-int/2addr v5, v11

    .line 5479
    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v11

    add-int/2addr v6, v11

    .line 5480
    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    add-int/2addr v7, v10

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    return v1

    :cond_4
    const/16 p0, 0xff

    .line 5488
    div-int/2addr v5, v4

    div-int/2addr v6, v4

    div-int/2addr v7, v4

    invoke-static {p0, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static getHostAuthority(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5337
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->getHostAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHostAuthority(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 5322
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getURIParsePattern()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 5323
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    .line 5324
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5326
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    return-object v0
.end method

.method public static getImageOrientation(Landroidx/exifinterface/media/ExifInterface;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/exifinterface/media/ExifInterface;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Orientation"

    const/4 v2, 0x1

    .line 5414
    invoke-virtual {p0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x2

    const/16 v3, 0x10e

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v3, 0x5a

    goto :goto_0

    :pswitch_1
    move v3, v0

    :pswitch_2
    move v2, v1

    goto :goto_2

    :pswitch_3
    const/16 v3, 0xb4

    :goto_0
    :pswitch_4
    move v2, v0

    goto :goto_2

    :pswitch_5
    move v3, v0

    goto :goto_2

    :goto_1
    move v2, v0

    move v3, v2

    .line 5442
    :goto_2
    :pswitch_6
    new-instance p0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5444
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5446
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public static getImageOrientation(Ljava/io/File;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5398
    :try_start_0
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v0, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Landroidx/exifinterface/media/ExifInterface;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5400
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5402
    new-instance p0, Landroid/util/Pair;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getImageOrientation(Ljava/io/InputStream;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5390
    :try_start_0
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v0, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Landroidx/exifinterface/media/ExifInterface;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5392
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5394
    new-instance p0, Landroid/util/Pair;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5406
    :try_start_0
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v0, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Landroidx/exifinterface/media/ExifInterface;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 5408
    :catch_0
    new-instance p0, Landroid/util/Pair;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getLightNavigationBar(Landroid/view/Window;)Z
    .locals 3

    .line 4672
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 4673
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 4674
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static getLogsDir()Ljava/io/File;
    .locals 5

    const-string v0, "/logs"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "mounted"

    .line 732
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 733
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 734
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 735
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 742
    :catch_0
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 743
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 749
    :catch_1
    :try_start_2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v2

    .line 755
    :catch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "can\'t create logs directory"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/ApplicationLoader;->appCenterLog(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static getMinTabletSide()I
    .locals 5

    .line 2503
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v0

    const/16 v1, 0x140

    if-nez v0, :cond_1

    .line 2504
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v2, v0, 0x23

    .line 2505
    div-int/lit8 v2, v2, 0x64

    .line 2506
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2507
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    :cond_0
    sub-int/2addr v0, v2

    return v0

    .line 2511
    :cond_1
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2512
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v3, v2, 0x23

    .line 2513
    div-int/lit8 v3, v3, 0x64

    .line 2514
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2515
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    :cond_2
    sub-int/2addr v2, v3

    .line 2517
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static getMyLayerVersion(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method private static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 1024
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1025
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getOffsetColor(IIFF)I
    .locals 7

    .line 4462
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 4463
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 4464
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 4465
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    .line 4466
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 4467
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 4468
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 4469
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float v6, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p0, p2

    add-float/2addr v6, p0

    mul-float/2addr v6, p3

    float-to-int p0, v6

    int-to-float p1, v3

    sub-int/2addr v0, v3

    int-to-float p3, v0

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    float-to-int p1, p1

    int-to-float p3, v4

    sub-int/2addr v1, v4

    int-to-float v0, v1

    mul-float/2addr v0, p2

    add-float/2addr p3, v0

    float-to-int p3, p3

    int-to-float v0, v5

    sub-int/2addr v2, v5

    int-to-float v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 4470
    invoke-static {p0, p1, p3, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static getPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    .line 3148
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_a

    .line 3149
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1, p0}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3150
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ":"

    if-eqz v1, :cond_1

    .line 3151
    :try_start_1
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 3152
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3153
    aget-object v1, p0, v3

    const-string/jumbo v2, "primary"

    .line 3154
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v4

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3157
    :cond_1
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3158
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "content://downloads/public_downloads"

    .line 3159
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    .line 3160
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1, p0, v0, v0}, Lorg/telegram/messenger/AndroidUtilities;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3161
    :cond_2
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3162
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 3163
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3164
    aget-object v1, p0, v3

    const/4 v2, -0x1

    .line 3167
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x58d9bd6

    const/4 v7, 0x2

    if-eq v5, v6, :cond_5

    const v6, 0x5faa95b

    if-eq v5, v6, :cond_4

    const v6, 0x6b0147b

    if-eq v5, v6, :cond_3

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "video"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v4

    goto :goto_1

    :cond_4
    const-string v5, "image"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v3

    goto :goto_1

    :cond_5
    const-string v5, "audio"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v7

    :cond_6
    :goto_1
    if-eqz v2, :cond_9

    if-eq v2, v4, :cond_8

    if-eq v2, v7, :cond_7

    move-object v1, v0

    goto :goto_2

    .line 3175
    :cond_7
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 3172
    :cond_8
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 3169
    :cond_9
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_2
    new-array v2, v4, [Ljava/lang/String;

    .line 3180
    aget-object p0, p0, v4

    aput-object p0, v2, v3

    .line 3184
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "_id=?"

    invoke-static {p0, v1, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-string v1, "content"

    .line 3186
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3187
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1, p0, v0, v0}, Lorg/telegram/messenger/AndroidUtilities;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-string v1, "file"

    .line 3188
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3189
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3192
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_c
    return-object v0
.end method

.method public static getPatternColor(I)I
    .locals 1

    const/4 v0, 0x0

    .line 4374
    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(IZ)I

    move-result p0

    return p0
.end method

.method public static getPatternColor(IZ)I
    .locals 7

    .line 4378
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/telegram/messenger/AndroidUtilities;->RGBtoHSB(III)[F

    move-result-object p0

    const/4 v0, 0x1

    .line 4379
    aget v1, p0, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    if-gtz v1, :cond_0

    aget v1, p0, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    aget v1, p0, v4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 4380
    :cond_0
    aget v1, p0, v0

    if-eqz p1, :cond_1

    const v5, 0x3e19999a    # 0.15f

    goto :goto_0

    :cond_1
    const v5, 0x3d4ccccd    # 0.05f

    :goto_0
    add-float/2addr v1, v5

    const v5, 0x3dcccccd    # 0.1f

    aget v6, p0, v0

    sub-float v6, v3, v6

    mul-float/2addr v6, v5

    add-float/2addr v1, v6

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, p0, v0

    :cond_2
    const v1, 0x3f266666    # 0.65f

    if-nez p1, :cond_4

    .line 4382
    aget v5, p0, v4

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    goto :goto_1

    .line 4385
    :cond_3
    aget v5, p0, v4

    mul-float/2addr v5, v1

    sub-float v1, v3, v5

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p0, v4

    goto :goto_2

    .line 4383
    :cond_4
    :goto_1
    aget v3, p0, v4

    mul-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p0, v4

    :goto_2
    const/4 v1, 0x0

    .line 4387
    aget v1, p0, v1

    aget v0, p0, v0

    aget p0, p0, v4

    invoke-static {v1, v0, p0}, Lorg/telegram/messenger/AndroidUtilities;->HSBtoRGB(FFF)I

    move-result p0

    if-eqz p1, :cond_5

    const p1, -0x66000001

    goto :goto_3

    :cond_5
    const p1, 0x66ffffff

    :goto_3
    and-int/2addr p0, p1

    return p0
.end method

.method public static getPatternSideColor(I)I
    .locals 5

    .line 4391
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/telegram/messenger/AndroidUtilities;->RGBtoHSB(III)[F

    move-result-object p0

    const/4 v0, 0x1

    .line 4392
    aget v1, p0, v0

    const v2, 0x3d4ccccd    # 0.05f

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, p0, v0

    const/4 v1, 0x2

    .line 4393
    aget v2, p0, v1

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    const v3, 0x3f666666    # 0.9f

    const/4 v4, 0x0

    if-lez v2, :cond_0

    .line 4394
    aget v2, p0, v1

    mul-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, p0, v1

    goto :goto_0

    .line 4396
    :cond_0
    aget v2, p0, v1

    mul-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, p0, v1

    :goto_0
    const/4 v2, 0x0

    .line 4398
    aget v2, p0, v2

    aget v0, p0, v0

    aget p0, p0, v1

    invoke-static {v2, v0, p0}, Lorg/telegram/messenger/AndroidUtilities;->HSBtoRGB(FFF)I

    move-result p0

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    return p0
.end method

.method public static getPeerLayerVersion(I)I
    .locals 1

    shr-int/lit8 p0, p0, 0x10

    const v0, 0xffff

    and-int/2addr p0, v0

    const/16 v0, 0x49

    .line 2422
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static getPhotoSize()I
    .locals 1

    .line 2522
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0x500

    .line 2523
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    .line 2525
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getPixelsInCM(FZ)F
    .locals 1

    const v0, 0x40228f5c    # 2.54f

    div-float/2addr p0, v0

    if-eqz p1, :cond_0

    .line 2414
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    :goto_0
    mul-float/2addr p0, p1

    return p0
.end method

.method public static getPrefIntOrLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    .locals 0

    .line 4984
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    long-to-int p2, p2

    .line 4986
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public static getRealScreenSize()Landroid/graphics/Point;
    .locals 7

    .line 2653
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2655
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 2656
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 2657
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2660
    :cond_0
    :try_start_1
    const-class v2, Landroid/view/Display;

    const-string v3, "getRawWidth"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2661
    const-class v3, Landroid/view/Display;

    const-string v5, "getRawHeight"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2662
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2664
    :try_start_2
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Point;->set(II)V

    .line 2665
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 2669
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static getRootDirs()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2157
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2159
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x13

    if-lt v1, v3, :cond_4

    .line 2160
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    move v4, v3

    .line 2162
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_4

    .line 2163
    aget-object v5, v1, v4

    if-nez v5, :cond_0

    goto :goto_2

    .line 2166
    :cond_0
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/Android"

    .line 2167
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_3

    if-nez v2, :cond_1

    .line 2170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2172
    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v5, v3

    .line 2173
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 2174
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2178
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2179
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2180
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    .line 2187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2189
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2190
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2191
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2192
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v2
.end method

.method public static getSafeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 467
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->BAD_CHARS_MESSAGE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "\u200c"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p0
.end method

.method public static getScaledBitmap(FFLjava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    .line 4993
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 4994
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p2, :cond_0

    .line 4997
    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-object v3, v0

    goto :goto_0

    .line 4999
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5000
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p3

    int-to-long v4, p4

    invoke-virtual {p3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 5001
    invoke-static {v3, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 5003
    :goto_0
    iget p3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez p3, :cond_6

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v4, :cond_6

    cmpl-float v5, p0, p1

    if-lez v5, :cond_1

    if-ge p3, v4, :cond_1

    move v6, p1

    move p1, p0

    move p0, v6

    :cond_1
    int-to-float p3, p3

    div-float/2addr p3, p0

    int-to-float p0, v4

    div-float/2addr p0, p1

    .line 5009
    invoke-static {p3, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 5010
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p0, p1

    if-lez p1, :cond_3

    .line 5013
    :cond_2
    iget p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float p1, p1

    cmpg-float p1, p1, p0

    if-ltz p1, :cond_2

    :cond_3
    const/4 p0, 0x0

    .line 5016
    iput-boolean p0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p2, :cond_4

    .line 5019
    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    .line 5021
    :cond_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    int-to-long p1, p4

    invoke-virtual {p0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 5022
    invoke-static {v3, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v3, :cond_5

    .line 5031
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 5034
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-object p0

    :cond_6
    if-eqz v3, :cond_7

    .line 5031
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v3, v0

    .line 5027
    :goto_3
    :try_start_4
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_7

    .line 5031
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    .line 5034
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    return-object v0

    :catchall_2
    move-exception p0

    if-eqz v3, :cond_8

    .line 5031
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    .line 5034
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5036
    :cond_8
    :goto_5
    throw p0
.end method

.method public static getShadowHeight()I
    .locals 2

    .line 2008
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static getSharingDirectory()Ljava/io/File;
    .locals 3

    .line 4570
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "sharing/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 1019
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1020
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getStringBytes(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 1762
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 5366
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5369
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSysInfoString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 5347
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5348
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 5357
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p0

    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 5361
    :catch_1
    :cond_1
    throw p0

    :catch_2
    move-object v1, v0

    :catch_3
    if-eqz v1, :cond_2

    goto :goto_0

    :catch_4
    :cond_2
    :goto_2
    return-object v0
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 4230
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 4231
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static getThumbForNameOrMime(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 3

    const/4 p1, 0x0

    if-eqz p0, :cond_c

    .line 1029
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, ".doc"

    .line 1031
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez v0, :cond_7

    const-string v0, ".txt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, ".psd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, ".xls"

    .line 1033
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, ".csv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, ".pdf"

    .line 1035
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".ppt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, ".zip"

    .line 1037
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".rar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".ai"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".mp3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".mov"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".avi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    :goto_0
    const/4 v0, 0x3

    goto :goto_4

    :cond_5
    :goto_1
    const/4 v0, 0x2

    goto :goto_4

    :cond_6
    :goto_2
    move v0, v1

    goto :goto_4

    :cond_7
    :goto_3
    move v0, p1

    :goto_4
    if-ne v0, v2, :cond_a

    const/16 v0, 0x2e

    .line 1042
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ne v0, v2, :cond_8

    const-string v0, ""

    goto :goto_5

    :cond_8
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1043
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    .line 1044
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->documentIcons:[I

    array-length p1, p1

    rem-int v0, p0, p1

    goto :goto_6

    .line 1046
    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->documentIcons:[I

    array-length p1, p1

    rem-int v0, p0, p1

    :cond_a
    :goto_6
    if-eqz p2, :cond_b

    .line 1049
    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->documentMediaIcons:[I

    aget p0, p0, v0

    goto :goto_7

    :cond_b
    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->documentIcons:[I

    aget p0, p0, v0

    :goto_7
    return p0

    :cond_c
    if-eqz p2, :cond_d

    .line 1051
    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->documentMediaIcons:[I

    aget p0, p0, p1

    goto :goto_8

    :cond_d
    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->documentIcons:[I

    aget p0, p0, p1

    :goto_8
    return p0
.end method

.method public static getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    if-eqz p0, :cond_4

    .line 2711
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2714
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x20

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_2

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_2

    .line 2715
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 2717
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_4

    .line 2718
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {p0, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_4
    :goto_2
    return-object p0
.end method

.method public static getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4

    .line 1952
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->typefaceCache:Ljava/util/Hashtable;

    monitor-enter v0

    .line 1953
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    .line 1956
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 1957
    new-instance v1, Landroid/graphics/Typeface$Builder;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    const-string v2, "medium"

    .line 1958
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2bc

    .line 1959
    invoke-virtual {v1, v2}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    :cond_0
    const-string v2, "italic"

    .line 1961
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 1962
    invoke-virtual {v1, v2}, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;

    .line 1964
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    .line 1966
    :cond_2
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 1968
    :goto_0
    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1970
    :try_start_2
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_3

    .line 1971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get typeface \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' because "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_3
    const/4 p0, 0x0

    .line 1973
    monitor-exit v0

    return-object p0

    .line 1976
    :cond_4
    :goto_1
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1977
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static getURIParsePattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 5311
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->uriParse:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    const-string v0, "^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\\?([^#]*))?(#(.*))?"

    .line 5312
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->uriParse:Ljava/util/regex/Pattern;

    .line 5314
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->uriParse:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static getVibrator()Landroid/os/Vibrator;
    .locals 2

    .line 3964
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->vibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 3965
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->vibrator:Landroid/os/Vibrator;

    .line 3967
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->vibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method public static getViewInset(Landroid/view/View;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 2624
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-eq v2, v3, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 2629
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2630
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    :cond_1
    return v0

    .line 2632
    :cond_2
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->mAttachInfoField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 2633
    const-class v1, Landroid/view/View;

    const-string v3, "mAttachInfo"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->mAttachInfoField:Ljava/lang/reflect/Field;

    .line 2634
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2636
    :cond_3
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->mAttachInfoField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 2638
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->mStableInsetsField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_4

    .line 2639
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mStableInsets"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->mStableInsetsField:Ljava/lang/reflect/Field;

    .line 2640
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2642
    :cond_4
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->mStableInsetsField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    .line 2643
    iget p0, p0, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2647
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return v0
.end method

.method public static getViewPositionInParent(Landroid/view/View;Landroid/view/ViewGroup;[F)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 813
    aput v1, p2, v0

    const/4 v2, 0x1

    .line 814
    aput v1, p2, v2

    :goto_0
    if-eq p0, p1, :cond_1

    .line 818
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroidx/viewpager/widget/ViewPager;

    if-nez v1, :cond_0

    .line 819
    aget v1, p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v1, v3

    aput v1, p2, v0

    .line 820
    aget v1, p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v1, v3

    aput v1, p2, v2

    .line 822
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getWallPaperUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 4418
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_3

    .line 4419
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 4420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bg/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4422
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v2, :cond_2

    .line 4423
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->blur:Z

    if-eqz v2, :cond_0

    const-string v2, "blur"

    .line 4424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4426
    :cond_0
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    if-eqz p0, :cond_2

    .line 4427
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_1

    const-string p0, "+"

    .line 4428
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, "motion"

    .line 4430
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4433
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_5

    .line 4434
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?mode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4436
    :cond_3
    instance-of v0, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v0, :cond_4

    .line 4437
    check-cast p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 4438
    invoke-virtual {p0}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return-object v0
.end method

.method public static getWallpaperRotation(IZ)I
    .locals 0

    if-eqz p1, :cond_0

    add-int/lit16 p0, p0, 0xb4

    goto :goto_0

    :cond_0
    add-int/lit16 p0, p0, -0xb4

    :goto_0
    const/16 p1, 0x168

    if-lt p0, p1, :cond_1

    add-int/lit16 p0, p0, -0x168

    goto :goto_0

    :cond_1
    :goto_1
    if-gez p0, :cond_2

    add-int/lit16 p0, p0, 0x168

    goto :goto_1

    :cond_2
    return p0
.end method

.method public static getWasTablet()Ljava/lang/Boolean;
    .locals 1

    .line 2483
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->wasTablet:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static googleVoiceClientService_performAction(Landroid/content/Intent;ZLandroid/os/Bundle;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 667
    :cond_0
    new-instance p1, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda11;-><init>(Landroid/content/Intent;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static handleProxyIntent(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 16

    const-string/jumbo v0, "tg:proxy"

    const-string/jumbo v1, "tg://telegram.org"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    .line 3982
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    return v2

    .line 3985
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 3992
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_a

    const-string v7, "http"

    .line 3994
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v8, "secret"

    const-string/jumbo v9, "pass"

    const-string/jumbo v10, "user"

    const-string/jumbo v11, "port"

    const-string/jumbo v12, "server"

    if-nez v7, :cond_5

    :try_start_1
    const-string v7, "https"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "tg"

    .line 4011
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4012
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4013
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v7, "tg://socks"

    const-string/jumbo v13, "tg:socks"

    const-string/jumbo v14, "tg://proxy"

    if-nez v4, :cond_3

    :try_start_2
    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4014
    :cond_3
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4015
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4016
    invoke-virtual {v0, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4017
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->checkHostForPunycode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4018
    invoke-static {v1, v5}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :cond_4
    move-object v6, v1

    .line 4020
    invoke-virtual {v0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4021
    invoke-virtual {v0, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4022
    invoke-virtual {v0, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4023
    invoke-virtual {v0, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v1

    move-object v8, v6

    move-object v6, v3

    goto/16 :goto_2

    .line 3995
    :cond_5
    :goto_0
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "telegram.me"

    .line 3996
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "t.me"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "telegram.dog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3997
    :cond_6
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, "/socks"

    .line 3999
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "/proxy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4000
    :cond_7
    invoke-virtual {v3, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4001
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->checkHostForPunycode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4002
    invoke-static {v0, v5}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_8
    move-object v6, v0

    .line 4004
    invoke-virtual {v3, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4005
    invoke-virtual {v3, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4006
    invoke-virtual {v3, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4007
    invoke-virtual {v3, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v15, v6

    move-object v6, v1

    move-object v1, v15

    goto :goto_1

    :cond_9
    move-object v0, v6

    move-object v1, v0

    move-object v3, v1

    move-object v4, v3

    :goto_1
    move-object v9, v0

    move-object v8, v1

    move-object v0, v3

    goto :goto_2

    :cond_a
    move-object v0, v6

    move-object v4, v0

    move-object v8, v4

    move-object v9, v8

    .line 4027
    :goto_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v1, :cond_e

    const-string v1, ""

    if-nez v6, :cond_b

    move-object v10, v1

    goto :goto_3

    :cond_b
    move-object v10, v6

    :goto_3
    if-nez v4, :cond_c

    move-object v11, v1

    goto :goto_4

    :cond_c
    move-object v11, v4

    :goto_4
    if-nez v0, :cond_d

    move-object v12, v1

    goto :goto_5

    :cond_d
    move-object v12, v0

    :goto_5
    move-object/from16 v7, p0

    .line 4037
    :try_start_3
    invoke-static/range {v7 .. v12}, Lorg/telegram/messenger/AndroidUtilities;->showProxyAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return v5

    :catch_0
    :cond_e
    return v2
.end method

.method public static hasSystemFeature(Ljava/lang/String;)Z
    .locals 1

    .line 265
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hideKeyboard(Landroid/view/View;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 2118
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2119
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 2122
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2125
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static highlightText(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;
    .locals 6

    .line 559
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 562
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 563
    invoke-static {p0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 564
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :goto_0
    if-ltz v2, :cond_1

    .line 567
    :try_start_0
    new-instance v3, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-direct {v3, v4, p2}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 569
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 571
    invoke-virtual {v0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 544
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 545
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3, p2}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object p0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne v2, p1, :cond_3

    return-object v0

    :cond_3
    return-object p0
.end method

.method public static hsvToColor(DDD)I
    .locals 0

    .line 1147
    invoke-static/range {p0 .. p5}, Lorg/telegram/messenger/AndroidUtilities;->hsvToRgb(DDD)[I

    move-result-object p0

    const/4 p1, 0x0

    .line 1148
    aget p1, p0, p1

    const/4 p2, 0x1

    aget p2, p0, p2

    const/4 p3, 0x2

    aget p0, p0, p3

    const/16 p3, 0xff

    invoke-static {p3, p1, p2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static hsvToRgb(DDD)[I
    .locals 13

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    mul-double/2addr v0, p0

    .line 1153
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v6, v4, p2

    mul-double v6, v6, p4

    mul-double v8, v0, p2

    sub-double v8, v4, v8

    mul-double v8, v8, p4

    sub-double v0, v4, v0

    mul-double/2addr v0, p2

    sub-double/2addr v4, v0

    mul-double v0, p4, v4

    double-to-int v2, v2

    .line 1158
    rem-int/lit8 v2, v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/16 v10, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_2

    const/4 v12, 0x4

    if-eq v2, v12, :cond_1

    const/4 v0, 0x5

    if-eq v2, v0, :cond_0

    move-wide v0, v10

    move-wide v6, v0

    goto :goto_1

    :cond_0
    move-wide v10, v6

    move-wide v0, v8

    goto :goto_0

    :cond_1
    move-wide v10, v6

    move-wide v6, v0

    move-wide/from16 v0, p4

    goto :goto_1

    :cond_2
    move-wide/from16 v0, p4

    move-wide v10, v8

    goto :goto_1

    :cond_3
    move-wide/from16 v10, p4

    goto :goto_1

    :cond_4
    move-wide/from16 v10, p4

    move-wide v0, v6

    move-wide v6, v8

    goto :goto_1

    :cond_5
    move-wide v10, v0

    move-wide v0, v6

    :goto_0
    move-wide/from16 v6, p4

    :goto_1
    new-array v2, v3, [I

    const/4 v3, 0x0

    const-wide v8, 0x406fe00000000000L    # 255.0

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v2, v3

    mul-double/2addr v10, v8

    double-to-int v3, v10

    aput v3, v2, v5

    mul-double/2addr v0, v8

    double-to-int v0, v0

    aput v0, v2, v4

    return-object v2
.end method

.method public static indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 4474
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 4478
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_5

    .line 4479
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v2, v4, :cond_1

    return v3

    :cond_1
    move v3, v0

    move v2, v1

    .line 4484
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 4485
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 4486
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-eq v4, v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4493
    :cond_3
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v3, v2, :cond_4

    return v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v3

    .line 4475
    :cond_6
    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static intersect1d(IIII)Z
    .locals 2

    .line 5341
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    if-lt p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAccessibilityScreenReaderEnabled()Z
    .locals 1

    .line 5071
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method public static isAccessibilityTouchExplorationEnabled()Z
    .locals 2

    .line 3971
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_0

    .line 3972
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 3974
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isActivityRunning(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 5381
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    const/4 v3, 0x1

    if-lt v1, v2, :cond_2

    .line 5382
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_1

    move v0, v3

    :cond_1
    return v0

    .line 5384
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    xor-int/2addr p0, v3

    return p0
.end method

.method public static isAirplaneModeOn()Z
    .locals 5

    .line 3318
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    const/16 v4, 0x11

    if-ge v0, v4, :cond_1

    .line 3319
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    .line 3321
    :cond_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    return v1
.end method

.method public static isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z
    .locals 6

    if-eqz p0, :cond_1

    .line 3887
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x9660180

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isDarkColor(I)Z
    .locals 1

    .line 831
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p0

    const v0, 0x3f389375    # 0.721f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 3223
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isENOSPC(Ljava/lang/Exception;)Z
    .locals 2

    .line 5095
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 5098
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/system/ErrnoException;

    if-eqz v0, :cond_0

    .line 5099
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Landroid/system/ErrnoException;

    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->ENOSPC:I

    if-eq v0, v1, :cond_1

    .line 5100
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "no space left on device"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEROFS(Ljava/lang/Exception;)Z
    .locals 2

    .line 5105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 5106
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/system/ErrnoException;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Landroid/system/ErrnoException;

    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->EROFS:I

    if-eq v0, v1, :cond_1

    .line 5107
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "read-only file system"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 3219
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFilNotFoundException(Ljava/lang/Throwable;)Z
    .locals 1

    .line 727
    instance-of v0, p0, Ljava/io/FileNotFoundException;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/io/EOFException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isInLandscapeMode(Landroid/app/Activity;)Z
    .locals 1

    .line 287
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 288
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 289
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 290
    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInternalUri(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1402
    invoke-static {v0, p0}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;I)Z

    move-result p0

    return p0
.end method

.method public static isInternalUri(Landroid/net/Uri;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1398
    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;I)Z

    move-result p0

    return p0
.end method

.method private static isInternalUri(Landroid/net/Uri;I)Z
    .locals 7

    const/16 v0, 0xa

    const/16 v1, 0x1000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_5

    .line 1408
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return v2

    .line 1413
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/io/File;

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "voip_logs"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/\\d+\\.log"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    move p1, v2

    .line 1418
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_2

    return v3

    .line 1423
    :cond_2
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_9

    .line 1427
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr p1, v3

    if-lt p1, v0, :cond_4

    return v3

    :cond_4
    move-object p0, v4

    goto :goto_0

    :catchall_0
    return v3

    :cond_5
    const-string p0, ""

    move v4, v2

    .line 1440
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v1, :cond_6

    return v3

    .line 1445
    :cond_6
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->readlinkFd(I)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_9

    .line 1449
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    add-int/2addr v4, v3

    if-lt v4, v0, :cond_8

    return v3

    :cond_8
    move-object p0, v5

    goto :goto_1

    .line 1461
    :cond_9
    :goto_2
    :try_start_2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p1, :cond_a

    move-object p0, p1

    goto :goto_3

    :catch_0
    const-string p1, "/./"

    const-string v0, "/"

    .line 1466
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    :cond_a
    :goto_3
    const-string p1, ".attheme"

    .line 1470
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    return v2

    .line 1473
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/data/data/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    move v2, v3

    :cond_c
    return v2

    :catchall_1
    return v3
.end method

.method public static isKeyguardSecure()Z
    .locals 2

    .line 3307
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 3308
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method public static isMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 5

    .line 1365
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider;->getMapsAppPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1367
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 1370
    :catch_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    .line 1373
    :cond_0
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1374
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider;->getInstallMapsString()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1375
    sget v3, Lorg/telegram/messenger/R$string;->OK:I

    const-string v4, "OK"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, p0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1383
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v3, "Cancel"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1384
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return v1
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 3227
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 0

    .line 5063
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPunctuationCharacter(C)Z
    .locals 3

    .line 4595
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->charactersMap:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 4596
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->charactersMap:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 4597
    :goto_0
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->characters:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 4598
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->charactersMap:Ljava/util/HashSet;

    aget-char v1, v1, v0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4602
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->charactersMap:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isRTL(Ljava/lang/CharSequence;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 5295
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    .line 5299
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5300
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x590

    if-lt v2, v3, :cond_1

    const/16 v3, 0x6ff

    if-gt v2, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static isServiceRunning(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 294
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 296
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    .line 297
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 298
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isSimAvailable()Z
    .locals 3

    .line 3312
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3313
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_0

    .line 3314
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isSmallScreen()Z
    .locals 2

    .line 2491
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 2492
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    const v1, 0x44228000    # 650.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen:Ljava/lang/Boolean;

    .line 2494
    :cond_1
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSmallTablet()Z
    .locals 2

    .line 2498
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    const v1, 0x442c8000    # 690.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTablet()Z
    .locals 1

    .line 2487
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTabletInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->forceDisableTabletMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTabletForce()Z
    .locals 2

    .line 2460
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$bool;->isTablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTabletInternal()Z
    .locals 1

    .line 2464
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2465
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTabletForce()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    .line 2467
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isValidWallChar(C)Z
    .locals 1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isWaitingForCall()Z
    .locals 2

    .line 2019
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->callLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2020
    :try_start_0
    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->waitingForCall:Z

    .line 2021
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isWaitingForSms()Z
    .locals 2

    .line 1982
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->smsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1983
    :try_start_0
    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->waitingForSms:Z

    .line 1984
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static synthetic lambda$formatSpannable$11(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 3771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "$s"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$formatSpannableSimple$10(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    const-string p0, "%s"

    return-object p0
.end method

.method private static synthetic lambda$getBitmapFromSurface$3(Ljava/util/concurrent/CountDownLatch;I)V
    .locals 0

    .line 841
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private static synthetic lambda$googleVoiceClientService_performAction$2(Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v0, p0

    .line 669
    :try_start_0
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 670
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 671
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode()Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "android.intent.extra.TEXT"

    .line 674
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 675
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.google.android.voicesearch.extra.RECIPIENT_CONTACT_URI"

    .line 676
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.google.android.voicesearch.extra.RECIPIENT_CONTACT_CHAT_ID"

    .line 677
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 679
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_1

    .line 681
    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(J)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 683
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :cond_1
    if-eqz v0, :cond_3

    .line 687
    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/ContactsController;->markAsContacted(Ljava/lang/String;)V

    .line 688
    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v3 .. v17}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 692
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static synthetic lambda$isMapsInstalled$6(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1377
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {p2, p3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1378
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    const/16 p1, 0x1f4

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1380
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$makeGlobalBlurBitmap$19(Lorg/telegram/messenger/Utilities$Callback;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 5241
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$makeGlobalBlurBitmap$20(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 5246
    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$pruneOverlaps$5(Lorg/telegram/messenger/AndroidUtilities$LinkSpec;Lorg/telegram/messenger/AndroidUtilities$LinkSpec;)I
    .locals 4

    .line 967
    iget v0, p0, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->start:I

    iget v1, p1, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->start:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    .line 973
    :cond_1
    iget p0, p0, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->end:I

    iget p1, p1, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->end:I

    if-ge p0, p1, :cond_2

    return v3

    :cond_2
    if-le p0, p1, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$recycleBitmaps$0(Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    .line 649
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 650
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 651
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 653
    :try_start_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 655
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static synthetic lambda$recycleBitmaps$1(Ljava/util/List;)V
    .locals 2

    .line 648
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda13;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$scrollToFragmentRow$17(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/ui/Components/RecyclerListView;)I
    .locals 2

    const/4 v0, -0x1

    .line 4816
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v1, 0x1

    .line 4817
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4818
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 4819
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    const/16 p0, 0x3c

    .line 4820
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p0

    invoke-virtual {p2, v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/4 p0, 0x0

    .line 4821
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0
.end method

.method private static synthetic lambda$setNavigationBarColor$16(Lorg/telegram/messenger/AndroidUtilities$IntColorCallback;Landroid/view/Window;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 4738
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p0, :cond_0

    .line 4740
    invoke-interface {p0, p2}, Lorg/telegram/messenger/AndroidUtilities$IntColorCallback;->run(I)V

    .line 4743
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/Window;->setNavigationBarColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static synthetic lambda$setWaitingForSms$7(Ljava/lang/Void;)V
    .locals 0

    .line 1996
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "sms listener registered"

    .line 1997
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$shakeView$8(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 2971
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    mul-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-double v1, v1

    float-to-double v3, p1

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    mul-double/2addr v3, v5

    .line 2972
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-double v3, p1

    mul-double/2addr v1, v3

    double-to-float p1, v1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private static synthetic lambda$shakeViewSpring$9(Ljava/lang/Runnable;Landroid/view/View;FLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    if-eqz p0, :cond_0

    .line 3013
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 3015
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 3016
    sget p0, Lorg/telegram/messenger/R$id;->spring_tag:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3017
    sget p0, Lorg/telegram/messenger/R$id;->spring_was_translation_x_tag:I

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$showProxyAlert$12(JLorg/telegram/ui/Cells/TextDetailSettingsCell;)V
    .locals 5

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 4147
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->Unavailable:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4148
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 4150
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lorg/telegram/messenger/R$string;->Available:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->Ping:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4151
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$showProxyAlert$13(Lorg/telegram/ui/Cells/TextDetailSettingsCell;J)V
    .locals 1

    .line 4145
    new-instance v0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2, p0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda10;-><init>(JLorg/telegram/ui/Cells/TextDetailSettingsCell;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showProxyAlert$14(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 4167
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$showProxyAlert$15(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 8

    .line 4173
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p7

    invoke-interface {p7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p7

    const-string/jumbo v0, "proxy_enabled"

    const/4 v1, 0x1

    .line 4174
    invoke-interface {p7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "proxy_ip"

    .line 4175
    invoke-interface {p7, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4176
    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string/jumbo v0, "proxy_port"

    .line 4177
    invoke-interface {p7, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4180
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v2, "proxy_secret"

    const-string/jumbo v3, "proxy_user"

    const-string/jumbo v4, "proxy_pass"

    if-eqz v0, :cond_2

    .line 4181
    invoke-interface {p7, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4182
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4183
    invoke-interface {p7, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 4185
    :cond_0
    invoke-interface {p7, v4, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4187
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4188
    invoke-interface {p7, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 4190
    :cond_1
    invoke-interface {p7, v3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4192
    :goto_1
    new-instance v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    const-string v7, ""

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/SharedConfig$ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4194
    :cond_2
    invoke-interface {p7, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4195
    invoke-interface {p7, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4196
    invoke-interface {p7, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4197
    new-instance v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    const-string v5, ""

    const-string v6, ""

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/SharedConfig$ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4199
    :goto_2
    invoke-interface {p7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4201
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->addProxy(Lorg/telegram/messenger/SharedConfig$ProxyInfo;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p7

    sput-object p7, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    const/4 v2, 0x1

    move-object v3, p0

    move v4, p1

    move-object v5, p4

    move-object v6, p3

    move-object v7, p2

    .line 4203
    invoke-static/range {v2 .. v7}, Lorg/telegram/tgnet/ConnectionsManager;->setProxySettings(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4204
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4205
    instance-of p0, p5, Lorg/telegram/ui/LaunchActivity;

    const/4 p1, 0x6

    const/4 p3, 0x2

    if-eqz p0, :cond_4

    .line 4206
    check-cast p5, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p5}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p0

    .line 4207
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    .line 4209
    instance-of p4, p0, Lorg/telegram/ui/ChatActivity;

    if-eqz p4, :cond_3

    .line 4210
    check-cast p0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object p0

    if-eqz p0, :cond_3

    const-wide/16 p4, 0x0

    const/16 p7, 0x57

    const/4 v0, 0x0

    .line 4212
    invoke-virtual {p0, p4, p5, p7, v0}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    move p0, v1

    goto :goto_3

    :cond_3
    move p0, p2

    :goto_3
    if-nez p0, :cond_5

    .line 4217
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p4, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, p2

    sget p1, Lorg/telegram/messenger/R$string;->ProxyAddedSuccess:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v1

    invoke-virtual {p0, p4, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_4

    .line 4220
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p4, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, p2

    sget p1, Lorg/telegram/messenger/R$string;->ProxyAddedSuccess:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v1

    invoke-virtual {p0, p4, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4222
    :cond_5
    :goto_4
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$static$4(Ljava/lang/CharSequence;II)Z
    .locals 0

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    :cond_0
    sub-int/2addr p1, p2

    .line 907
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0x40

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return p2
.end method

.method private static synthetic lambda$updateImageViewImageAnimated$18(Landroid/widget/ImageView;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 4871
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v1, p3, v0

    .line 4872
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v1, v0

    .line 4873
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 4874
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    cmpl-float p3, p3, v0

    if-ltz p3, :cond_0

    .line 4875
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    .line 4876
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4877
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public static lerp(DDF)D
    .locals 2

    float-to-double v0, p4

    sub-double/2addr p2, p0

    mul-double/2addr v0, p2

    add-double/2addr p0, v0

    return-wide p0
.end method

.method public static lerp(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    return p0
.end method

.method public static lerp([FF)F
    .locals 2

    const/4 v0, 0x0

    .line 4519
    aget v0, p0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method public static lerp(IIF)I
    .locals 1

    int-to-float v0, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p2, p0

    add-float/2addr v0, p2

    float-to-int p0, v0

    return p0
.end method

.method public static lerp(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V
    .locals 4

    if-eqz p3, :cond_0

    .line 4535
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 4536
    invoke-static {v0, v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 4537
    invoke-static {v1, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 4538
    invoke-static {v2, v3, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 4539
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p0

    .line 4535
    invoke-virtual {p3, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method public static lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V
    .locals 4

    if-eqz p3, :cond_0

    .line 4524
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 4525
    invoke-static {v0, v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 4526
    invoke-static {v1, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 4527
    invoke-static {v2, v3, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 4528
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p0

    .line 4524
    invoke-virtual {p3, v0, v1, v2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    return-void
.end method

.method public static lerpAngle(FFF)F
    .locals 2

    sub-float/2addr p1, p0

    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p1, v0

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr p1, v1

    rem-float/2addr p1, v0

    sub-float/2addr p1, v1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    add-float/2addr p0, v0

    rem-float/2addr p0, v0

    return p0
.end method

.method public static loadVCardFromStream(Landroid/net/Uri;IZLjava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "IZ",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/AndroidUtilities$VcardItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 1774
    :try_start_0
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "r"

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 1775
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_17

    .line 1777
    :cond_0
    :try_start_1
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1778
    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 1781
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1784
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v7, 0x0

    move-object v8, v3

    move-object v9, v8

    move-object v11, v9

    move v10, v7

    .line 1790
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_24

    const-string v13, "PHOTO"

    .line 1791
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/16 v13, 0x3a

    .line 1795
    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v14, "ORG"

    const-string v15, "TEL"

    const/4 v6, 0x2

    if-ltz v13, :cond_12

    :try_start_2
    const-string v10, "BEGIN:VCARD"

    .line 1798
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1799
    new-instance v8, Lorg/telegram/messenger/AndroidUtilities$VcardData;

    invoke-direct {v8, v3}, Lorg/telegram/messenger/AndroidUtilities$VcardData;-><init>(Lorg/telegram/messenger/AndroidUtilities$1;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v13, p4

    .line 1800
    iput-object v13, v8, Lorg/telegram/messenger/AndroidUtilities$VcardData;->name:Ljava/lang/String;

    goto/16 :goto_7

    :cond_2
    move-object/from16 v13, p4

    const-string v10, "END:VCARD"

    .line 1801
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_7

    :cond_3
    if-eqz v1, :cond_10

    .line 1804
    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1805
    new-instance v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-direct {v10}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;-><init>()V

    .line 1806
    iput v7, v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    :goto_2
    move-object v11, v10

    goto/16 :goto_6

    :cond_4
    const-string v10, "EMAIL"

    .line 1807
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1808
    new-instance v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-direct {v10}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;-><init>()V

    const/4 v11, 0x1

    .line 1809
    iput v11, v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    goto :goto_2

    :cond_5
    const-string v10, "ADR"

    .line 1810
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string v10, "LABEL"

    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string v10, "GEO"

    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto/16 :goto_5

    :cond_6
    const-string v10, "URL"

    .line 1813
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1814
    new-instance v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-direct {v10}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;-><init>()V

    const/4 v11, 0x3

    .line 1815
    iput v11, v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    goto :goto_2

    :cond_7
    const-string v10, "NOTE"

    .line 1816
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1817
    new-instance v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-direct {v10}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;-><init>()V

    const/4 v11, 0x4

    .line 1818
    iput v11, v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    goto :goto_2

    :cond_8
    const-string v10, "BDAY"

    .line 1819
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1820
    new-instance v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-direct {v10}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;-><init>()V

    const/4 v11, 0x5

    .line 1821
    iput v11, v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    goto :goto_2

    .line 1822
    :cond_9
    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "TITLE"

    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "ROLE"

    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_4

    :cond_a
    const-string v10, "X-ANDROID"

    .line 1827
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1828
    new-instance v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-direct {v10}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;-><init>()V

    const/4 v11, -0x1

    .line 1829
    iput v11, v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    goto/16 :goto_2

    :cond_b
    const-string v10, "X-PHONETIC"

    .line 1830
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_3

    :cond_c
    const-string v10, "X-"

    .line 1832
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1833
    new-instance v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-direct {v10}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;-><init>()V

    const/16 v11, 0x14

    .line 1834
    iput v11, v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    goto/16 :goto_2

    :cond_d
    :goto_3
    move-object v11, v3

    goto :goto_6

    .line 1824
    :cond_e
    :goto_4
    new-instance v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-direct {v10}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;-><init>()V

    const/4 v11, 0x6

    .line 1825
    iput v11, v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    goto/16 :goto_2

    .line 1811
    :cond_f
    :goto_5
    new-instance v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;

    invoke-direct {v10}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;-><init>()V

    .line 1812
    iput v6, v10, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    goto/16 :goto_2

    :goto_6
    if-eqz v11, :cond_11

    .line 1836
    iget v10, v11, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    if-ltz v10, :cond_11

    .line 1837
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :cond_10
    :goto_7
    move-object v11, v3

    :cond_11
    :goto_8
    move v10, v7

    goto :goto_9

    :cond_12
    move-object/from16 v13, p4

    :goto_9
    if-nez v10, :cond_15

    if-eqz v8, :cond_15

    if-nez v11, :cond_14

    .line 1844
    :try_start_3
    iget-object v3, v8, Lorg/telegram/messenger/AndroidUtilities$VcardData;->vcard:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_13

    .line 1845
    iget-object v3, v8, Lorg/telegram/messenger/AndroidUtilities$VcardData;->vcard:Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1847
    :cond_13
    iget-object v3, v8, Lorg/telegram/messenger/AndroidUtilities$VcardData;->vcard:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 1849
    :cond_14
    iget-object v3, v11, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->vcardData:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_a
    if-eqz v9, :cond_16

    .line 1853
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v9, 0x0

    :cond_16
    const-string v3, "=QUOTED-PRINTABLE"

    .line 1857
    invoke-virtual {v12, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v6, "="

    if-eqz v3, :cond_17

    :try_start_4
    invoke-virtual {v12, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1858
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    invoke-virtual {v12, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_17
    if-nez v10, :cond_18

    if-eqz v8, :cond_18

    if-eqz v11, :cond_18

    .line 1862
    iput-object v12, v11, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    :cond_18
    const-string v3, ":"

    .line 1864
    invoke-virtual {v12, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_19

    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 1868
    invoke-virtual {v12, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v7

    add-int/lit8 v3, v3, 0x1

    .line 1869
    invoke-virtual {v12, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v1, v7

    const/4 v7, 0x0

    goto :goto_b

    :cond_19
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    .line 1872
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    aput-object v1, v3, v7

    move-object v1, v3

    .line 1874
    :goto_b
    array-length v3, v1

    const/4 v12, 0x2

    if-lt v3, v12, :cond_22

    if-nez v8, :cond_1a

    goto/16 :goto_10

    .line 1877
    :cond_1a
    aget-object v3, v1, v7

    const-string v12, "FN"

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v12, "N"

    if-nez v3, :cond_1c

    :try_start_5
    aget-object v3, v1, v7

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    aget-object v3, v1, v7

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, v8, Lorg/telegram/messenger/AndroidUtilities$VcardData;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x0

    goto :goto_c

    :cond_1b
    const/4 v3, 0x0

    .line 1906
    aget-object v6, v1, v3

    invoke-virtual {v6, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1907
    iget-object v3, v8, Lorg/telegram/messenger/AndroidUtilities$VcardData;->phones:Ljava/util/ArrayList;

    const/4 v6, 0x1

    aget-object v1, v1, v6

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :cond_1c
    move v3, v7

    .line 1880
    :goto_c
    aget-object v7, v1, v3

    const-string v3, ";"

    invoke-virtual {v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1881
    array-length v7, v3

    move-object/from16 v17, v9

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_d
    if-ge v14, v7, :cond_20

    move/from16 v18, v7

    aget-object v7, v3, v14

    .line 1882
    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v19, v3

    .line 1883
    array-length v3, v7

    move-object/from16 v20, v6

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1d

    goto :goto_e

    :cond_1d
    const/4 v3, 0x0

    .line 1886
    aget-object v6, v7, v3

    const-string v3, "CHARSET"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    .line 1887
    aget-object v9, v7, v3

    goto :goto_e

    :cond_1e
    const/4 v3, 0x0

    .line 1888
    aget-object v6, v7, v3

    const-string v3, "ENCODING"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    .line 1889
    aget-object v15, v7, v3

    :cond_1f
    :goto_e
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v18

    move-object/from16 v3, v19

    move-object/from16 v6, v20

    goto :goto_d

    :cond_20
    const/4 v3, 0x0

    .line 1892
    aget-object v6, v1, v3

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v3, 0x1

    .line 1893
    aget-object v1, v1, v3

    const/16 v3, 0x3b

    const/16 v6, 0x20

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lorg/telegram/messenger/AndroidUtilities$VcardData;->name:Ljava/lang/String;

    const/4 v3, 0x1

    goto :goto_f

    :cond_21
    const/4 v3, 0x1

    .line 1895
    aget-object v1, v1, v3

    iput-object v1, v8, Lorg/telegram/messenger/AndroidUtilities$VcardData;->name:Ljava/lang/String;

    :goto_f
    if-eqz v15, :cond_23

    const-string v1, "QUOTED-PRINTABLE"

    .line 1897
    invoke-virtual {v15, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1898
    iget-object v1, v8, Lorg/telegram/messenger/AndroidUtilities$VcardData;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->decodeQuotedPrintable([B)[B

    move-result-object v1

    if-eqz v1, :cond_23

    .line 1899
    array-length v6, v1

    if-eqz v6, :cond_23

    .line 1900
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1902
    iput-object v6, v8, Lorg/telegram/messenger/AndroidUtilities$VcardData;->name:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_11

    :cond_22
    :goto_10
    move-object/from16 v17, v9

    const/4 v3, 0x1

    :cond_23
    :goto_11
    move-object/from16 v1, p3

    move-object/from16 v9, v17

    const/4 v3, 0x0

    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1911
    :cond_24
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 1912
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_12

    :catch_0
    move-exception v0

    .line 1914
    :try_start_7
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_12
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 1916
    :goto_13
    :try_start_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_29

    .line 1917
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/AndroidUtilities$VcardData;

    .line 1918
    iget-object v1, v0, Lorg/telegram/messenger/AndroidUtilities$VcardData;->name:Ljava/lang/String;

    if-eqz v1, :cond_28

    iget-object v1, v0, Lorg/telegram/messenger/AndroidUtilities$VcardData;->phones:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    if-nez v3, :cond_25

    .line 1920
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v1

    .line 1923
    :cond_25
    iget-object v1, v0, Lorg/telegram/messenger/AndroidUtilities$VcardData;->phones:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v5, 0x0

    .line 1924
    :goto_14
    iget-object v6, v0, Lorg/telegram/messenger/AndroidUtilities$VcardData;->phones:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_27

    .line 1925
    iget-object v6, v0, Lorg/telegram/messenger/AndroidUtilities$VcardData;->phones:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1926
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x7

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1927
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/ContactsController;->contactsByShortPhone:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_26

    move-object v1, v6

    goto :goto_15

    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_27
    const/4 v9, 0x0

    .line 1932
    :goto_15
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;-><init>()V

    .line 1933
    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 1934
    iget-object v1, v0, Lorg/telegram/messenger/AndroidUtilities$VcardData;->name:Ljava/lang/String;

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 1935
    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    const-wide/16 v10, 0x0

    .line 1936
    iput-wide v10, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 1937
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;-><init>()V

    .line 1938
    iget-object v0, v0, Lorg/telegram/messenger/AndroidUtilities$VcardData;->vcard:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;->text:Ljava/lang/String;

    .line 1939
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;->platform:Ljava/lang/String;

    .line 1940
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;->reason:Ljava/lang/String;

    .line 1941
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1942
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_16

    :cond_28
    const/4 v9, 0x0

    :goto_16
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_13

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    .line 1946
    :goto_17
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_29
    return-object v3
.end method

.method public static lockOrientation(Landroid/app/Activity;)V
    .locals 7

    if-eqz p0, :cond_8

    .line 1478
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    const/16 v1, -0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1482
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    sput v0, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    const-string/jumbo v0, "window"

    .line 1483
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_8

    .line 1484
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1485
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1486
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x3

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ne v0, v2, :cond_2

    if-ne v1, v4, :cond_1

    .line 1490
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1492
    :cond_1
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x9

    const/4 v5, 0x0

    if-ne v0, v4, :cond_4

    if-ne v1, v4, :cond_3

    .line 1496
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1498
    :cond_3
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_4
    const/4 v6, 0x2

    if-nez v0, :cond_6

    if-ne v1, v6, :cond_5

    .line 1502
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1504
    :cond_5
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_6
    if-ne v1, v6, :cond_7

    .line 1508
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1510
    :cond_7
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1515
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public static lockOrientation(Landroid/app/Activity;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1526
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    sput v0, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    .line 1527
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1529
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static makeAccessibilityAnnouncement(Ljava/lang/CharSequence;)V
    .locals 3

    .line 4452
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 4453
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4454
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/16 v2, 0x4000

    .line 4455
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 4456
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4457
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public static makeBlurBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2

    const/high16 v0, 0x40c00000    # 6.0f

    const/4 v1, 0x7

    .line 5141
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->makeBlurBitmap(Landroid/view/View;FI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static makeBlurBitmap(Landroid/view/View;FI)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5148
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int v0, v0

    .line 5149
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    .line 5150
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 5151
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, p1

    .line 5152
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 5153
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 5154
    invoke-virtual {p0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 5155
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    div-int/lit16 p0, p0, 0xb4

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v2, p0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    return-object v2
.end method

.method public static makeGlobalBlurBitmap(Lorg/telegram/messenger/Utilities$Callback;F)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Landroid/graphics/Bitmap;",
            ">;F)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 5201
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->allGlobalViews()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 5204
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 5211
    :cond_1
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v2, v2

    .line 5212
    iget v1, v1, Landroid/graphics/Point;->y:I

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    .line 5213
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 5214
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, p1

    .line 5215
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 5216
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x0

    move v8, v7

    .line 5218
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 5219
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 5221
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 5222
    instance-of v11, v10, Landroid/view/WindowManager$LayoutParams;

    if-eqz v11, :cond_2

    .line 5223
    check-cast v10, Landroid/view/WindowManager$LayoutParams;

    .line 5224
    iget v11, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v11, v5

    if-eqz v11, :cond_2

    const/high16 v11, -0x1000000

    const/high16 v12, 0x437f0000    # 255.0f

    .line 5225
    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    invoke-static {v11, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 5229
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 5230
    invoke-virtual {v9, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5231
    aget v10, v6, v7

    int-to-float v10, v10

    div-float/2addr v10, p1

    const/4 v11, 0x1

    aget v11, v6, v11

    int-to-float v11, v11

    div-float/2addr v11, p1

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5233
    :try_start_1
    invoke-virtual {v9, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5237
    :catch_0
    :try_start_2
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    float-to-int p1, p1

    .line 5239
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit16 v0, v0, 0xb4

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v3, p1}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 5240
    new-instance p1, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0, v3}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/Utilities$Callback;Landroid/graphics/Bitmap;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 5244
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5245
    new-instance p1, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private static makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 9

    const/4 p2, 0x0

    move v0, p2

    .line 858
    :goto_0
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 859
    aget-object v6, p1, v0

    const/4 v7, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 861
    aget-object v6, p1, v0

    const/4 v7, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, p2

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 867
    array-length v0, p1

    if-lez v0, :cond_3

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public static minScreenBound()I
    .locals 2

    .line 279
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static multiplyAlphaComponent(IF)I
    .locals 1

    .line 4551
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    return p0
.end method

.method public static multiplyBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 1251
    :cond_0
    new-instance v0, Landroid/graphics/ColorMatrix;

    const/16 v1, 0x14

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput v3, v1, v2

    const/4 v2, 0x5

    aput v3, v1, v2

    const/4 v2, 0x6

    aput p1, v1, v2

    const/4 v2, 0x7

    aput v3, v1, v2

    const/16 v2, 0x8

    aput v3, v1, v2

    const/16 v2, 0x9

    aput v3, v1, v2

    const/16 v2, 0xa

    aput v3, v1, v2

    const/16 v2, 0xb

    aput v3, v1, v2

    const/16 v2, 0xc

    aput p1, v1, v2

    const/16 p1, 0xd

    aput v3, v1, p1

    const/16 p1, 0xe

    aput v3, v1, p1

    const/16 p1, 0xf

    aput v3, v1, p1

    const/16 p1, 0x10

    aput v3, v1, p1

    const/16 p1, 0x11

    aput v3, v1, p1

    const/16 p1, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, p1

    const/16 p1, 0x13

    aput v3, v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v0}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public static needShowPasscode()Z
    .locals 1

    const/4 v0, 0x0

    .line 2931
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v0

    return v0
.end method

.method public static needShowPasscode(Z)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 225
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(ZILcom/iMe/fork/enums/LockedSection;)Z

    move-result p0

    return p0
.end method

.method public static needShowPasscode(ZILcom/iMe/fork/enums/LockedSection;)Z
    .locals 5

    .line 2935
    invoke-static {}, Lorg/telegram/ui/Components/ForegroundDetector;->getInstance()Lorg/telegram/ui/Components/ForegroundDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/ForegroundDetector;->isWasInBackground(Z)Z

    move-result v0

    if-eqz p0, :cond_0

    .line 2937
    invoke-static {}, Lorg/telegram/ui/Components/ForegroundDetector;->getInstance()Lorg/telegram/ui/Components/ForegroundDetector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ForegroundDetector;->resetBackgroundVar()V

    .line 2939
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 2940
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_1

    if-eqz p0, :cond_1

    sget-object p0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    .line 2941
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wasInBackground = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " appLocked = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " autoLockIn = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lastPauseTime = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uptime = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    .line 2946
    invoke-static {p1}, Lcom/iMe/fork/controller/LockedSectionsController;->getInstance(I)Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object p1

    .line 2947
    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lcom/iMe/fork/enums/LockedSection;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p1

    if-nez p1, :cond_2

    return v2

    .line 2951
    :cond_2
    invoke-virtual {p1}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->isSectionLocked()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getTimeout()I

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getLastAcceptedTime()I

    move-result p2

    sub-int/2addr v1, p2

    invoke-virtual {p1}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getTimeout()I

    move-result p1

    if-le v1, p1, :cond_3

    goto :goto_0

    :cond_3
    move p0, v2

    :cond_4
    :goto_0
    return p0

    .line 2954
    :cond_5
    sget-object p1, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7

    if-eqz v0, :cond_7

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    if-nez p1, :cond_8

    sget p1, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    if-eqz p1, :cond_6

    sget p1, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    if-eqz p1, :cond_6

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    if-nez p1, :cond_6

    sget p1, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    sget p2, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    add-int/2addr p1, p2

    if-le p1, v1, :cond_8

    :cond_6
    add-int/lit8 v1, v1, 0x5

    sget p1, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    if-ge v1, p1, :cond_7

    goto :goto_1

    :cond_7
    move p0, v2

    :cond_8
    :goto_1
    return p0
.end method

.method public static normalizeTimePart(Ljava/lang/StringBuilder;I)V
    .locals 1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const-string v0, "0"

    .line 795
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 798
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public static normalizeTimePart(Ljava/lang/StringBuilder;J)V
    .locals 2

    const-wide/16 v0, 0xa

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-string v0, "0"

    .line 805
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 808
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public static obtainLoginPhoneCall(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 2564
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->hasCallPermissions:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2569
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    const-string v0, "date DESC"

    goto :goto_0

    :cond_1
    const-string v0, "date DESC LIMIT 5"

    :goto_0
    move-object v7, v0

    .line 2574
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "number"

    const-string v4, "date"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "type IN (3,1,5)"

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2581
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 2582
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 2583
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2584
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v5, :cond_3

    .line 2585
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2587
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v5, 0x36ee80

    cmp-long v3, v3, v5

    if-ltz v3, :cond_4

    goto :goto_1

    .line 2590
    :cond_4
    invoke-static {p0, v2}, Lorg/telegram/messenger/AndroidUtilities;->checkPhonePattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 2594
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_6

    .line 2574
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 2595
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    return-object v1
.end method

.method public static openDocument(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v0, :cond_0

    return-void

    .line 3609
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 3614
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iMe/fork/controller/BackupController;->isBackupFileName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3615
    invoke-static {v2, v0}, Lorg/telegram/ui/Components/AlertsCreator;->createRestoreBackupBottomSheetDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 3620
    :cond_2
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_3

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    const-string v4, ""

    .line 3621
    :goto_0
    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    .line 3622
    new-instance v5, Ljava/io/File;

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v5, v6

    :goto_1
    if-eqz v5, :cond_5

    .line 3624
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6

    .line 3625
    :cond_5
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v5

    :cond_6
    if-eqz v5, :cond_11

    .line 3627
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v7, "OK"

    const-string v8, "info2.**"

    const-string v9, "info1.**"

    const/4 v10, 0x1

    if-eqz v2, :cond_8

    .line 3628
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "attheme"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 3629
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v6, v10}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeFile(Ljava/io/File;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_theme;Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3631
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_6

    .line 3633
    :cond_7
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3634
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3635
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3636
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3637
    sget v12, Lorg/telegram/messenger/R$raw;->not_available:I

    const/16 v13, 0x34

    const/4 v14, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v15

    move-object v11, v0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZILjava/util/Map;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3638
    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimationIsNew(Z)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3639
    sget v1, Lorg/telegram/messenger/R$string;->IncorrectTheme:I

    const-string v3, "IncorrectTheme"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3640
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v7, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3641
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_6

    .line 3646
    :cond_8
    :try_start_0
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3647
    invoke-virtual {v11, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3648
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v12

    const/16 v13, 0x2e

    .line 3649
    invoke-virtual {v4, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_9

    add-int/2addr v13, v10

    .line 3651
    invoke-virtual {v4, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3652
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    .line 3654
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 3655
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    move-object v4, v6

    .line 3660
    :cond_a
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v12, ".provider"

    const/16 v13, 0x18

    const-string/jumbo v14, "text/plain"

    if-lt v3, v13, :cond_c

    .line 3661
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v5}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v4, :cond_b

    move-object v15, v4

    goto :goto_2

    :cond_b
    move-object v15, v14

    :goto_2
    invoke-virtual {v11, v3, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 3663
    :cond_c
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v4, :cond_d

    move-object v15, v4

    goto :goto_3

    :cond_d
    move-object v15, v14

    :goto_3
    invoke-virtual {v11, v3, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    const/16 v3, 0x1f4

    if-eqz v4, :cond_f

    .line 3667
    :try_start_2
    invoke-virtual {v1, v11, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 3669
    :catch_0
    :try_start_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v13, :cond_e

    .line 3670
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v5}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v11, v4, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 3672
    :cond_e
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v11, v4, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3674
    :goto_5
    invoke-virtual {v1, v11, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6

    .line 3677
    :cond_f
    invoke-virtual {v1, v11, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    if-nez v1, :cond_10

    return-void

    .line 3683
    :cond_10
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3684
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3685
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3686
    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3687
    sget v16, Lorg/telegram/messenger/R$raw;->not_available:I

    const/16 v17, 0x34

    const/16 v18, 0x0

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v19

    move-object v15, v3

    move-object/from16 v20, v1

    invoke-virtual/range {v15 .. v20}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZILjava/util/Map;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3688
    invoke-virtual {v3, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimationIsNew(Z)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3689
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v7, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3690
    sget v1, Lorg/telegram/messenger/R$string;->NoHandleAppInstalled:I

    new-array v4, v10, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    aput-object v0, v4, v5

    const-string v0, "NoHandleAppInstalled"

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3692
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_11
    :goto_6
    return-void
.end method

.method public static openForView(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z
    .locals 6

    if-eqz p0, :cond_9

    .line 3702
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3704
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3705
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3706
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    const/16 v3, 0x2e

    .line 3707
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    add-int/2addr v3, v1

    .line 3709
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 3710
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 3713
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_0
    move-object p2, p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p2, v5

    .line 3718
    :cond_2
    :goto_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p1, v2, :cond_3

    if-eqz p2, :cond_3

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3719
    invoke-static {p3, p4}, Lorg/telegram/ui/Components/AlertsCreator;->createApkRestrictedDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return v1

    :cond_3
    const-string p4, ".provider"

    const/16 v2, 0x18

    const-string/jumbo v3, "text/plain"

    if-lt p1, v2, :cond_5

    .line 3723
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p2, :cond_4

    move-object v4, p2

    goto :goto_2

    :cond_4
    move-object v4, v3

    :goto_2
    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 3725
    :cond_5
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p2, :cond_6

    move-object v4, p2

    goto :goto_3

    :cond_6
    move-object v4, v3

    :goto_3
    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_4
    const/16 p1, 0x1f4

    if-eqz p2, :cond_8

    .line 3729
    :try_start_0
    invoke-virtual {p3, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 3731
    :catch_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v2, :cond_7

    .line 3732
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 3734
    :cond_7
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3736
    :goto_5
    invoke-virtual {p3, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6

    .line 3739
    :cond_8
    invoke-virtual {p3, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_6
    return v1

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static openForView(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z
    .locals 4

    .line 3748
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3749
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 3751
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3752
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    .line 3754
    :cond_2
    iget v2, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_3

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 3755
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p0

    return p0
.end method

.method public static openForView(Lorg/telegram/tgnet/TLObject;Landroid/app/Activity;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 3841
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    .line 3842
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 3843
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3845
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3846
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3847
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    const/16 v5, 0x2e

    .line 3848
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_3

    add-int/2addr v5, v3

    .line 3850
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3851
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3853
    instance-of v4, p0, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v4, :cond_1

    .line 3854
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    :cond_1
    if-eqz v1, :cond_3

    .line 3856
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v7, v1

    .line 3861
    :cond_3
    :goto_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ".provider"

    const/16 v4, 0x18

    const-string/jumbo v5, "text/plain"

    if-lt p0, v4, :cond_5

    .line 3862
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    if-eqz v7, :cond_4

    move-object v6, v7

    goto :goto_1

    :cond_4
    move-object v6, v5

    :goto_1
    invoke-virtual {v0, p0, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 3864
    :cond_5
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    if-eqz v7, :cond_6

    move-object v6, v7

    goto :goto_2

    :cond_6
    move-object v6, v5

    :goto_2
    invoke-virtual {v0, p0, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    const/16 p0, 0x1f4

    if-eqz v7, :cond_8

    .line 3868
    :try_start_0
    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 3870
    :catch_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v4, :cond_7

    .line 3871
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 3873
    :cond_7
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3875
    :goto_4
    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    .line 3878
    :cond_8
    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_5
    return v3

    :cond_9
    :goto_6
    return v0
.end method

.method public static openForView(Lorg/telegram/tgnet/TLRPC$Document;ZLandroid/app/Activity;)Z
    .locals 2

    .line 3759
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    .line 3760
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    .line 3761
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p1, p0, p2, v1}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p0

    return p0
.end method

.method public static openSharing(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V
    .locals 8

    if-eqz p0, :cond_1

    .line 4559
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4562
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v4, p1

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    :goto_0
    return-void
.end method

.method private static pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/AndroidUtilities$LinkSpec;",
            ">;)V"
        }
    .end annotation

    .line 966
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda16;->INSTANCE:Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda16;

    .line 982
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 984
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    .line 988
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;

    add-int/lit8 v3, v1, 0x1

    .line 989
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;

    .line 992
    iget v5, v2, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->start:I

    iget v6, v4, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->start:I

    if-gt v5, v6, :cond_3

    iget v2, v2, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->end:I

    if-le v2, v6, :cond_3

    .line 993
    iget v4, v4, Lorg/telegram/messenger/AndroidUtilities$LinkSpec;->end:I

    const/4 v7, -0x1

    if-gt v4, v2, :cond_0

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_0
    sub-int v8, v2, v5

    sub-int v9, v4, v6

    if-le v8, v9, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr v2, v5

    sub-int/2addr v4, v6

    if-ge v2, v4, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v7

    :goto_2
    if-eq v2, v7, :cond_3

    .line 1001
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static px(F)I
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 275
    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public static quietSleep(J)V
    .locals 0

    .line 5508
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 698
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmaps(Ljava/util/List;)V

    return-void
.end method

.method public static recycleBitmaps(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 637
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 647
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 648
    new-instance v0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda12;-><init>(Ljava/util/List;)V

    const-wide/16 v1, 0x24

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public static removeAdjustResize(Landroid/app/Activity;I)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1343
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1346
    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->adjustOwnerClassGuid:I

    if-ne v0, p1, :cond_1

    .line 1347
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static removeAltFocusable(Landroid/app/Activity;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1305
    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->altFocusableClassGuid:I

    if-ne v0, p1, :cond_1

    .line 1306
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 p1, 0x20000

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    return-void
.end method

.method public static removeFromParent(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 721
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 5113
    instance-of v0, p1, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    .line 5114
    move-object v0, p1

    check-cast v0, Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 5116
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5118
    :goto_0
    invoke-static {p1, p0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 5120
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v0, p1, p0, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    return-object v0
.end method

.method public static replaceLinks(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;
    .locals 6

    .line 2883
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->linksPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    const-string v0, "\\[(.+?)\\]\\((.+?)\\)"

    .line 2884
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->linksPattern:Ljava/util/regex/Pattern;

    .line 2886
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2887
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->linksPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, 0x0

    .line 2889
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2890
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v0, p0, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x1

    .line 2891
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 2892
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 2893
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2894
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v4, v2

    .line 2895
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 2896
    new-instance v5, Lorg/telegram/messenger/AndroidUtilities$3;

    invoke-direct {v5, v3, p1}, Lorg/telegram/messenger/AndroidUtilities$3;-><init>(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v3, 0x21

    invoke-virtual {v0, v5, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2908
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto :goto_0

    .line 2910
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p0, v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public static replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 5127
    instance-of v0, p1, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    .line 5128
    move-object v0, p1

    check-cast v0, Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 5130
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5132
    :goto_0
    invoke-static {p1, p0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p1

    :goto_1
    if-ltz p1, :cond_1

    .line 5134
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, p1, v1, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5135
    invoke-static {v0, p0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    .line 3817
    instance-of v0, p0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-eqz v0, :cond_2

    .line 3818
    move-object v0, p0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 3819
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_0
    if-ge v2, v4, :cond_1

    .line 3820
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_0

    .line 3821
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    .line 3825
    :cond_2
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_5

    .line 3826
    move-object v0, p0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 3827
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_4

    .line 3828
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_3

    add-int/lit8 v4, v2, 0x1

    const-string v5, " "

    .line 3829
    invoke-virtual {v0, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object p0

    .line 3834
    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;
    .locals 4

    const-string v0, "**"

    .line 591
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 592
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const-string v3, ""

    .line 593
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    sub-int/2addr v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    move v2, v0

    .line 600
    :goto_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-ltz v1, :cond_2

    if-nez p2, :cond_1

    .line 603
    new-instance p0, Lorg/telegram/messenger/AndroidUtilities$1;

    invoke-direct {p0, p1, p3}, Lorg/telegram/messenger/AndroidUtilities$1;-><init>(ILjava/lang/Runnable;)V

    add-int/2addr v2, v1

    invoke-virtual {v3, p0, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 622
    :cond_1
    new-instance p0, Lorg/telegram/messenger/AndroidUtilities$2;

    invoke-direct {p0}, Lorg/telegram/messenger/AndroidUtilities$2;-><init>()V

    add-int/2addr v2, v1

    invoke-virtual {v3, p0, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    :goto_1
    return-object v3
.end method

.method public static replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 587
    invoke-static {p0, v0, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xb

    .line 2821
    invoke-static {p0, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;I[Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static varargs replaceTags(Ljava/lang/String;I[Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;
    .locals 8

    const-string p2, "<b>"

    .line 2828
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v1, p1, 0x1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    :goto_0
    const-string v1, "<br>"

    .line 2830
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "\n"

    if-eq v1, v2, :cond_0

    add-int/lit8 v4, v1, 0x4

    .line 2831
    :try_start_1
    invoke-virtual {v0, v1, v4, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    :goto_1
    const-string v1, "<br/>"

    .line 2833
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    add-int/lit8 v4, v1, 0x5

    .line 2834
    invoke-virtual {v0, v1, v4, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2837
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit8 v3, p1, 0x2

    const-string v4, "**"

    const-string v5, ""

    if-eqz v3, :cond_4

    .line 2839
    :goto_2
    :try_start_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v2, :cond_3

    add-int/lit8 v6, v3, 0x3

    .line 2840
    invoke-virtual {v0, v3, v6, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "</b>"

    .line 2841
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v2, :cond_2

    .line 2843
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    :cond_2
    add-int/lit8 v7, v6, 0x4

    .line 2845
    invoke-virtual {v0, v6, v7, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2846
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2847
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2849
    :cond_3
    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v2, :cond_4

    add-int/lit8 v3, p2, 0x2

    .line 2850
    invoke-virtual {v0, p2, v3, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2851
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3

    add-int/lit8 v6, v3, 0x2

    .line 2853
    invoke-virtual {v0, v3, v6, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2854
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2855
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6

    .line 2860
    :cond_5
    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_6

    add-int/lit8 p2, p1, 0x2

    .line 2861
    invoke-virtual {v0, p1, p2, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2862
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_5

    add-int/lit8 v3, p2, 0x2

    .line 2864
    invoke-virtual {v0, p2, v3, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2865
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2866
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2870
    :cond_6
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 2871
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge p2, v0, :cond_7

    .line 2872
    new-instance v0, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    mul-int/lit8 v2, p2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x21

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_7
    return-object p1

    :catch_0
    move-exception p1

    .line 2876
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2878
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public static replaceTwoNewLinesToOne(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 3790
    instance-of v1, p0, Ljava/lang/StringBuilder;

    const-string v2, "\n"

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 3791
    move-object v1, p0

    check-cast v1, Ljava/lang/StringBuilder;

    .line 3792
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move v7, v5

    :goto_0
    add-int/lit8 v8, v6, -0x2

    if-ge v7, v8, :cond_1

    add-int/lit8 v8, v7, 0x2

    .line 3793
    invoke-virtual {v1, v7, v8, v0, v5}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 3794
    aget-char v9, v0, v5

    if-ne v9, v4, :cond_0

    aget-char v9, v0, v3

    if-ne v9, v4, :cond_0

    .line 3795
    invoke-virtual {v1, v7, v8, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v6, v6, -0x1

    :cond_0
    add-int/2addr v7, v3

    goto :goto_0

    :cond_1
    return-object p0

    .line 3801
    :cond_2
    instance-of v1, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_5

    .line 3802
    move-object v1, p0

    check-cast v1, Landroid/text/SpannableStringBuilder;

    .line 3803
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move v7, v5

    :goto_1
    add-int/lit8 v8, v6, -0x2

    if-ge v7, v8, :cond_4

    add-int/lit8 v8, v7, 0x2

    .line 3804
    invoke-virtual {v1, v7, v8, v0, v5}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 3805
    aget-char v9, v0, v5

    if-ne v9, v4, :cond_3

    aget-char v9, v0, v3

    if-ne v9, v4, :cond_3

    .line 3806
    invoke-virtual {v1, v7, v8, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v6, v6, -0x1

    :cond_3
    add-int/2addr v7, v3

    goto :goto_1

    :cond_4
    return-object p0

    .line 3813
    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n\n"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static requestAdjustNothing(Landroid/app/Activity;I)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1326
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1329
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1330
    sput p1, Lorg/telegram/messenger/AndroidUtilities;->adjustOwnerClassGuid:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static requestAdjustResize(Landroid/app/Activity;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1314
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/view/Window;I)V

    return-void
.end method

.method public static requestAdjustResize(Landroid/view/Window;I)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1318
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 1321
    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1322
    sput p1, Lorg/telegram/messenger/AndroidUtilities;->adjustOwnerClassGuid:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static requestAltFocusable(Landroid/app/Activity;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1296
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x20000

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 1298
    sput p1, Lorg/telegram/messenger/AndroidUtilities;->altFocusableClassGuid:I

    return-void
.end method

.method public static resetTabletFlag()V
    .locals 1

    .line 2471
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->wasTablet:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2472
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTabletInternal()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->wasTablet:Ljava/lang/Boolean;

    :cond_0
    const/4 v0, 0x0

    .line 2474
    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    .line 2475
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->updateTabletConfig()V

    return-void
.end method

.method public static resetWasTabletFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 2479
    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->wasTablet:Ljava/lang/Boolean;

    return-void
.end method

.method public static rgbToHsv(I)[D
    .locals 2

    .line 1119
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/telegram/messenger/AndroidUtilities;->rgbToHsv(III)[D

    move-result-object p0

    return-object p0
.end method

.method public static rgbToHsv(III)[D
    .locals 18

    move/from16 v0, p0

    int-to-double v0, v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    move/from16 v4, p1

    int-to-double v4, v4

    div-double/2addr v4, v2

    move/from16 v6, p2

    int-to-double v6, v6

    div-double/2addr v6, v2

    cmpl-double v2, v0, v4

    if-lez v2, :cond_0

    cmpl-double v3, v0, v6

    if-lez v3, :cond_0

    move-wide v8, v0

    goto :goto_0

    .line 1126
    :cond_0
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    :goto_0
    cmpg-double v3, v0, v4

    if-gez v3, :cond_1

    cmpg-double v3, v0, v6

    if-gez v3, :cond_1

    move-wide v10, v0

    goto :goto_1

    .line 1127
    :cond_1
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    :goto_1
    sub-double v12, v8, v10

    const-wide/16 v14, 0x0

    cmpl-double v3, v8, v14

    if-nez v3, :cond_2

    move-wide/from16 v16, v14

    goto :goto_2

    :cond_2
    div-double v16, v12, v8

    :goto_2
    cmpl-double v3, v8, v10

    const/4 v10, 0x0

    if-nez v3, :cond_3

    goto :goto_6

    :cond_3
    if-lez v2, :cond_5

    cmpl-double v2, v0, v6

    if-lez v2, :cond_5

    sub-double v0, v4, v6

    div-double/2addr v0, v12

    cmpg-double v2, v4, v6

    if-gez v2, :cond_4

    const/4 v2, 0x6

    goto :goto_3

    :cond_4
    move v2, v10

    :goto_3
    int-to-double v2, v2

    goto :goto_4

    :cond_5
    cmpl-double v2, v4, v6

    if-lez v2, :cond_6

    sub-double/2addr v6, v0

    div-double/2addr v6, v12

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    add-double/2addr v0, v6

    goto :goto_5

    :cond_6
    sub-double/2addr v0, v4

    div-double/2addr v0, v12

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    :goto_4
    add-double/2addr v0, v2

    :goto_5
    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double v14, v0, v2

    :goto_6
    const/4 v0, 0x3

    new-array v0, v0, [D

    aput-wide v14, v0, v10

    const/4 v1, 0x1

    aput-wide v16, v0, v1

    const/4 v1, 0x2

    aput-wide v8, v0, v1

    return-object v0
.end method

.method public static roundPercents([F[I)[I
    .locals 10

    const-string/jumbo v0, "percents or output is null"

    .line 5255
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 5258
    array-length p1, p0

    new-array p1, p1, [I

    .line 5260
    :cond_0
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    .line 5265
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 5266
    aget v4, p0, v2

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    move v4, v2

    .line 5270
    :goto_1
    array-length v5, p0

    const/high16 v6, 0x42c80000    # 100.0f

    if-ge v2, v5, :cond_2

    .line 5271
    aget v5, p0, v2

    div-float/2addr v5, v3

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    aput v5, p1, v2

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/16 v2, 0x64

    if-ge v4, v2, :cond_6

    const/4 v2, -0x1

    move v7, v0

    move v5, v1

    .line 5277
    :goto_3
    array-length v8, p0

    if-ge v5, v8, :cond_4

    .line 5278
    aget v8, p0, v5

    div-float/2addr v8, v3

    aget v9, p1, v5

    int-to-float v9, v9

    div-float/2addr v9, v6

    sub-float/2addr v8, v9

    .line 5279
    aget v9, p0, v5

    cmpl-float v9, v9, v0

    if-lez v9, :cond_3

    cmpl-float v9, v8, v7

    if-ltz v9, :cond_3

    move v2, v5

    move v7, v8

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    if-gez v2, :cond_5

    goto :goto_4

    .line 5287
    :cond_5
    aget v5, p1, v2

    add-int/lit8 v5, v5, 0x1

    aput v5, p1, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    return-object p1

    .line 5261
    :cond_7
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo p1, "percents.length != output.length"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static runOnUIThread(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2434
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static runOnUIThread(Ljava/lang/Runnable;J)V
    .locals 2

    .line 2438
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2442
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2444
    :cond_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public static scrollToFragmentRow(Lorg/telegram/ui/ActionBar/INavigationLayout;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4808
    :cond_0
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 4810
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "listView"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 4811
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4812
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView;

    .line 4813
    new-instance v2, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, p1, v1}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 4828
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->highlightRow(Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;)V

    const/4 p0, 0x0

    .line 4829
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static setAdjustResizeToNothing(Landroid/app/Activity;I)V
    .locals 1

    if-eqz p0, :cond_2

    .line 1334
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1337
    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->adjustOwnerClassGuid:I

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_2

    .line 1338
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setEnabled(Landroid/view/View;Z)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 2678
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2679
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 2680
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 2681
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2682
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->setEnabled(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setLightNavigationBar(Landroid/view/View;Z)V
    .locals 2

    if-eqz p0, :cond_2

    .line 4681
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 4682
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v1, v0, 0x10

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eq v1, p1, :cond_2

    if-eqz p1, :cond_1

    or-int/lit8 p1, v0, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 p1, v0, -0x11

    .line 4689
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    return-void
.end method

.method public static setLightNavigationBar(Landroid/view/Window;Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 4696
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public static setLightStatusBar(Landroid/view/Window;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 4632
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;ZZ)V

    return-void
.end method

.method public static setLightStatusBar(Landroid/view/Window;ZZ)V
    .locals 2

    .line 4636
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_3

    .line 4637
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    .line 4638
    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    and-int/lit16 p1, v0, 0x2000

    if-nez p1, :cond_0

    or-int/lit16 p1, v0, 0x2000

    .line 4642
    invoke-virtual {p2, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4650
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getStatusBarColor()I

    move-result p1

    if-eqz p1, :cond_3

    .line 4651
    invoke-virtual {p0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    :cond_1
    and-int/lit16 p1, v0, 0x2000

    if-eqz p1, :cond_2

    and-int/lit16 p1, v0, -0x2001

    .line 4656
    invoke-virtual {p2, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4664
    :cond_2
    invoke-virtual {p0}, Landroid/view/Window;->getStatusBarColor()I

    move-result p1

    if-eqz p1, :cond_3

    .line 4665
    invoke-virtual {p0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static setMyLayerVersion(II)I
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static setNavigationBarColor(Landroid/view/Window;I)V
    .locals 1

    const/4 v0, 0x1

    .line 4707
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;IZ)V

    return-void
.end method

.method public static setNavigationBarColor(Landroid/view/Window;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 4711
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;IZLorg/telegram/messenger/AndroidUtilities$IntColorCallback;)V

    return-void
.end method

.method public static setNavigationBarColor(Landroid/view/Window;IZLorg/telegram/messenger/AndroidUtilities$IntColorCallback;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 4718
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    .line 4719
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->navigationBarColorAnimators:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 4720
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 4722
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4723
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->navigationBarColorAnimators:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    .line 4729
    invoke-interface {p3, p1}, Lorg/telegram/messenger/AndroidUtilities$IntColorCallback;->run(I)V

    .line 4732
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 v0, 0x0

    .line 4736
    invoke-virtual {p0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v1

    aput v1, p2, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 4737
    new-instance p2, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda2;

    invoke-direct {p2, p3, p0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/AndroidUtilities$IntColorCallback;Landroid/view/Window;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4747
    new-instance p2, Lorg/telegram/messenger/AndroidUtilities$6;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/AndroidUtilities$6;-><init>(Landroid/view/Window;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p2, 0xc8

    .line 4755
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4756
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4757
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 4758
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->navigationBarColorAnimators:Ljava/util/HashMap;

    if-nez p2, :cond_4

    .line 4759
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    sput-object p2, Lorg/telegram/messenger/AndroidUtilities;->navigationBarColorAnimators:Ljava/util/HashMap;

    .line 4761
    :cond_4
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->navigationBarColorAnimators:Ljava/util/HashMap;

    invoke-virtual {p2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :catch_0
    :cond_5
    :goto_0
    return-void
.end method

.method public static setPeerLayerVersion(II)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method public static setRectToRect(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;IIZ)V
    .locals 9

    const/16 v0, 0x10e

    const/16 v1, 0x5a

    if-eq p3, v1, :cond_1

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 3898
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    .line 3899
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    goto :goto_1

    .line 3895
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    .line 3896
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    :goto_1
    div-float/2addr v3, v4

    cmpg-float v4, v2, v3

    const/4 v5, 0x1

    if-gez v4, :cond_2

    move v2, v3

    move v3, v5

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz p5, :cond_3

    .line 3908
    iget v4, p2, Landroid/graphics/RectF;->left:F

    iget v6, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v4, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :cond_3
    const/4 v4, 0x0

    const/4 v6, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, -0x40800000    # -1.0f

    if-ne p3, v1, :cond_6

    const/high16 p3, 0x42b40000    # 90.0f

    .line 3911
    invoke-virtual {p0, p3}, Landroid/graphics/Matrix;->preRotate(F)Z

    if-ne p4, v5, :cond_4

    .line 3913
    invoke-virtual {p0, v8, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_3

    :cond_4
    if-ne p4, v6, :cond_5

    .line 3915
    invoke-virtual {p0, v7, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3917
    :cond_5
    :goto_3
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p3

    neg-float p3, p3

    invoke-virtual {p0, v4, p3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_6

    :cond_6
    const/16 v1, 0xb4

    if-ne p3, v1, :cond_9

    const/high16 p3, 0x43340000    # 180.0f

    .line 3919
    invoke-virtual {p0, p3}, Landroid/graphics/Matrix;->preRotate(F)Z

    if-ne p4, v5, :cond_7

    .line 3921
    invoke-virtual {p0, v8, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_4

    :cond_7
    if-ne p4, v6, :cond_8

    .line 3923
    invoke-virtual {p0, v7, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3925
    :cond_8
    :goto_4
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p3

    neg-float p3, p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p4

    neg-float p4, p4

    invoke-virtual {p0, p3, p4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_6

    :cond_9
    if-ne p3, v0, :cond_c

    const/high16 p3, 0x43870000    # 270.0f

    .line 3927
    invoke-virtual {p0, p3}, Landroid/graphics/Matrix;->preRotate(F)Z

    if-ne p4, v5, :cond_a

    .line 3929
    invoke-virtual {p0, v8, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_5

    :cond_a
    if-ne p4, v6, :cond_b

    .line 3931
    invoke-virtual {p0, v7, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3933
    :cond_b
    :goto_5
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p3

    neg-float p3, p3

    invoke-virtual {p0, p3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_c
    :goto_6
    if-eqz p5, :cond_d

    .line 3937
    iget p3, p1, Landroid/graphics/RectF;->left:F

    neg-float p3, p3

    mul-float/2addr p3, v2

    .line 3938
    iget p4, p1, Landroid/graphics/RectF;->top:F

    neg-float p4, p4

    mul-float/2addr p4, v2

    goto :goto_7

    .line 3940
    :cond_d
    iget p3, p2, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr p4, v2

    sub-float/2addr p3, p4

    .line 3941
    iget p4, p2, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, v2

    sub-float/2addr p4, v0

    :goto_7
    if-eqz v3, :cond_e

    .line 3946
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    goto :goto_8

    .line 3948
    :cond_e
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    :goto_8
    mul-float/2addr p1, v2

    sub-float/2addr p2, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    if-eqz v3, :cond_f

    add-float/2addr p3, p2

    goto :goto_9

    :cond_f
    add-float/2addr p4, p2

    .line 3957
    :goto_9
    invoke-virtual {p0, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    if-eqz p5, :cond_10

    .line 3959
    invoke-virtual {p0, p3, p4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_10
    return-void
.end method

.method public static setScrollViewEdgeEffectColor(Landroid/widget/HorizontalScrollView;I)V
    .locals 3

    .line 2746
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2747
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setEdgeEffectColor(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 2750
    :try_start_0
    const-class v0, Landroid/widget/HorizontalScrollView;

    const-string v1, "mEdgeGlowLeft"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2751
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2752
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1

    .line 2754
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 2757
    :cond_1
    const-class v0, Landroid/widget/HorizontalScrollView;

    const-string v2, "mEdgeGlowRight"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2758
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2759
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/EdgeEffect;

    if-eqz p0, :cond_2

    .line 2761
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2764
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V
    .locals 3

    .line 2770
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2771
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setTopEdgeEffectColor(I)V

    .line 2772
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setBottomEdgeEffectColor(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 2775
    :try_start_0
    const-class v0, Landroid/widget/ScrollView;

    const-string v1, "mEdgeGlowTop"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2776
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2777
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1

    .line 2779
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 2782
    :cond_1
    const-class v0, Landroid/widget/ScrollView;

    const-string v2, "mEdgeGlowBottom"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2783
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2784
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/EdgeEffect;

    if-eqz p0, :cond_2

    .line 2786
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public static setViewPagerEdgeEffectColor(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 3

    .line 2724
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 2726
    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mLeftEdge"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2727
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2728
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2730
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 2733
    :cond_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v2, "mRightEdge"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2734
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2735
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/EdgeEffect;

    if-eqz p0, :cond_1

    .line 2737
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static setWaitingForCall(Z)V
    .locals 4

    .line 2028
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->callLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 2031
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->callReceiver:Lorg/telegram/messenger/CallReceiver;

    if-nez v1, :cond_1

    .line 2032
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2033
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Lorg/telegram/messenger/CallReceiver;

    invoke-direct {v3}, Lorg/telegram/messenger/CallReceiver;-><init>()V

    sput-object v3, Lorg/telegram/messenger/AndroidUtilities;->callReceiver:Lorg/telegram/messenger/CallReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 2036
    :cond_0
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->callReceiver:Lorg/telegram/messenger/CallReceiver;

    if-eqz v1, :cond_1

    .line 2037
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->callReceiver:Lorg/telegram/messenger/CallReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    .line 2038
    sput-object v1, Lorg/telegram/messenger/AndroidUtilities;->callReceiver:Lorg/telegram/messenger/CallReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2044
    :catch_0
    :cond_1
    :goto_0
    :try_start_1
    sput-boolean p0, Lorg/telegram/messenger/AndroidUtilities;->waitingForCall:Z

    .line 2045
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static setWaitingForSms(Z)V
    .locals 2

    .line 1989
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->smsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1990
    :try_start_0
    sput-boolean p0, Lorg/telegram/messenger/AndroidUtilities;->waitingForSms:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 1993
    :try_start_1
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/gms/auth/api/phone/SmsRetriever;->getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;

    move-result-object p0

    .line 1994
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->startSmsRetriever()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 1995
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda9;->INSTANCE:Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda9;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2002
    :try_start_2
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2004
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static shakeView(Landroid/view/View;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 2965
    :cond_0
    sget v0, Lorg/telegram/messenger/R$id;->shake_animation:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 2966
    instance-of v2, v1, Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    .line 2967
    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 2969
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2970
    new-instance v2, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2974
    new-instance v2, Lorg/telegram/messenger/AndroidUtilities$4;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/AndroidUtilities$4;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0x12c

    .line 2980
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2981
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 2982
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static shakeViewSpring(Landroid/view/View;)V
    .locals 2

    const/high16 v0, 0x41200000    # 10.0f

    const/4 v1, 0x0

    .line 2986
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;FLjava/lang/Runnable;)V

    return-void
.end method

.method public static shakeViewSpring(Landroid/view/View;F)V
    .locals 1

    const/4 v0, 0x0

    .line 2990
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;FLjava/lang/Runnable;)V

    return-void
.end method

.method public static shakeViewSpring(Landroid/view/View;FLjava/lang/Runnable;)V
    .locals 5

    .line 2998
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 2999
    sget v0, Lorg/telegram/messenger/R$id;->spring_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3000
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 3002
    :cond_0
    sget v1, Lorg/telegram/messenger/R$id;->spring_was_translation_x_tag:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    if-eqz v2, :cond_1

    .line 3004
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 3006
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3008
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 3009
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v2, p0, v3, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v3, v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v4, 0x44160000    # 600.0f

    .line 3010
    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    neg-int p1, p1

    mul-int/lit8 p1, p1, 0x64

    int-to-float p1, p1

    .line 3011
    invoke-virtual {v2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda8;

    invoke-direct {v2, p2, p0, v1}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Runnable;Landroid/view/View;F)V

    .line 3012
    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 3019
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3020
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method public static shakeViewSpring(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    .line 2994
    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;FLjava/lang/Runnable;)V

    return-void
.end method

.method public static shouldEnableAnimation()Z
    .locals 5

    .line 4048
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 4051
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 4052
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 4055
    :cond_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "animator_duration_scale"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method public static shouldShowClipboardToast()Z
    .locals 2

    .line 3077
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/OneUIUtilities;->hasBuiltInClipboardToasts()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static shouldShowUrlInAlert(Ljava/lang/String;)Z
    .locals 0

    .line 4795
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 4796
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 4797
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkHostForPunycode(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4799
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static showKeyboard(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2053
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x1

    .line 2054
    invoke-virtual {v1, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2056
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static showProxyAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 25

    move-object/from16 v6, p0

    .line 4063
    new-instance v8, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v8, v6}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 4064
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object v7

    const/4 v0, 0x0

    .line 4066
    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 4067
    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 4068
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4069
    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v2, 0x1

    .line 4070
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4071
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x30

    const/4 v5, 0x3

    const/4 v9, -0x1

    const/4 v10, 0x5

    if-nez v3, :cond_1

    .line 4072
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4073
    sget v11, Lorg/telegram/messenger/R$string;->UseProxyTelegramInfo2:I

    const-string v12, "UseProxyTelegramInfo2"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4074
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray4:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v11, 0x41600000    # 14.0f

    .line 4075
    invoke-virtual {v3, v2, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v11, 0x31

    .line 4076
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v12, -0x2

    const/4 v13, -0x2

    .line 4077
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    move v11, v5

    :goto_0
    or-int/lit8 v14, v11, 0x30

    const/16 v15, 0x11

    const/16 v16, 0x8

    const/16 v17, 0x11

    const/16 v18, 0x8

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4079
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4080
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4081
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    move v3, v0

    :goto_1
    const/4 v11, 0x6

    if-ge v3, v11, :cond_b

    const/4 v11, 0x0

    if-nez v3, :cond_2

    .line 4088
    sget v11, Lorg/telegram/messenger/R$string;->UseProxyAddress:I

    const-string v12, "UseProxyAddress"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, p2

    move-object v13, v11

    move-object/from16 v11, p1

    goto :goto_2

    :cond_2
    if-ne v3, v2, :cond_3

    .line 4090
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 4091
    sget v13, Lorg/telegram/messenger/R$string;->UseProxyPort:I

    const-string v14, "UseProxyPort"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_3
    move-object/from16 v12, p2

    const/4 v13, 0x2

    if-ne v3, v13, :cond_4

    .line 4094
    sget v11, Lorg/telegram/messenger/R$string;->UseProxySecret:I

    const-string v13, "UseProxySecret"

    invoke-static {v13, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    move-object v13, v11

    move-object/from16 v11, p5

    goto :goto_2

    :cond_4
    if-ne v3, v5, :cond_5

    .line 4097
    sget v11, Lorg/telegram/messenger/R$string;->UseProxyUsername:I

    const-string v13, "UseProxyUsername"

    invoke-static {v13, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    move-object v13, v11

    move-object/from16 v11, p3

    goto :goto_2

    :cond_5
    const/4 v13, 0x4

    if-ne v3, v13, :cond_6

    .line 4100
    sget v11, Lorg/telegram/messenger/R$string;->UseProxyPassword:I

    const-string v13, "UseProxyPassword"

    invoke-static {v13, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    move-object v13, v11

    move-object/from16 v11, p4

    goto :goto_2

    :cond_6
    if-ne v3, v10, :cond_7

    .line 4102
    sget v11, Lorg/telegram/messenger/R$string;->ProxyBottomSheetChecking:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4103
    sget v13, Lorg/telegram/messenger/R$string;->ProxyStatus:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_7
    move-object v13, v11

    .line 4105
    :goto_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    move v4, v10

    goto/16 :goto_4

    .line 4108
    :cond_8
    new-instance v14, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v14}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4109
    new-instance v15, Lorg/telegram/messenger/AndroidUtilities$5;

    invoke-direct {v15, v6, v14}, Lorg/telegram/messenger/AndroidUtilities$5;-><init>(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;)V

    if-ne v3, v10, :cond_9

    .line 4127
    invoke-static {v11}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    .line 4128
    new-instance v5, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-direct {v5, v15}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;-><init>(Landroid/view/View;)V

    .line 4129
    invoke-virtual {v5, v15}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->addView(Landroid/view/View;)V

    .line 4130
    new-instance v4, Landroid/text/SpannableString;

    const-string v10, "..."

    invoke-direct {v4, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4131
    invoke-virtual {v5, v4, v0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->wrap(Landroid/text/SpannableString;I)V

    .line 4132
    invoke-virtual {v11, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4133
    invoke-virtual {v14, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4135
    invoke-virtual {v15, v11, v13, v2}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_3

    .line 4137
    :cond_9
    invoke-virtual {v15, v11, v13, v2}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 4139
    :goto_3
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4140
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->getValueTextView()Landroid/widget/TextView;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, -0x2

    .line 4141
    invoke-static {v9, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v15, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x5

    if-ne v3, v4, :cond_a

    .line 4145
    :try_start_0
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v18

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    new-instance v5, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda19;

    invoke-direct {v5, v15}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Cells/TextDetailSettingsCell;)V

    move-object/from16 v19, p1

    move-object/from16 v21, p3

    move-object/from16 v22, p4

    move-object/from16 v23, p5

    move-object/from16 v24, v5

    invoke-virtual/range {v18 .. v24}, Lorg/telegram/tgnet/ConnectionsManager;->checkProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/RequestTimeDelegate;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 4155
    :catch_0
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->getTextView()Landroid/widget/TextView;

    move-result-object v5

    sget v10, Lorg/telegram/messenger/R$string;->Unavailable:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4156
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->getTextView()Landroid/widget/TextView;

    move-result-object v5

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v10, v4

    const/16 v4, 0x30

    const/4 v5, 0x3

    goto/16 :goto_1

    :cond_b
    move-object/from16 v12, p2

    .line 4161
    new-instance v2, Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-direct {v2, v6, v0}, Lorg/telegram/ui/Components/PickerBottomLayout;-><init>(Landroid/content/Context;Z)V

    .line 4162
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/16 v3, 0x53

    const/16 v4, 0x30

    .line 4163
    invoke-static {v9, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4164
    iget-object v1, v2, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    const/16 v3, 0x12

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v1, v4, v0, v5, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4165
    iget-object v1, v2, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4166
    iget-object v1, v2, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v9, "Cancel"

    invoke-static {v9, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4167
    iget-object v1, v2, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda6;

    invoke-direct {v5, v7}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4168
    iget-object v1, v2, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonTextView:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4169
    iget-object v1, v2, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v4, v0, v3, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 4170
    iget-object v0, v2, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4171
    iget-object v0, v2, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->ConnectingConnectProxy:I

    const-string v3, "ConnectingConnectProxy"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4172
    iget-object v9, v2, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    new-instance v10, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda7;

    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4224
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private static snapshotTextureViews(II[ILandroid/graphics/Canvas;Landroid/view/View;)V
    .locals 5

    .line 1272
    instance-of v0, p4, Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1273
    move-object v0, p4

    check-cast v0, Landroid/view/TextureView;

    .line 1274
    invoke-virtual {v0, p2}, Landroid/view/TextureView;->getLocationInWindow([I)V

    .line 1276
    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1278
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 1279
    aget v2, p2, v1

    sub-int/2addr v2, p0

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, p2, v3

    sub-int/2addr v3, p1

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p3, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1280
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    .line 1281
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1284
    :cond_0
    instance-of v0, p4, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1285
    check-cast p4, Landroid/view/ViewGroup;

    .line 1286
    :goto_0
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1287
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/AndroidUtilities;->snapshotTextureViews(II[ILandroid/graphics/Canvas;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static snapshotView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1260
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1261
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1262
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1265
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v3, 0x0

    .line 1266
    aget v3, v2, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-static {v3, v4, v2, v1, p0}, Lorg/telegram/messenger/AndroidUtilities;->snapshotTextureViews(II[ILandroid/graphics/Canvas;Landroid/view/View;)V

    return-object v0
.end method

.method public static toIntArray(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 1390
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1392
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static translitSafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_0

    .line 5495
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 5497
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    return-object p0

    :catch_0
    return-object v0
.end method

.method public static trim(Ljava/lang/CharSequence;[I)Ljava/lang/CharSequence;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5078
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v0, :cond_1

    .line 5081
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-gt v4, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    add-int/lit8 v4, v0, -0x1

    .line 5084
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-gt v4, v3, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 5088
    aput v2, p1, v1

    :cond_3
    if-gtz v2, :cond_4

    .line 5090
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ge v0, p1, :cond_5

    :cond_4
    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_5
    return-object p0
.end method

.method public static unlockOrientation(Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1539
    :cond_0
    :try_start_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    const/16 v1, -0xa

    if-eq v0, v1, :cond_1

    .line 1540
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1541
    sput v1, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1544
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static updateImageViewImageAnimated(Landroid/widget/ImageView;I)V
    .locals 1

    .line 4861
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static updateImageViewImageAnimated(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 4865
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 4868
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 4869
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 4870
    new-instance v2, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda1;-><init>(Landroid/widget/ImageView;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4880
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static updateViewShow(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 4924
    invoke-static {p0, p1, v0, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZZ)V

    return-void
.end method

.method public static updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    .line 4939
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move p4, v1

    .line 4943
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/16 v0, -0x10

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-nez p4, :cond_8

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    .line 4945
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    const/4 p4, 0x1

    .line 4946
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4947
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    if-eqz p2, :cond_4

    if-nez p1, :cond_4

    move p4, v4

    goto :goto_1

    :cond_4
    move p4, v3

    .line 4948
    :goto_1
    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleX(F)V

    if-eqz p2, :cond_5

    if-nez p1, :cond_5

    move v3, v4

    .line 4949
    :cond_5
    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleY(F)V

    cmpl-float p2, p3, v4

    if-eqz p2, :cond_7

    if-eqz p1, :cond_6

    goto :goto_2

    .line 4951
    :cond_6
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    mul-float v4, p1, p3

    :goto_2
    invoke-virtual {p0, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_7
    if-eqz p5, :cond_11

    .line 4954
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_6

    :cond_8
    const-wide/16 v5, 0x154

    if-eqz p1, :cond_d

    .line 4957
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_b

    .line 4958
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4959
    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    if-eqz p2, :cond_9

    move p1, v4

    goto :goto_3

    :cond_9
    move p1, v3

    .line 4960
    :goto_3
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    if-eqz p2, :cond_a

    move p1, v4

    goto :goto_4

    :cond_a
    move p1, v3

    .line 4961
    :goto_4
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    cmpl-float p1, p3, v4

    if-eqz p1, :cond_b

    .line 4963
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 4966
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 4967
    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    cmpl-float p1, p3, v4

    if-eqz p1, :cond_c

    .line 4969
    invoke-virtual {p0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 4971
    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_6

    .line 4973
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 4974
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p2, :cond_e

    move p4, v4

    goto :goto_5

    :cond_e
    move p4, v3

    :goto_5
    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p2, :cond_f

    move v3, v4

    :cond_f
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/HideViewAfterAnimation;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/HideViewAfterAnimation;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    cmpl-float p1, p3, v4

    if-eqz p1, :cond_10

    .line 4976
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 4978
    :cond_10
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_11
    :goto_6
    return-void
.end method

.method public static updateViewShow(Landroid/view/View;ZZZ)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    .line 4928
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    return-void
.end method

.method public static updateViewShow(Landroid/view/View;ZZZLjava/lang/Runnable;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    .line 4932
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    return-void
.end method

.method public static updateViewVisibilityAnimated(Landroid/view/View;Z)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 4884
    invoke-static {p0, p1, v0, v1, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    return-void
.end method

.method public static updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V
    .locals 1

    const/4 v0, 0x1

    .line 4888
    invoke-static {p0, p1, p2, v0, p3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    return-void
.end method

.method public static updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    .line 4895
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move p4, v1

    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez p4, :cond_5

    .line 4900
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    const/16 v1, 0x8

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    .line 4901
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_4

    .line 4902
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_4
    invoke-virtual {p0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4903
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 4904
    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 4905
    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_1

    :cond_5
    const-wide/16 v4, 0x96

    const/4 p4, 0x0

    if-eqz p1, :cond_7

    .line 4906
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7

    .line 4907
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4908
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_6

    .line 4909
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4910
    invoke-virtual {p0, p4}, Landroid/view/View;->setAlpha(F)V

    .line 4911
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleX(F)V

    .line 4912
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 4914
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4915
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    if-nez p1, :cond_8

    .line 4916
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 4917
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4918
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/HideViewAfterAnimation;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/HideViewAfterAnimation;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4919
    invoke-virtual {p0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public static updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 4843
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 4847
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 4848
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4849
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 4851
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4852
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 4855
    :cond_2
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
