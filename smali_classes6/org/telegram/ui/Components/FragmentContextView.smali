.class public Lorg/telegram/ui/Components/FragmentContextView;
.super Landroid/widget/FrameLayout;
.source "FragmentContextView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/messenger/voip/VoIPService$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;
    }
.end annotation


# static fields
.field private static final speeds:[F


# instance fields
.field private final account:I

.field private additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

.field private animationIndex:I

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private applyingView:Landroid/view/View;

.field private avatars:Lorg/telegram/ui/Components/AvatarsImageView;

.field private chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

.field private checkCallAfterAnimation:Z

.field private checkImportAfterAnimation:Z

.field private checkLocationRunnable:Ljava/lang/Runnable;

.field private checkPlayerAfterAnimation:Z

.field private closeButton:Landroid/widget/ImageView;

.field collapseProgress:F

.field collapseTransition:Z

.field private currentProgress:I

.field private currentStyle:I

.field private delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

.field drawOverlay:Z

.field extraHeight:F

.field private firstLocationsLoaded:Z

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private gradientPaint:Landroid/graphics/Paint;

.field private gradientTextPaint:Landroid/text/TextPaint;

.field private gradientWidth:I

.field private importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private isLocation:Z

.field private isMusic:Z

.field private isMuted:Z

.field private joinButton:Landroid/widget/TextView;

.field private joinButtonFlicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

.field private lastLocationSharingCount:I

.field private lastMessageObject:Lorg/telegram/messenger/MessageObject;

.field private lastPlaybackClick:J

.field private lastString:Ljava/lang/String;

.field private linearGradient:Landroid/graphics/LinearGradient;

.field private matrix:Landroid/graphics/Matrix;

.field micAmplitude:F

.field private muteButton:Lorg/telegram/ui/Components/RLottieImageView;

.field private muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private openMusicButton:Landroid/widget/ImageView;

.field private playButton:Landroid/widget/ImageView;

.field private playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

.field private playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private rect:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scheduleRunnableScheduled:Z

.field private selector:Landroid/view/View;

.field private shadow:Landroid/view/View;

.field private silentButton:Landroid/widget/FrameLayout;

.field private silentButtonImage:Landroid/widget/ImageView;

.field speakerAmplitude:F

.field private speedHintView:Lorg/telegram/ui/Components/HintView;

.field private speedIcon:Lorg/telegram/ui/Components/SpeedIconDrawable;

.field private speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

.field private speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;

.field private speedSliderText:Lorg/telegram/ui/Components/AnimatedTextView;

.field private subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

.field private supportsCalls:Z

.field private supportsVoices:Z

.field private timeLayout:Landroid/text/StaticLayout;

.field private titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

.field protected topPadding:F

.field private final updateScheduleTimeRunnable:Ljava/lang/Runnable;

.field private visible:Z

.field wasDraw:Z


# direct methods
.method public static synthetic $r8$lambda$1iPHxrrUax0ePfffr0s4DpiwQZw(Lorg/telegram/ui/Components/FragmentContextView;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->openSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4a7NTU2H_JQ0RcqZdJy5ENajwE8(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$checkCreateView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$51p2wa2Rua5KZhg1S3x7hGjS4Fc(Lorg/telegram/ui/Components/FragmentContextView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$startJoinFlickerAnimation$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$DUv2_uwYFW06OSbdse8nliffD-k(Lorg/telegram/ui/Components/FragmentContextView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$createPlaybackSpeedButton$9(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fnk7TWak-GVvADyU2fQnR7qSw_4(Lorg/telegram/ui/Components/FragmentContextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$checkCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J5fOD9zjDhuYUpFwLRHy3siJang(Lorg/telegram/ui/Components/FragmentContextView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$createPlaybackSpeedButton$12(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KB4fCCI8PWVs5IYQeDXyTJ1cW24(Lorg/telegram/ui/Components/FragmentContextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$createPlaybackSpeedButton$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L131i51yIEd2JYRxtapomMOBQr4(Lorg/telegram/ui/Components/FragmentContextView;[FLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$createPlaybackSpeedButton$11([FLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ttp1fe4Lri4QIr3W4d0MSe0BYWk(Lorg/telegram/ui/Components/FragmentContextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$checkCreateView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V-R6B3XCiHPhjXoHRsk3RTl9uwE(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$checkCreateView$7(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VrTRFDhBUG1yxtAxkSuZ7_sGMm8(Lorg/telegram/ui/Components/FragmentContextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$checkCreateView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aSTNmgof6Vtbk-Z-XMU4Tdep6Js(Lorg/telegram/ui/Components/FragmentContextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$checkCreateView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bB8p0WKOz892w5RwXqsERqqndWw(Lorg/telegram/ui/Components/FragmentContextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$checkCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cOsmLUqh-fv5w1PXJZp7SkJsrBk(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$checkCreateView$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$m9kQ-VtRsBcTfm1Sbt2sovpGFgk(Lorg/telegram/ui/Components/FragmentContextView;Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$createPlaybackSpeedButton$10(Ljava/lang/Float;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pxjrXMLN8p4JPDw2aTMK5_YJFAM(Lorg/telegram/ui/Components/FragmentContextView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$checkCreateView$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$slezsTAAbKCi5iP7QApUxAdiPpM(Lorg/telegram/messenger/LocationController$SharingLocationInfo;JLorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$openSharingLocation$14(Lorg/telegram/messenger/LocationController$SharingLocationInfo;JLorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 256
    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Components/FragmentContextView;->speeds:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3fc00000    # 1.5f
        0x3fd33333    # 1.65f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 293
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->supportsVoices:Z

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    .line 177
    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    const/4 v0, -0x1

    .line 186
    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentProgress:I

    .line 191
    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    .line 195
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->supportsCalls:Z

    .line 204
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->rect:Landroid/graphics/RectF;

    .line 206
    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/FragmentContextView$1;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->updateScheduleTimeRunnable:Ljava/lang/Runnable;

    .line 234
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    .line 242
    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastLocationSharingCount:I

    .line 243
    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/FragmentContextView$2;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkLocationRunnable:Ljava/lang/Runnable;

    .line 250
    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    .line 294
    iput-object p5, p0, Lorg/telegram/ui/Components/FragmentContextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 296
    iput-object p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 297
    instance-of p5, p2, Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz p5, :cond_0

    .line 298
    move-object p5, p2

    check-cast p5, Lorg/telegram/ui/Components/ChatActivityInterface;

    iput-object p5, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    .line 300
    :cond_0
    iput-object p3, p0, Lorg/telegram/ui/Components/FragmentContextView;->applyingView:Landroid/view/View;

    .line 301
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 302
    iput-boolean p4, p0, Lorg/telegram/ui/Components/FragmentContextView;->isLocation:Z

    if-nez p3, :cond_1

    .line 305
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    .line 306
    iget-object p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 309
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 285
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/FragmentContextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 289
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/FragmentContextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/text/TextPaint;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->gradientTextPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/FragmentContextView;)I
    .locals 0

    .line 93
    iget p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/FragmentContextView;)I
    .locals 0

    .line 93
    iget p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->gradientWidth:I

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/FragmentContextView;I)I
    .locals 0

    .line 93
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->gradientWidth:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/LinearGradient;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->linearGradient:Landroid/graphics/LinearGradient;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/FragmentContextView;Landroid/graphics/LinearGradient;)Landroid/graphics/LinearGradient;
    .locals 0

    .line 93
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->linearGradient:Landroid/graphics/LinearGradient;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/Paint;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->gradientPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/Matrix;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/RectF;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/FragmentContextView;Ljava/lang/String;)I
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/voip/CellFlickerDrawable;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonFlicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/FragmentContextView;)Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/FragmentContextView;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/FragmentContextView;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Components/FragmentContextView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 93
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/FragmentContextView;)I
    .locals 0

    .line 93
    iget p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/FragmentContextView;)I
    .locals 0

    .line 93
    iget p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/FragmentContextView;)Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkCallAfterAnimation:Z

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/FragmentContextView;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkCallAfterAnimation:Z

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/FragmentContextView;)Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayerAfterAnimation:Z

    return p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Components/FragmentContextView;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayerAfterAnimation:Z

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/FragmentContextView;Z)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayer(Z)V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/FragmentContextView;)Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkImportAfterAnimation:Z

    return p0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Components/FragmentContextView;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkImportAfterAnimation:Z

    return p1
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Components/FragmentContextView;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ChatActivityInterface;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/FragmentContextView;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->startJoinFlickerAnimation()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/text/StaticLayout;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->timeLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/FragmentContextView;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    .line 93
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->timeLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/FragmentContextView;)Ljava/lang/Runnable;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->updateScheduleTimeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/FragmentContextView;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkLocationString()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/FragmentContextView;)Ljava/lang/Runnable;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkLocationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AvatarsImageView;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    return-object p0
.end method

.method private checkCreateView()V
    .locals 24

    move-object/from16 v0, p0

    .line 321
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 327
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v3, :cond_1

    .line 328
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 330
    :cond_1
    new-instance v3, Lorg/telegram/ui/Components/FragmentContextView$3;

    invoke-direct {v3, v0, v1, v2}, Lorg/telegram/ui/Components/FragmentContextView$3;-><init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/16 v5, 0x24

    const/16 v6, 0x33

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 378
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->selector:Landroid/view/View;

    .line 381
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->shadow:Landroid/view/View;

    .line 384
    sget v3, Lorg/telegram/messenger/R$drawable;->blockpanel_shadow:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 385
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->shadow:Landroid/view/View;

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/16 v5, 0x33

    const/4 v6, 0x0

    const/16 v7, 0x24

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    .line 388
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 389
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "inappPlayerPlayPause"

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 390
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/PlayPauseDrawable;

    const/16 v5, 0xe

    invoke-direct {v3, v5}, Lorg/telegram/ui/Components/PlayPauseDrawable;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 391
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const v3, 0x19ffffff

    const/16 v6, 0x15

    const/4 v7, 0x1

    if-lt v2, v6, :cond_2

    .line 392
    iget-object v8, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    and-int/2addr v9, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v9, v7, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 394
    :cond_2
    iget-object v8, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    const/16 v9, 0x24

    const/16 v10, 0x33

    invoke-static {v9, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v8, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    iget-object v8, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    new-instance v11, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda7;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    new-instance v8, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v8, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 406
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 407
    iget-object v8, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 408
    iget-object v8, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v11, Lorg/telegram/messenger/R$raw;->import_progress:I

    const/16 v12, 0x1e

    invoke-virtual {v8, v11, v12, v12}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 409
    iget-object v8, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v11, 0x16

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v11, v4}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 410
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v11, 0x16

    const/16 v12, 0x16

    const/16 v13, 0x33

    const/4 v14, 0x7

    const/4 v15, 0x7

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    new-instance v4, Lorg/telegram/ui/Components/FragmentContextView$4;

    invoke-direct {v4, v0, v1, v1}, Lorg/telegram/ui/Components/FragmentContextView$4;-><init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/4 v11, -0x1

    const/16 v12, 0x24

    const/16 v14, 0x23

    const/4 v15, 0x0

    const/16 v16, 0x24

    .line 440
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    new-instance v4, Lorg/telegram/ui/Components/FragmentContextView$5;

    invoke-direct {v4, v0, v1, v1}, Lorg/telegram/ui/Components/FragmentContextView$5;-><init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/16 v15, 0xa

    .line 456
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    new-instance v4, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonFlicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/high16 v8, 0x40000000    # 2.0f

    .line 459
    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setProgress(F)V

    .line 460
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonFlicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/4 v8, 0x0

    iput-boolean v8, v4, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->repeatEnabled:Z

    .line 461
    new-instance v4, Lorg/telegram/ui/Components/FragmentContextView$6;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/FragmentContextView$6;-><init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    .line 481
    sget v11, Lorg/telegram/messenger/R$string;->VoipChatJoin:I

    const-string v12, "VoipChatJoin"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    const-string v11, "featuredStickers_buttonText"

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 483
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    const/16 v11, 0x10

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    const-string v13, "featuredStickers_addButton"

    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v13

    const-string v14, "featuredStickers_addButtonPressed"

    invoke-direct {v0, v14}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v14

    invoke-static {v12, v13, v14}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 484
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    const/high16 v12, 0x41600000    # 14.0f

    invoke-virtual {v4, v7, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 485
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    const-string v12, "fonts/rmedium.ttf"

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 486
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    const/16 v12, 0x11

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 487
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v4, v13, v8, v14, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 488
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    const/4 v13, -0x2

    const/16 v14, 0x1c

    const/16 v15, 0x35

    const/16 v16, 0x0

    const/16 v17, 0xa

    const/16 v18, 0xe

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v4, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    new-instance v13, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda2;

    invoke-direct {v13, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButton:Landroid/widget/FrameLayout;

    .line 492
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButtonImage:Landroid/widget/ImageView;

    .line 493
    sget v13, Lorg/telegram/messenger/R$drawable;->msg_mute:I

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 494
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButtonImage:Landroid/widget/ImageView;

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    const-string v14, "inappPlayerClose"

    invoke-direct {v0, v14}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v15

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v15, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 495
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButton:Landroid/widget/FrameLayout;

    iget-object v11, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButtonImage:Landroid/widget/ImageView;

    const/16 v13, 0x14

    invoke-static {v13, v13, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-lt v2, v6, :cond_3

    .line 497
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButton:Landroid/widget/FrameLayout;

    invoke-direct {v0, v14}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v11

    and-int/2addr v11, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v11, v7, v12}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 499
    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButton:Landroid/widget/FrameLayout;

    sget v11, Lorg/telegram/messenger/R$string;->Unmute:I

    const-string v12, "Unmute"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButton:Landroid/widget/FrameLayout;

    sget-object v11, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda9;->INSTANCE:Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda9;

    invoke-virtual {v4, v11}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButton:Landroid/widget/FrameLayout;

    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 504
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButton:Landroid/widget/FrameLayout;

    const/16 v17, 0x24

    const/16 v18, 0x24

    const/16 v19, 0x35

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x24

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v4, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    iget-boolean v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->isLocation:Z

    if-nez v4, :cond_4

    .line 507
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->createPlaybackSpeedButton()V

    .line 510
    :cond_4
    new-instance v4, Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-direct {v4, v1, v8}, Lorg/telegram/ui/Components/AvatarsImageView;-><init>(Landroid/content/Context;Z)V

    iput-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    .line 511
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    .line 512
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    new-instance v8, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda12;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/AvatarsImageView;->setDelegate(Ljava/lang/Runnable;)V

    .line 513
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 514
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v8, 0x6c

    invoke-static {v8, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v8, Lorg/telegram/messenger/R$raw;->voice_muted:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v9, 0x10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v20

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v21

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v17, v4

    move/from16 v18, v8

    invoke-direct/range {v17 .. v23}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 518
    new-instance v4, Lorg/telegram/ui/Components/FragmentContextView$7;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/FragmentContextView$7;-><init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    .line 607
    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    const-string v9, "returnToCallText"

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-lt v2, v6, :cond_5

    .line 609
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v14}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    and-int/2addr v8, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v8, v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 611
    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v8, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 612
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 613
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 614
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v15, 0x24

    const/16 v16, 0x24

    const/16 v17, 0x35

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v8, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda6;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    .line 650
    sget v1, Lorg/telegram/messenger/R$drawable;->miniplayer_close:I

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 651
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v14}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-lt v2, v6, :cond_6

    .line 653
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    invoke-direct {v0, v14}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    and-int/2addr v2, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2, v7, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 655
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 656
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    const/16 v2, 0x24

    const/16 v3, 0x24

    const/16 v4, 0x35

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private checkLiveLocation(Z)V
    .locals 11

    .line 1503
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 1505
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 1510
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v0, Lorg/telegram/ui/DialogsActivity;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 1511
    invoke-static {}, Lorg/telegram/messenger/LocationController;->getLocationsCount()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1513
    :cond_3
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result v0

    :goto_0
    const/4 v2, 0x0

    const-wide/16 v4, 0xc8

    const-string v6, "topPadding"

    const/4 v7, 0x0

    if-nez v0, :cond_7

    const/4 v0, -0x1

    .line 1516
    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastLocationSharingCount:I

    .line 1517
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkLocationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1518
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v0, :cond_14

    .line 1519
    iput-boolean v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz p1, :cond_5

    .line 1521
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    .line 1522
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 1524
    :cond_4
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    goto/16 :goto_7

    .line 1526
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_6

    .line 1527
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1528
    iput-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1530
    :cond_6
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v1, [Landroid/animation/Animator;

    new-array v1, v1, [F

    aput v7, v1, v3

    .line 1531
    invoke-static {p0, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1532
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1533
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/FragmentContextView$9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FragmentContextView$9;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1542
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_7

    .line 1546
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    const/4 v0, 0x2

    .line 1547
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    .line 1548
    iget-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    new-instance v9, Lorg/telegram/ui/Components/ShareLocationDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v1}, Lorg/telegram/ui/Components/ShareLocationDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_8

    .line 1549
    iget v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    cmpl-float v7, v8, v7

    if-nez v7, :cond_8

    .line 1550
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    .line 1552
    :cond_8
    iget-boolean v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-nez v7, :cond_b

    if-nez p1, :cond_a

    .line 1554
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_9

    .line 1555
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1556
    iput-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1558
    :cond_9
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    new-array v7, v1, [F

    .line 1559
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v3

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1560
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1561
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/FragmentContextView$10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/FragmentContextView$10;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1569
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1571
    :cond_a
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 1572
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 1575
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p1, p1, Lorg/telegram/ui/DialogsActivity;

    if-eqz p1, :cond_13

    .line 1576
    sget p1, Lorg/telegram/messenger/R$string;->LiveLocationContext:I

    const-string v2, "LiveLocationContext"

    invoke-static {v2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1579
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x5

    if-ge v4, v5, :cond_c

    .line 1581
    invoke-static {v4}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1583
    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_f

    .line 1584
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .line 1585
    iget-object v4, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    .line 1586
    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1587
    iget-object v2, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 1588
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    .line 1589
    sget v4, Lorg/telegram/messenger/R$string;->AttachLiveLocationIsSharing:I

    const-string v5, "AttachLiveLocationIsSharing"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 1591
    :cond_d
    iget-object v2, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1593
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_2

    :cond_e
    const-string v2, ""

    .line 1597
    :goto_2
    sget v4, Lorg/telegram/messenger/R$string;->AttachLiveLocationIsSharingChat:I

    const-string v5, "AttachLiveLocationIsSharingChat"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 1600
    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Chats"

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1601
    sget v4, Lorg/telegram/messenger/R$string;->AttachLiveLocationIsSharingChats:I

    const-string v5, "AttachLiveLocationIsSharingChats"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_3
    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object v2, v5, v1

    .line 1603
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1604
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1605
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_12

    .line 1607
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v1, :cond_10

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v5

    goto :goto_5

    :cond_10
    invoke-virtual {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v5

    :goto_5
    if-nez v5, :cond_11

    goto :goto_6

    .line 1611
    :cond_11
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1614
    :cond_12
    new-instance v0, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    const-string v5, "inappPlayerPerformer"

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v0, v1, v3, v5}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;II)V

    .line 1615
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v2

    const/16 v1, 0x12

    invoke-virtual {v4, v0, v2, p1, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1616
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p1, v4, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_7

    .line 1618
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkLocationRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1619
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkLocationString()V

    :cond_14
    :goto_7
    return-void
.end method

.method private checkLocationString()V
    .locals 15

    .line 1625
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 1628
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    .line 1629
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v0

    .line 1630
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    .line 1631
    invoke-static {v2}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocationController;->locationsCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1632
    iget-boolean v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->firstLocationsLoaded:Z

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 1633
    invoke-static {v2}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lorg/telegram/messenger/LocationController;->loadLiveLocations(J)V

    .line 1634
    iput-boolean v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->firstLocationsLoaded:Z

    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_5

    .line 1640
    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    .line 1641
    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1642
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_6

    .line 1643
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Message;

    .line 1644
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v13, :cond_2

    goto :goto_1

    .line 1647
    :cond_2
    iget v14, v12, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->period:I

    add-int/2addr v14, v13

    if-le v14, v9, :cond_4

    .line 1648
    invoke-static {v12}, Lorg/telegram/messenger/MessageObject;->getFromChatId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v12

    if-nez v4, :cond_3

    cmp-long v14, v12, v7

    if-eqz v14, :cond_3

    .line 1650
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    :cond_3
    add-int/lit8 v11, v11, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    const/4 v11, 0x0

    .line 1656
    :cond_6
    iget v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastLocationSharingCount:I

    if-ne v3, v11, :cond_7

    return-void

    .line 1659
    :cond_7
    iput v11, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastLocationSharingCount:I

    .line 1661
    sget v3, Lorg/telegram/messenger/R$string;->LiveLocationContext:I

    const-string v7, "LiveLocationContext"

    invoke-static {v7, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x2

    if-nez v11, :cond_8

    move-object v0, v3

    goto/16 :goto_2

    :cond_8
    sub-int/2addr v11, v5

    .line 1667
    invoke-static {v2}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result v0

    const-string v1, "AndOther"

    const/4 v2, 0x3

    const-string v8, "%1$s - %2$s %3$s"

    const-string v9, "%1$s - %2$s"

    if-eqz v0, :cond_b

    const-string v0, "ChatYourSelfName"

    if-eqz v11, :cond_a

    if-ne v11, v5, :cond_9

    if-eqz v4, :cond_9

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v3, v0, v6

    .line 1670
    sget v1, Lorg/telegram/messenger/R$string;->SharingYouAndOtherName:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    const-string v4, "SharingYouAndOtherName"

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v6

    .line 1672
    sget v4, Lorg/telegram/messenger/R$string;->ChatYourSelfName:I

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v1, v11, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_a
    new-array v1, v7, [Ljava/lang/Object;

    aput-object v3, v1, v6

    .line 1675
    sget v2, Lorg/telegram/messenger/R$string;->ChatYourSelfName:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_b
    if-eqz v11, :cond_c

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v3, v0, v6

    .line 1679
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v11, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_c
    new-array v0, v7, [Ljava/lang/Object;

    aput-object v3, v0, v6

    .line 1681
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1685
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    .line 1688
    :cond_d
    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastString:Ljava/lang/String;

    .line 1689
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1690
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v7, :cond_10

    .line 1692
    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v0, :cond_e

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    goto :goto_4

    :cond_e
    invoke-virtual {v4}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v4

    :goto_4
    if-nez v4, :cond_f

    goto :goto_5

    .line 1696
    :cond_f
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_10
    if-ltz v1, :cond_11

    .line 1699
    new-instance v0, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    const-string v5, "inappPlayerPerformer"

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v0, v4, v6, v5}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;II)V

    .line 1700
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    const/16 v4, 0x12

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1702
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v0, v2, v6}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    :cond_12
    :goto_6
    return-void
.end method

.method private checkPlayer(Z)V
    .locals 13

    .line 1706
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 1709
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 1710
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    if-nez p1, :cond_4

    if-eqz v2, :cond_4

    .line 1712
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 p1, 0x1

    .line 1716
    :cond_4
    iget-boolean v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    const-wide/16 v3, 0xc8

    const-string v5, "topPadding"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v0, :cond_1b

    .line 1717
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    if-eqz v9, :cond_1b

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v9

    if-nez v9, :cond_1b

    iget-boolean v9, p0, Lorg/telegram/ui/Components/FragmentContextView;->supportsVoices:Z

    if-nez v9, :cond_5

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v9

    if-nez v9, :cond_1b

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v9

    if-eqz v9, :cond_5

    goto/16 :goto_b

    .line 1779
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    .line 1780
    iget v9, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eqz v9, :cond_6

    iget-object v10, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v10, :cond_6

    if-nez p1, :cond_6

    .line 1781
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayerAfterAnimation:Z

    return-void

    .line 1785
    :cond_6
    invoke-direct {p0, v8}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    if-eqz p1, :cond_7

    .line 1786
    iget v10, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    cmpl-float v10, v10, v6

    if-nez v10, :cond_7

    .line 1787
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePaddings()V

    .line 1788
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0, v10}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    .line 1789
    iget-object v10, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    if-eqz v10, :cond_7

    .line 1790
    invoke-interface {v10, v1, v1}, Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;->onAnimation(ZZ)V

    .line 1791
    iget-object v10, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    invoke-interface {v10, v8, v1}, Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;->onAnimation(ZZ)V

    .line 1794
    :cond_7
    iget-boolean v10, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-nez v10, :cond_c

    if-nez p1, :cond_b

    .line 1796
    iget-object v10, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v10, :cond_8

    .line 1797
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1798
    iput-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1800
    :cond_8
    iget v10, p0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    invoke-static {v10}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v10

    iget v11, p0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    invoke-virtual {v10, v11, v7}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v7

    iput v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    .line 1801
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1802
    iget-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_9

    .line 1803
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 1805
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1807
    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    if-eqz v7, :cond_a

    .line 1808
    invoke-interface {v7, v1, v1}, Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;->onAnimation(ZZ)V

    .line 1810
    :cond_a
    iget-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v10, v1, [Landroid/animation/Animator;

    new-array v11, v1, [F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v12

    int-to-float v12, v12

    aput v12, v11, v8

    invoke-static {p0, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v10, v8

    invoke-virtual {v7, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1811
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1812
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Components/FragmentContextView$12;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/FragmentContextView$12;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1834
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1836
    :cond_b
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 1837
    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 1839
    :cond_c
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1840
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v8, v4}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    .line 1841
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$string;->AccActionPlay:I

    const-string v5, "AccActionPlay"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1843
    :cond_d
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v1, v4}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    .line 1844
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$string;->AccActionPause:I

    const-string v5, "AccActionPause"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1846
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v3, v0, :cond_e

    if-eqz v9, :cond_26

    .line 1847
    :cond_e
    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1849
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x2c

    const/4 v7, 0x2

    if-nez v3, :cond_14

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-eqz v3, :cond_f

    goto/16 :goto_6

    .line 1868
    :cond_f
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    .line 1869
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_11

    .line 1870
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v3

    const/16 v9, 0x258

    if-lt v3, v9, :cond_10

    .line 1871
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1872
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1873
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3, v8, v8, v4, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1874
    invoke-direct {p0, v8}, Lorg/telegram/ui/Components/FragmentContextView;->updatePlaybackButton(Z)V

    goto :goto_2

    .line 1876
    :cond_10
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1877
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1878
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_2

    .line 1881
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1883
    :goto_2
    new-instance v3, Landroid/text/SpannableStringBuilder;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%s - %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_19

    .line 1885
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v4, :cond_12

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v5

    goto :goto_4

    :cond_12
    invoke-virtual {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v5

    :goto_4
    if-nez v5, :cond_13

    goto :goto_5

    .line 1889
    :cond_13
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1850
    :cond_14
    :goto_6
    iput-boolean v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    .line 1851
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_15

    .line 1852
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1853
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1855
    :cond_15
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3, v8, v8, v4, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1856
    new-instance v3, Landroid/text/SpannableStringBuilder;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%s %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v7, :cond_18

    .line 1859
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v4, :cond_16

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v5

    goto :goto_8

    :cond_16
    invoke-virtual {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v5

    :goto_8
    if-nez v5, :cond_17

    goto :goto_9

    .line 1863
    :cond_17
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1866
    :cond_18
    invoke-direct {p0, v8}, Lorg/telegram/ui/Components/FragmentContextView;->updatePlaybackButton(Z)V

    .line 1892
    :cond_19
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->fixOpenMusicButtonPaddings()V

    .line 1893
    new-instance v4, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    const-string v6, "inappPlayerPerformer"

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v4, v5, v8, v6}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;II)V

    .line 1894
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x12

    invoke-virtual {v3, v4, v8, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1895
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez p1, :cond_1a

    if-eqz v2, :cond_1a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    if-eqz p1, :cond_1a

    goto :goto_a

    :cond_1a
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_e

    .line 1718
    :cond_1b
    :goto_b
    iput-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1719
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->supportsCalls:Z

    if-eqz v0, :cond_1c

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isHangingUp()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_1c

    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_c

    :cond_1c
    const/4 v0, 0x0

    .line 1720
    :goto_c
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v2

    if-nez v2, :cond_1e

    if-nez v0, :cond_1e

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v2, :cond_1e

    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1721
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1722
    invoke-virtual {v0}, Lorg/telegram/messenger/ChatObject$Call;->shouldShowPanel()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_d

    :cond_1d
    const/4 v0, 0x0

    :cond_1e
    :goto_d
    if-eqz v0, :cond_1f

    .line 1725
    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    return-void

    .line 1728
    :cond_1f
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_25

    .line 1729
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSubMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1730
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    .line 1732
    :cond_20
    iput-boolean v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz p1, :cond_22

    .line 1734
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_21

    .line 1735
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 1737
    :cond_21
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    goto :goto_e

    .line 1739
    :cond_22
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_23

    .line 1740
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1741
    iput-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1743
    :cond_23
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    invoke-virtual {p1, v0, v7}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    .line 1744
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v1, [Landroid/animation/Animator;

    new-array v2, v1, [F

    aput v6, v2, v8

    .line 1745
    invoke-static {p0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v8

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1746
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1747
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    if-eqz p1, :cond_24

    .line 1748
    invoke-interface {p1, v1, v8}, Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;->onAnimation(ZZ)V

    .line 1750
    :cond_24
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/FragmentContextView$11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FragmentContextView$11;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1773
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_e

    .line 1776
    :cond_25
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    :cond_26
    :goto_e
    return-void
.end method

.method private checkVisibility()V
    .locals 5

    .line 993
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isLocation:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 994
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v0, Lorg/telegram/ui/DialogsActivity;

    if-eqz v3, :cond_0

    .line 995
    invoke-static {}, Lorg/telegram/messenger/LocationController;->getLocationsCount()I

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_0

    .line 997
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result v2

    goto/16 :goto_0

    .line 1000
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isHangingUp()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v0

    const/16 v3, 0xf

    if-eq v0, v3, :cond_2

    .line 1002
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->startJoinFlickerAnimation()V

    goto :goto_0

    .line 1003
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v3}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/SendMessagesHelper;->getImportingHistory(J)Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 1005
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ChatObject$Call;->shouldShowPanel()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1007
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->startJoinFlickerAnimation()V

    goto :goto_0

    .line 1009
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1010
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    .line 1016
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_6

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInMenuMode()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    :cond_6
    if-eqz v2, :cond_7

    .line 1021
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    :cond_7
    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    const/16 v1, 0x8

    .line 1023
    :goto_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    return-void
.end method

.method private createPlaybackSpeedButton()V
    .locals 15

    .line 784
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    return-void

    .line 787
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "dialogTextBlack"

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/FragmentContextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x1e

    .line 788
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 789
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 790
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 791
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 792
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSubmenuByMove(Z)V

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrPlayerSpeed:I

    const-string v4, "AccDescrPlayerSpeed"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 794
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 804
    new-instance v0, Lorg/telegram/ui/Components/SpeedIconDrawable;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SpeedIconDrawable;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedIcon:Lorg/telegram/ui/Components/SpeedIconDrawable;

    .line 805
    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x3

    new-array v4, v0, [F

    .line 806
    fill-array-data v4, :array_0

    .line 807
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;

    .line 808
    new-instance v6, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda13;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->setOnValueChange(Lorg/telegram/messenger/Utilities$Callback2;)V

    .line 812
    new-instance v5, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v1, v3, v3}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSliderText:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string v6, "fonts/rmedium.ttf"

    .line 813
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 814
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSliderText:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 815
    iget-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSliderText:Lorg/telegram/ui/Components/AnimatedTextView;

    const v8, 0x3e99999a    # 0.3f

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0xa5

    sget-object v13, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 816
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSliderText:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 817
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSliderText:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 818
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSliderText:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    const v6, 0x3e99999a    # 0.3f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 819
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;

    iget-object v6, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSliderText:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v7, -0x2

    const/4 v8, -0x2

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v14, 0x5

    if-eqz v9, :cond_1

    const/4 v9, 0x5

    goto :goto_0

    :cond_1
    const/4 v9, 0x3

    :goto_0
    or-int/lit8 v9, v9, 0x10

    const/16 v10, 0x14

    const/4 v11, 0x0

    const/16 v12, 0x14

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 820
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    iget-object v6, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_speed_slow:I

    sget v8, Lorg/telegram/messenger/R$string;->SpeedSlow:I

    const-string v9, "SpeedSlow"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v1, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazilyAddSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object v6

    aput-object v6, v5, v1

    .line 821
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    iget-object v6, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_speed_normal:I

    sget v8, Lorg/telegram/messenger/R$string;->SpeedNormal:I

    const-string v9, "SpeedNormal"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v3, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazilyAddSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object v6

    aput-object v6, v5, v3

    .line 822
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    iget-object v6, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_speed_medium:I

    sget v8, Lorg/telegram/messenger/R$string;->SpeedMedium:I

    const-string v9, "SpeedMedium"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v6, v9, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazilyAddSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object v6

    aput-object v6, v5, v9

    .line 823
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    iget-object v6, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_speed_fast:I

    sget v8, Lorg/telegram/messenger/R$string;->SpeedFast:I

    const-string v9, "SpeedFast"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v0, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazilyAddSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object v6

    aput-object v6, v5, v0

    .line 824
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_speed_veryfast:I

    sget v7, Lorg/telegram/messenger/R$string;->SpeedVeryFast:I

    const-string v8, "SpeedVeryFast"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v5, v8, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazilyAddSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object v5

    aput-object v5, v0, v8

    .line 825
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_speed_superfast:I

    sget v7, Lorg/telegram/messenger/R$string;->SpeedSuperFast:I

    const-string v8, "SpeedSuperFast"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v14, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazilyAddSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object v5

    aput-object v5, v0, v14

    .line 826
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v5, 0x40400000    # 3.0f

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_2

    .line 827
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 829
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalXOffset(I)V

    .line 830
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v6, 0x24

    const/16 v7, 0x24

    const/16 v8, 0x35

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x24

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v4}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/FragmentContextView;[F)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 863
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 872
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->updatePlaybackButton(Z)V

    .line 874
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    .line 875
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 876
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_cloud_filter_music:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 877
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_3

    .line 878
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 880
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "inappPlayerClose"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 881
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const v2, 0x19ffffff

    and-int/2addr v1, v2

    const/16 v2, 0xe

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 882
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    const/16 v1, 0x24

    const/16 v2, 0x24

    const/16 v3, 0x35

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x24

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 883
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private equals(FF)Z
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float p1, p1, v0

    .line 1042
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    mul-float p2, p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3a83126f    # 0.001f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private fixOpenMusicButtonPaddings()V
    .locals 12

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->supportsVoices:Z

    if-eqz v0, :cond_4

    .line 145
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    const/16 v1, 0x24

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x24

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 146
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    add-int/lit8 v5, v0, 0x2c

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v4, v3, v3, v5, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 147
    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    const/16 v5, 0x24

    const/16 v6, 0x24

    const/16 v7, 0x35

    const/4 v8, 0x0

    const/4 v9, 0x0

    add-int/lit8 v10, v0, 0x24

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 2510
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2511
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private getTitleTextColor()I
    .locals 2

    .line 2501
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "inappPlayerPerformer"

    .line 2502
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "inappPlayerTitle"

    .line 2506
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    const-string v0, "returnToCallText"

    .line 2504
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private isPlayingVoice()Z
    .locals 1

    .line 2030
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2031
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$checkCreateView$0(Landroid/view/View;)V
    .locals 1

    .line 396
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-nez p1, :cond_1

    .line 397
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 398
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0

    .line 400
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$checkCreateView$1(Landroid/view/View;)V
    .locals 0

    .line 489
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->callOnClick()Z

    return-void
.end method

.method private static synthetic lambda$checkCreateView$2(Landroid/view/View;)V
    .locals 1

    .line 501
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->updateSilent(Z)V

    return-void
.end method

.method private synthetic lambda$checkCreateView$3()V
    .locals 1

    const/4 v0, 0x1

    .line 512
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->updateAvatars(Z)V

    return-void
.end method

.method private synthetic lambda$checkCreateView$4(Landroid/view/View;)V
    .locals 4

    .line 617
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 621
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 625
    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_2

    .line 626
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    .line 627
    iget-object v0, p1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    .line 628
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 629
    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eqz v0, :cond_2

    .line 630
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    if-nez v2, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    if-eqz v0, :cond_2

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 635
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    const/4 v2, 0x0

    .line 636
    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    .line 637
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xf

    goto :goto_0

    :cond_3
    const/16 v0, 0x1d

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 638
    iget-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    if-eqz p1, :cond_4

    .line 639
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_1

    .line 641
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 644
    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 645
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->updateState(Z)V

    .line 646
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->performHapticFeedback(II)Z

    return-void
.end method

.method private synthetic lambda$checkCreateView$5(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 680
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p2, p1, Lorg/telegram/ui/DialogsActivity;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x5

    if-ge p1, p2, :cond_1

    .line 682
    invoke-static {p1}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/LocationController;->removeAllLocationSharings()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 685
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {p2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/LocationController;->removeSharingLocation(J)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$checkCreateView$6(Landroid/view/View;)V
    .locals 4

    .line 659
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayer()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 663
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_4

    .line 664
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 665
    sget v0, Lorg/telegram/messenger/R$string;->StopLiveLocationAlertToTitle:I

    const-string v2, "StopLiveLocationAlertToTitle"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 666
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_1

    .line 667
    sget v0, Lorg/telegram/messenger/R$string;->StopLiveLocationAlertAllText:I

    const-string v1, "StopLiveLocationAlertAllText"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 669
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 670
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 672
    sget v2, Lorg/telegram/messenger/R$string;->StopLiveLocationAlertToGroupText:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v0, v1, v3

    const-string v0, "StopLiveLocationAlertToGroupText"

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 674
    sget v0, Lorg/telegram/messenger/R$string;->StopLiveLocationAlertToUserText:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "StopLiveLocationAlertToUserText"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 676
    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->AreYouSure:I

    const-string v1, "AreYouSure"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 679
    :goto_0
    sget v0, Lorg/telegram/messenger/R$string;->Stop:I

    const-string v1, "Stop"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 688
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v1, "Cancel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 689
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 690
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 p1, -0x1

    .line 691
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    const-string v0, "dialogTextRed2"

    .line 693
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 696
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method private synthetic lambda$checkCreateView$7(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 774
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->checkImport(Z)V

    return-void
.end method

.method private synthetic lambda$checkCreateView$8(Landroid/view/View;)V
    .locals 14

    .line 701
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const-wide/16 v0, 0x0

    if-nez p1, :cond_5

    .line 702
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    .line 703
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_12

    if-eqz p1, :cond_12

    .line 704
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 705
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_12

    .line 706
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_4

    .line 710
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v2, :cond_1

    .line 711
    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v0

    .line 713
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    .line 714
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lorg/telegram/ui/Components/ChatActivityInterface;->scrollToMessageId(IIZIZI)V

    goto/16 :goto_4

    .line 716
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    .line 717
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 718
    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 719
    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v0

    const-string v1, "enc_id"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 720
    :cond_3
    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "user_id"

    .line 721
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    neg-long v0, v0

    const-string v3, "chat_id"

    .line 723
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 725
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    const-string v0, "message_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 726
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, v2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_4

    :cond_5
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    .line 731
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "voip"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 732
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_6
    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-ne p1, v3, :cond_b

    .line 735
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 736
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v3, :cond_7

    .line 737
    invoke-interface {v3}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v2

    .line 738
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p1

    goto :goto_2

    .line 739
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/LocationController;->getLocationsCount()I

    move-result v3

    if-ne v3, v2, :cond_9

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_9

    .line 741
    invoke-static {v2}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    .line 742
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 743
    invoke-static {v2}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .line 744
    iget-wide v2, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    .line 745
    iget-object p1, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    goto :goto_2

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    move-wide v2, v0

    :goto_2
    cmp-long v4, v2, v0

    if-eqz v4, :cond_a

    .line 751
    invoke-static {p1}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->openSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    goto/16 :goto_4

    .line 753
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v0, Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/SharingLocationsAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SharingLocationsAlert$SharingLocationsAlertDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_4

    :cond_b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    .line 756
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_12

    .line 757
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/GroupCallActivity;->create(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    const/4 v0, 0x4

    if-ne p1, v0, :cond_10

    .line 760
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_d

    return-void

    .line 763
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object p1

    if-nez p1, :cond_e

    return-void

    .line 767
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p1, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz p1, :cond_f

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-nez p1, :cond_f

    goto :goto_3

    :cond_f
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v13

    invoke-static/range {v6 .. v13}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/String;ZLjava/lang/Boolean;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;)V

    goto :goto_4

    :cond_10
    if-ne p1, v4, :cond_12

    .line 769
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->getImportingHistory(J)Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    move-result-object p1

    if-nez p1, :cond_11

    return-void

    .line 773
    :cond_11
    new-instance p1, Lorg/telegram/ui/Components/ImportingAlert;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/ImportingAlert;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 774
    new-instance v0, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnHideListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 775
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 776
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->checkImport(Z)V

    :cond_12
    :goto_4
    return-void
.end method

.method private synthetic lambda$createPlaybackSpeedButton$10(Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 1

    .line 809
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const p2, 0x400ccccd    # 2.2f

    mul-float p1, p1, p2

    const p2, 0x3e99999a    # 0.3f

    add-float/2addr p1, p2

    .line 810
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {p2, v0, p1}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    return-void
.end method

.method private synthetic lambda$createPlaybackSpeedButton$11([FLandroid/view/View;)V
    .locals 6

    .line 832
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 835
    :goto_0
    array-length v2, p1

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    const v2, 0x3dcccccd    # 0.1f

    sub-float v2, p2, v2

    .line 836
    aget v4, p1, v1

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 842
    array-length v2, p1

    if-lt v1, v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 845
    :goto_2
    aget p1, p1, v0

    .line 846
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    .line 847
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedChanged(FF)V

    .line 849
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 850
    iget-wide v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastPlaybackClick:J

    sub-long v0, p1, v0

    const-wide/16 v4, 0x190

    cmp-long v2, v0, v4

    if-lez v2, :cond_4

    .line 851
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "speedhint"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v3

    const/16 v3, -0xa

    if-ge v0, v3, :cond_3

    goto :goto_3

    :cond_3
    move v2, v0

    .line 856
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-ltz v2, :cond_4

    .line 858
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->showSpeedHint()V

    .line 861
    :cond_4
    iput-wide p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastPlaybackClick:J

    return-void
.end method

.method private synthetic lambda$createPlaybackSpeedButton$12(Landroid/view/View;)Z
    .locals 2

    .line 864
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result p1

    .line 865
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;

    const v1, 0x3e99999a    # 0.3f

    sub-float/2addr p1, v1

    const v1, 0x400ccccd    # 2.2f

    div-float/2addr p1, v1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->setValue(FZ)V

    .line 866
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->invalidateBlur(Z)V

    .line 867
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v0, "actionBarDefaultSubmenuBackground"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 868
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->updateColor()V

    .line 869
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu(Landroid/view/View;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$createPlaybackSpeedButton$13(Landroid/view/View;)V
    .locals 2

    .line 884
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_2

    .line 885
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 888
    :cond_0
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isMusicIntroShown:Z

    if-eqz p1, :cond_1

    .line 889
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v0, Lorg/fork/ui/fragment/MusicActivity;

    invoke-direct {v0}, Lorg/fork/ui/fragment/MusicActivity;-><init>()V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 891
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v0, Lorg/telegram/ui/ActionIntroActivity;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$createPlaybackSpeedButton$9(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 795
    sget-object v0, Lorg/telegram/ui/Components/FragmentContextView;->speeds:[F

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 798
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result v1

    aget p1, v0, p1

    .line 799
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {v0, v2, p1}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    cmpl-float v0, v1, p1

    if-eqz v0, :cond_1

    .line 801
    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedChanged(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$openSharingLocation$14(Lorg/telegram/messenger/LocationController$SharingLocationInfo;JLorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V
    .locals 12

    move-object v0, p0

    .line 982
    iget-object v0, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p3

    move-wide v3, p1

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$startJoinFlickerAnimation$15()V
    .locals 2

    .line 2269
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonFlicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setProgress(F)V

    .line 2270
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method private openSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 973
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 976
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    .line 977
    iget-object v1, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 979
    new-instance v1, Lorg/telegram/ui/LocationActivity;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/telegram/ui/LocationActivity;-><init>(I)V

    .line 980
    iget-object v2, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/LocationActivity;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 981
    iget-object v2, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    .line 982
    new-instance v4, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda16;

    invoke-direct {v4, p1, v2, v3}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/LocationController$SharingLocationInfo;J)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/LocationActivity;->setDelegate(Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;)V

    .line 983
    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private playbackSpeedChanged(FF)V
    .locals 1

    .line 1046
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FragmentContextView;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1053
    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/Components/FragmentContextView;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    return-void

    .line 1057
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->AudioSpeedNormal:I

    const-string p2, "AudioSpeedNormal"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1058
    sget p2, Lorg/telegram/messenger/R$raw;->speed_2to1:I

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3fc00000    # 1.5f

    .line 1059
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/FragmentContextView;->equals(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1060
    sget p1, Lorg/telegram/messenger/R$string;->AudioSpeedMedium:I

    const-string p2, "AudioSpeedMedium"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1061
    sget p2, Lorg/telegram/messenger/R$raw;->speed_1to15:I

    goto :goto_0

    :cond_3
    const p1, 0x3fe66666    # 1.8f

    .line 1062
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/FragmentContextView;->equals(FF)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1063
    sget p1, Lorg/telegram/messenger/R$string;->AudioSpeedFast:I

    const-string p2, "AudioSpeedFast"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1064
    sget p2, Lorg/telegram/messenger/R$raw;->speed_15to2:I

    .line 1068
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1072
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_4
    return-void
.end method

.method private showSpeedHint()V
    .locals 4

    .line 901
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 902
    new-instance v0, Lorg/telegram/ui/Components/FragmentContextView$8;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/ui/Components/FragmentContextView$8;-><init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedHintView:Lorg/telegram/ui/Components/HintView;

    const/16 v1, 0x56

    .line 913
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setExtraTranslationY(F)V

    .line 914
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedHintView:Lorg/telegram/ui/Components/HintView;

    const-string v1, "SpeedHint"

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    .line 915
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v1, 0x3

    .line 916
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 917
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedHintView:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 918
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedHintView:Lorg/telegram/ui/Components/HintView;

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    :cond_0
    return-void
.end method

.method private startJoinFlickerAnimation()V
    .locals 3

    .line 2267
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonFlicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->getProgress()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2268
    new-instance v0, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private updateAvatars(Z)V
    .locals 11

    .line 2276
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2278
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 2279
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2280
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iput-object v0, v1, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    .line 2285
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    iget-object v2, v1, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_f

    .line 2287
    iget v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 2288
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v1, :cond_1

    .line 2289
    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v1

    .line 2290
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v3

    goto :goto_0

    .line 2293
    :cond_1
    iget v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    move-object v1, v0

    :goto_0
    move v4, v3

    move-object v3, v0

    goto :goto_2

    .line 2297
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2298
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    .line 2299
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v3, :cond_3

    move-object v3, v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 2300
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I

    move-result v4

    goto :goto_2

    .line 2304
    :cond_4
    iget v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    move-object v1, v0

    move v4, v3

    move-object v3, v1

    :goto_2
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_6

    .line 2308
    iget-object v3, v1, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_8

    if-ge v8, v3, :cond_5

    .line 2310
    iget-object v9, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    iget-object v10, v1, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v9, v8, v4, v10}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    goto :goto_4

    .line 2312
    :cond_5
    iget-object v9, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v9, v8, v4, v0}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    .line 2316
    iget-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v8, v6, v4, v3}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    const/4 v3, 0x1

    :goto_5
    if-ge v3, v5, :cond_8

    .line 2318
    iget-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v8, v3, v4, v0}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v5, :cond_8

    .line 2322
    iget-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v8, v3, v4, v0}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2325
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    .line 2327
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-ne v0, v2, :cond_10

    if-eqz v1, :cond_10

    .line 2328
    iget-object v0, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v0, :cond_9

    goto :goto_7

    :cond_9
    iget-object v0, v1, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_7
    const/16 v0, 0xa

    if-nez v6, :cond_a

    goto :goto_8

    :cond_a
    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x18

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x20

    add-int/2addr v0, v6

    :goto_8
    const/4 v2, 0x0

    if-eqz p1, :cond_b

    .line 2331
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2332
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-eq v3, p1, :cond_c

    .line 2333
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v3

    int-to-float p1, p1

    add-float/2addr v3, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v3, p1

    .line 2334
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2335
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2336
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v3, 0xdc

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2337
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_9

    .line 2340
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2341
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2342
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2343
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2345
    :cond_c
    :goto_9
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/4 v2, -0x1

    const/16 v3, 0x14

    const/16 v4, 0x33

    const/4 v6, 0x5

    invoke-virtual {v1}, Lorg/telegram/messenger/ChatObject$Call;->isScheduled()Z

    move-result v5

    const/16 v9, 0x5a

    const/16 v10, 0x24

    if-eqz v5, :cond_d

    const/16 v7, 0x5a

    goto :goto_a

    :cond_d
    const/16 v7, 0x24

    :goto_a
    const/4 v8, 0x0

    move v5, v0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2346
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/4 v2, -0x1

    const/16 v3, 0x14

    const/16 v4, 0x33

    const/16 v6, 0x19

    invoke-virtual {v1}, Lorg/telegram/messenger/ChatObject$Call;->isScheduled()Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v7, 0x5a

    goto :goto_b

    :cond_e
    const/16 v7, 0x24

    :goto_b
    const/4 v8, 0x0

    move v5, v0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    .line 2349
    :cond_f
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AvatarsImageView;->updateAfterTransitionEnd()V

    :cond_10
    :goto_c
    return-void
.end method

.method private updateCallTitle()V
    .locals 7

    .line 2464
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    .line 2465
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2466
    iget v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_9

    .line 2467
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v1

    .line 2468
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isSwitchingStream()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 2469
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$string;->VoipGroupConnecting:I

    const-string v2, "VoipGroupConnecting"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 2470
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2471
    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2472
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 2474
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v3, v1, v5

    if-nez v3, :cond_6

    .line 2475
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2476
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2477
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$string;->VoipChannelViewVoiceChat:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 2479
    :cond_4
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2480
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$string;->VoipChannelViewVoiceChat:I

    const-string v2, "VoipChannelViewVoiceChat"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 2482
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$string;->VoipGroupViewVoiceChat:I

    const-string v2, "VoipGroupViewVoiceChat"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 2486
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 2489
    :cond_7
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2490
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 2491
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_8

    .line 2492
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$string;->ReturnToCall:I

    const-string v2, "ReturnToCall"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2494
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_0
    return-void
.end method

.method private updatePaddings()V
    .locals 2

    .line 2446
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2447
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v1, v0

    .line 2449
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2450
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v1, v0

    .line 2451
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2452
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 2454
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    return-void
.end method

.method private updatePlaybackButton(Z)V
    .locals 6

    .line 929
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedIcon:Lorg/telegram/ui/Components/SpeedIconDrawable;

    if-nez v0, :cond_0

    return-void

    .line 932
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result v0

    .line 933
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedIcon:Lorg/telegram/ui/Components/SpeedIconDrawable;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Components/SpeedIconDrawable;->setValue(FZ)V

    .line 934
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updateColors()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 936
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 937
    sget-object v3, Lorg/telegram/ui/Components/FragmentContextView;->speeds:[F

    aget v3, v3, v2

    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->equals(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 938
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    aget-object v3, v3, v2

    const-string v4, "featuredStickers_addButtonPressed"

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->setColors(II)V

    goto :goto_1

    .line 940
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    aget-object v3, v3, v2

    const-string v4, "actionBarDefaultSubmenuItem"

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->setColors(II)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 944
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;

    const v3, 0x3e99999a    # 0.3f

    sub-float v3, v0, v3

    const v4, 0x400ccccd    # 2.2f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->setValue(FZ)V

    .line 945
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSliderText:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz p1, :cond_3

    const/high16 p1, 0x41200000    # 10.0f

    mul-float v0, v0, p1

    .line 946
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 948
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 950
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSliderText:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 951
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSliderText:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->cancelAnimation()V

    .line 952
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSliderText:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private updateStyle(I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1087
    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-ne v2, v1, :cond_0

    return-void

    .line 1090
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    .line 1091
    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_2

    .line 1092
    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->removeParent(Landroid/view/View;)V

    .line 1093
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1094
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/voip/VoIPService;->unregisterStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 1097
    :cond_2
    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    .line 1098
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v1, v5, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const/4 v2, 0x0

    if-eq v1, v5, :cond_4

    .line 1100
    iput-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->timeLayout:Landroid/text/StaticLayout;

    .line 1103
    :cond_4
    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v8, 0x33

    if-eqz v7, :cond_5

    .line 1104
    iget v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/AvatarsImageView;->setStyle(I)V

    .line 1105
    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v9, 0x6c

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v10

    invoke-static {v9, v10, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1107
    :cond_5
    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v9, -0x1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v10

    const/16 v11, 0x33

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1108
    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextView;->shadow:Landroid/view/View;

    const/4 v9, -0x1

    const/4 v10, 0x2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v13

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1110
    iget v7, v0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    const/4 v9, 0x0

    cmpl-float v10, v7, v9

    if-lez v10, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v10

    int-to-float v10, v10

    cmpl-float v7, v7, v10

    if-eqz v7, :cond_6

    .line 1111
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePaddings()V

    .line 1112
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    .line 1115
    :cond_6
    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextView;->openMusicButton:Landroid/widget/ImageView;

    const/16 v10, 0x8

    if-eqz v7, :cond_8

    if-nez v1, :cond_7

    .line 1116
    iget-boolean v11, v0, Lorg/telegram/ui/Components/FragmentContextView;->supportsVoices:Z

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    goto :goto_1

    :cond_7
    const/16 v11, 0x8

    :goto_1
    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    const/4 v7, 0x5

    const-string v11, "AccDescrClosePlayer"

    const/high16 v12, 0x41700000    # 15.0f

    const/16 v13, 0x13

    const-string v14, "inappPlayerTitle"

    const/4 v15, 0x2

    const-string v9, "inappPlayerBackground"

    if-ne v1, v7, :cond_d

    .line 1120
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->selector:Landroid/view/View;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1121
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1122
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v15, :cond_b

    .line 1125
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v1, :cond_9

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v3

    :goto_3
    if-nez v3, :cond_a

    goto :goto_4

    .line 1129
    :cond_a
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 1130
    invoke-direct {v0, v14}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1131
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1132
    invoke-virtual {v3, v4, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1134
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v14}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1135
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1136
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1137
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1138
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1139
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1140
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1141
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1142
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 1143
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrClosePlayer:I

    invoke-static {v11, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1144
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_c

    .line 1145
    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1146
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1148
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/4 v2, -0x1

    const/16 v3, 0x24

    const/16 v4, 0x33

    const/16 v5, 0x23

    const/4 v6, 0x0

    const/16 v7, 0x24

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_17

    :cond_d
    if-eqz v1, :cond_20

    if-ne v1, v15, :cond_e

    goto/16 :goto_13

    :cond_e
    const-string v7, "fonts/rmedium.ttf"

    if-ne v1, v5, :cond_15

    .line 1188
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->selector:Landroid/view/View;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1189
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1190
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1191
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1192
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v1, 0x0

    :goto_5
    const-string v3, "inappPlayerPerformer"

    if-ge v1, v15, :cond_11

    .line 1195
    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v1, :cond_f

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v5

    goto :goto_6

    :cond_f
    invoke-virtual {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v5

    :goto_6
    if-nez v5, :cond_10

    goto :goto_7

    .line 1199
    :cond_10
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 1200
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1201
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1202
    invoke-virtual {v5, v4, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1204
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1205
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1207
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1208
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->stopAnimation()V

    .line 1211
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v1, :cond_12

    .line 1212
    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v1, :cond_12

    goto :goto_8

    :cond_12
    const/4 v4, 0x0

    .line 1215
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    if-nez v4, :cond_13

    const/4 v3, 0x0

    goto :goto_9

    :cond_13
    const/16 v3, 0x8

    :goto_9
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1216
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_14

    .line 1217
    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/FragmentContextView;->updateAvatars(Z)V

    goto :goto_a

    .line 1219
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/16 v3, 0x24

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1220
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1223
    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1224
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1225
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_26

    .line 1226
    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1227
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_17

    :cond_15
    if-eq v1, v4, :cond_16

    if-ne v1, v3, :cond_26

    .line 1230
    :cond_16
    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->selector:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1231
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->updateCallTitle()V

    .line 1233
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result v5

    .line 1234
    iget-object v8, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    if-nez v5, :cond_17

    const/4 v9, 0x0

    goto :goto_b

    :cond_17
    const/16 v9, 0x8

    :goto_b
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    if-ne v1, v3, :cond_18

    .line 1236
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 1237
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 1240
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_19

    .line 1241
    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/FragmentContextView;->updateAvatars(Z)V

    goto :goto_c

    .line 1243
    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1244
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1246
    :goto_c
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    if-nez v5, :cond_1a

    const/4 v3, 0x0

    goto :goto_d

    :cond_1a
    const/16 v3, 0x8

    :goto_d
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1247
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_e

    :cond_1b
    const/4 v1, 0x0

    :goto_e
    iput-boolean v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    .line 1248
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_1c

    const/16 v1, 0xf

    goto :goto_f

    :cond_1c
    const/16 v1, 0x1d

    :goto_f
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 1249
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getCustomEndFrame()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3, v6, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 1250
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 1251
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1252
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1253
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1254
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->stopAnimation()V

    .line 1255
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->addParent(Landroid/view/View;)V

    .line 1256
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->invalidate()V

    const/4 v1, 0x0

    :goto_10
    const-string v3, "returnToCallText"

    if-ge v1, v15, :cond_1f

    .line 1259
    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v1, :cond_1d

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v5

    goto :goto_11

    :cond_1d
    invoke-virtual {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v5

    :goto_11
    if-nez v5, :cond_1e

    goto :goto_12

    .line 1263
    :cond_1e
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 1264
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1265
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 1266
    invoke-virtual {v5, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1269
    :cond_1f
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1270
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1271
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1272
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1273
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1275
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0x11

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x2

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1276
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/16 v3, 0x70

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v4, v6, v3, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1277
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_26

    .line 1278
    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1279
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 1150
    :cond_20
    :goto_13
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->selector:Landroid/view/View;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1151
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1152
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1154
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1155
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1156
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1157
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1158
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1159
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1160
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieImageView;->stopAnimation()V

    .line 1161
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v15, :cond_23

    .line 1163
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v2, :cond_21

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    goto :goto_15

    :cond_21
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v3

    :goto_15
    if-nez v3, :cond_22

    goto :goto_16

    .line 1167
    :cond_22
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 1168
    invoke-direct {v0, v14}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1169
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1170
    invoke-virtual {v3, v4, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1172
    :cond_23
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v2, v14}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    if-nez v1, :cond_25

    .line 1174
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    const/16 v12, 0x24

    const/16 v13, 0x24

    const/16 v14, 0x33

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1175
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/4 v12, -0x1

    const/16 v15, 0x23

    const/16 v17, 0x24

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1176
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->createPlaybackSpeedButton()V

    .line 1177
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_24

    .line 1178
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1179
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1181
    :cond_24
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrClosePlayer:I

    invoke-static {v11, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 1183
    :cond_25
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    const/16 v2, 0x24

    const/16 v3, 0x24

    const/16 v4, 0x33

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1184
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/4 v2, -0x1

    const/16 v5, 0x33

    const/16 v7, 0x24

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1185
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrStopLiveLocation:I

    const-string v3, "AccDescrStopLiveLocation"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_26
    :goto_17
    return-void
.end method


# virtual methods
.method public checkCall(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 2035
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    .line 2036
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v2, :cond_1

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isHangingUp()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    .line 2039
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-nez p1, :cond_3

    if-eqz v2, :cond_3

    .line 2041
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move/from16 v2, p1

    .line 2047
    :goto_0
    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->isShowing()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 2051
    :cond_5
    sget-boolean v4, Lorg/telegram/ui/GroupCallActivity;->groupCallUiVisible:Z

    if-nez v4, :cond_6

    iget-boolean v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->supportsCalls:Z

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isHangingUp()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    if-eqz v1, :cond_7

    .line 2052
    iget-object v6, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v6, :cond_7

    iget-object v6, v6, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallDiscarded;

    if-eqz v6, :cond_7

    const/4 v4, 0x0

    .line 2056
    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v6

    if-nez v6, :cond_4

    sget-boolean v6, Lorg/telegram/ui/GroupCallActivity;->groupCallUiVisible:Z

    if-nez v6, :cond_4

    iget-boolean v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->supportsCalls:Z

    if-eqz v6, :cond_4

    if-nez v4, :cond_4

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v6, :cond_4

    .line 2057
    invoke-interface {v6}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 2058
    invoke-virtual {v6}, Lorg/telegram/messenger/ChatObject$Call;->shouldShowPanel()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v4, 0x1

    const/4 v6, 0x1

    :goto_2
    const-wide/16 v7, 0xdc

    const/4 v9, 0x0

    const-string v10, "topPadding"

    const/16 v11, 0x8

    const/4 v12, -0x1

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x4

    if-nez v4, :cond_10

    .line 2066
    iget-boolean v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v1, :cond_d

    if-eqz v2, :cond_8

    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v4, v12, :cond_9

    :cond_8
    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v4, v15, :cond_9

    if-eq v4, v13, :cond_9

    if-ne v4, v3, :cond_d

    .line 2067
    :cond_9
    iput-boolean v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v2, :cond_b

    .line 2069
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eq v1, v11, :cond_a

    .line 2070
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 2072
    :cond_a
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    goto :goto_3

    .line 2074
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_c

    .line 2075
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2076
    iput-object v14, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 2078
    :cond_c
    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    .line 2079
    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    iget v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    invoke-virtual {v4, v6, v14}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    .line 2080
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v6, v3, [Landroid/animation/Animator;

    new-array v3, v3, [F

    aput v9, v3, v5

    .line 2081
    invoke-static {v0, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v6, v5

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2082
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2083
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2084
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Components/FragmentContextView$15;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/FragmentContextView$15;-><init>(Lorg/telegram/ui/Components/FragmentContextView;I)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2104
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_d
    if-eqz v1, :cond_f

    .line 2106
    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v1, v12, :cond_e

    if-eq v1, v15, :cond_e

    if-eq v1, v13, :cond_e

    if-ne v1, v3, :cond_f

    .line 2107
    :cond_e
    iput-boolean v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 2108
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    :cond_f
    :goto_3
    if-eqz v2, :cond_2a

    .line 2111
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v1, :cond_2a

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->openedWithLivestream()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 2112
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->linkbroken:I

    sget v3, Lorg/telegram/messenger/R$string;->InviteExpired:I

    const-string v4, "InviteExpired"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_12

    .line 2115
    :cond_10
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    if-eqz v6, :cond_11

    const/4 v4, 0x4

    goto :goto_4

    .line 2119
    :cond_11
    iget-object v4, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v4, :cond_12

    const/4 v4, 0x3

    goto :goto_4

    :cond_12
    const/4 v4, 0x1

    .line 2124
    :goto_4
    iget v13, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v4, v13, :cond_13

    iget-object v11, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v11, :cond_13

    if-nez v2, :cond_13

    .line 2125
    iput-boolean v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->checkCallAfterAnimation:Z

    return-void

    :cond_13
    if-eq v4, v13, :cond_15

    .line 2128
    iget-boolean v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v4, :cond_15

    if-nez v2, :cond_15

    .line 2129
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_14

    .line 2130
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2131
    iput-object v14, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 2133
    :cond_14
    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    .line 2134
    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    invoke-virtual {v2, v4, v14}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    .line 2135
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v3, [Landroid/animation/Animator;

    new-array v3, v3, [F

    aput v9, v3, v5

    .line 2136
    invoke-static {v0, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2137
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2138
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2139
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/Components/FragmentContextView$16;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/FragmentContextView$16;-><init>(Lorg/telegram/ui/Components/FragmentContextView;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2150
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_15
    if-eqz v6, :cond_23

    if-ne v13, v15, :cond_16

    .line 2154
    iget-boolean v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_5

    :cond_16
    const/4 v1, 0x0

    .line 2155
    :goto_5
    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    .line 2157
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v4}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v4

    .line 2158
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v6}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 2159
    invoke-virtual {v4}, Lorg/telegram/messenger/ChatObject$Call;->isScheduled()Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 2160
    iget-object v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->gradientPaint:Landroid/graphics/Paint;

    if-nez v9, :cond_17

    .line 2161
    new-instance v9, Landroid/text/TextPaint;

    invoke-direct {v9, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->gradientTextPaint:Landroid/text/TextPaint;

    .line 2162
    invoke-virtual {v9, v12}, Landroid/text/TextPaint;->setColor(I)V

    .line 2163
    iget-object v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->gradientTextPaint:Landroid/text/TextPaint;

    const/16 v11, 0xe

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v9, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2164
    iget-object v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->gradientTextPaint:Landroid/text/TextPaint;

    const-string v11, "fonts/rmedium.ttf"

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2166
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->gradientPaint:Landroid/graphics/Paint;

    .line 2167
    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 2169
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->matrix:Landroid/graphics/Matrix;

    .line 2171
    :cond_17
    iget-object v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2172
    iget-object v9, v4, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_18

    .line 2173
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-object v9, v4, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    invoke-virtual {v6, v9, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_6

    .line 2175
    :cond_18
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 2176
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v9, Lorg/telegram/messenger/R$string;->VoipChannelScheduledVoiceChat:I

    const-string v11, "VoipChannelScheduledVoiceChat"

    invoke-static {v11, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_6

    .line 2178
    :cond_19
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v9, Lorg/telegram/messenger/R$string;->VoipGroupScheduledVoiceChat:I

    const-string v11, "VoipGroupScheduledVoiceChat"

    invoke-static {v11, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    .line 2181
    :goto_6
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCall;->schedule_date:I

    int-to-long v11, v4

    invoke-static {v11, v12, v15}, Lorg/telegram/messenger/LocaleController;->formatStartsTime(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    .line 2182
    iget-boolean v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    if-nez v4, :cond_21

    .line 2183
    iput-boolean v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    .line 2184
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->updateScheduleTimeRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_b

    .line 2187
    :cond_1a
    iput-object v14, v0, Lorg/telegram/ui/Components/FragmentContextView;->timeLayout:Landroid/text/StaticLayout;

    .line 2188
    iget-object v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2189
    iget-object v9, v4, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1b

    .line 2190
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-object v9, v4, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    invoke-virtual {v6, v9, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_7

    .line 2191
    :cond_1b
    iget-object v9, v4, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v9, :cond_1c

    .line 2192
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v9, Lorg/telegram/messenger/R$string;->VoipChannelVoiceChat:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_7

    .line 2193
    :cond_1c
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 2194
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v9, Lorg/telegram/messenger/R$string;->VoipChannelVoiceChat:I

    const-string v11, "VoipChannelVoiceChat"

    invoke-static {v11, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_7

    .line 2196
    :cond_1d
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v9, Lorg/telegram/messenger/R$string;->VoipGroupVoiceChat:I

    const-string v11, "VoipGroupVoiceChat"

    invoke-static {v11, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    .line 2198
    :goto_7
    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    if-nez v6, :cond_1f

    .line 2199
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v4, :cond_1e

    sget v4, Lorg/telegram/messenger/R$string;->ViewersWatchingNobody:I

    goto :goto_8

    :cond_1e
    sget v4, Lorg/telegram/messenger/R$string;->MembersTalkingNobody:I

    :goto_8
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_a

    .line 2201
    :cond_1f
    iget-object v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v4, :cond_20

    const-string v4, "ViewersWatching"

    goto :goto_9

    :cond_20
    const-string v4, "Participants"

    :goto_9
    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v4, v6, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    .line 2203
    :goto_a
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2206
    :cond_21
    :goto_b
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    iget-object v4, v4, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget-boolean v4, v4, Lorg/telegram/ui/Components/AvatarsDrawable;->wasDraw:Z

    if-eqz v4, :cond_22

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_c

    :cond_22
    const/4 v1, 0x0

    :goto_c
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->updateAvatars(Z)V

    goto :goto_f

    :cond_23
    if-eqz v1, :cond_25

    .line 2208
    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_25

    const/4 v1, 0x3

    if-ne v13, v1, :cond_24

    const/4 v4, 0x1

    goto :goto_d

    :cond_24
    const/4 v4, 0x0

    .line 2209
    :goto_d
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->updateAvatars(Z)V

    .line 2210
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    goto :goto_f

    :cond_25
    if-ne v13, v3, :cond_26

    const/4 v1, 0x1

    goto :goto_e

    :cond_26
    const/4 v1, 0x0

    .line 2212
    :goto_e
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->updateAvatars(Z)V

    .line 2213
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    .line 2216
    :goto_f
    iget-boolean v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-nez v1, :cond_2a

    if-nez v2, :cond_29

    .line 2218
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_27

    .line 2219
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2220
    iput-object v14, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 2222
    :cond_27
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 2223
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_28

    .line 2224
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_10

    .line 2226
    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2228
    :goto_10
    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    .line 2229
    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    new-array v6, v3, [I

    sget v9, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    aput v9, v6, v5

    invoke-virtual {v2, v4, v6}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    .line 2230
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v3, [Landroid/animation/Animator;

    new-array v6, v3, [F

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v6, v5

    invoke-static {v0, v10, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2231
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2232
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2233
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Components/FragmentContextView$17;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/FragmentContextView$17;-><init>(Lorg/telegram/ui/Components/FragmentContextView;I)V

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2254
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_11

    .line 2256
    :cond_29
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePaddings()V

    .line 2257
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    .line 2258
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->startJoinFlickerAnimation()V

    .line 2260
    :goto_11
    iput-boolean v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 2261
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    :cond_2a
    :goto_12
    return-void
.end method

.method public checkImport(Z)V
    .locals 9

    .line 1901
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v0, v1, :cond_14

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto/16 :goto_1

    .line 1904
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    .line 1905
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->getImportingHistory(J)Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    move-result-object v0

    .line 1906
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    if-nez p1, :cond_2

    if-eqz v2, :cond_2

    .line 1908
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 p1, 0x1

    .line 1913
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 1914
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v3}, Lorg/telegram/ui/Components/ChatActivityInterface;->shouldShowImport()Z

    move-result v3

    if-nez v3, :cond_3

    instance-of v3, v2, Lorg/telegram/ui/Components/ImportingAlert;

    if-eqz v3, :cond_4

    check-cast v2, Lorg/telegram/ui/Components/ImportingAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    move-object v0, v4

    :cond_4
    const-string v2, "topPadding"

    const/4 v3, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-nez v0, :cond_c

    .line 1919
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    const/4 v7, -0x1

    const/16 v8, 0x8

    if-eqz v0, :cond_a

    if-eqz p1, :cond_5

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v0, v7, :cond_6

    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-ne v0, v5, :cond_a

    .line 1920
    :cond_6
    iput-boolean v6, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz p1, :cond_8

    .line 1922
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eq p1, v8, :cond_7

    .line 1923
    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 1925
    :cond_7
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    goto/16 :goto_1

    .line 1927
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_9

    .line 1928
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1929
    iput-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1931
    :cond_9
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    .line 1932
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    invoke-virtual {v0, v5, v4}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    .line 1933
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v1, [Landroid/animation/Animator;

    new-array v1, v1, [F

    aput v3, v1, v6

    .line 1934
    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1935
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1936
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1937
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$13;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/FragmentContextView$13;-><init>(Lorg/telegram/ui/Components/FragmentContextView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1957
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1

    .line 1959
    :cond_a
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq p1, v7, :cond_b

    if-ne p1, v5, :cond_14

    .line 1960
    :cond_b
    iput-boolean v6, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 1961
    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1964
    :cond_c
    iget v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v7, v5, :cond_d

    iget-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_d

    if-nez p1, :cond_d

    .line 1965
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkImportAfterAnimation:Z

    return-void

    .line 1968
    :cond_d
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    if-eqz p1, :cond_e

    .line 1969
    iget v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    cmpl-float v3, v5, v3

    if-nez v3, :cond_e

    .line 1970
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePaddings()V

    .line 1971
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    .line 1972
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    if-eqz v3, :cond_e

    .line 1973
    invoke-interface {v3, v1, v1}, Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;->onAnimation(ZZ)V

    .line 1974
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    invoke-interface {v3, v6, v1}, Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;->onAnimation(ZZ)V

    .line 1977
    :cond_e
    iget-boolean v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-nez v3, :cond_13

    if-nez p1, :cond_12

    .line 1979
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_f

    .line 1980
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1981
    iput-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1983
    :cond_f
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    invoke-virtual {p1, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    .line 1984
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1985
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_10

    .line 1986
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 1988
    :cond_10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1990
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    if-eqz p1, :cond_11

    .line 1991
    invoke-interface {p1, v1, v1}, Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;->onAnimation(ZZ)V

    .line 1993
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v1, [Landroid/animation/Animator;

    new-array v4, v1, [F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1994
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1995
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/FragmentContextView$14;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/FragmentContextView$14;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2017
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 2019
    :cond_12
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 2020
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 2022
    :cond_13
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentProgress:I

    iget v0, v0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadProgress:I

    if-eq p1, v0, :cond_14

    .line 2023
    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentProgress:I

    .line 2024
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v2, Lorg/telegram/messenger/R$string;->ImportUploading:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v0, "ImportUploading"

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    :cond_14
    :goto_1
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 12

    .line 1410
    sget p2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 1411
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkLiveLocation(Z)V

    goto/16 :goto_7

    .line 1412
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I

    if-ne p1, p2, :cond_1

    .line 1413
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz p1, :cond_1a

    .line 1414
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 1415
    iget-object p3, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {p3}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v0

    cmp-long p3, v0, p1

    if-nez p3, :cond_1a

    .line 1416
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkLocationString()V

    goto/16 :goto_7

    .line 1419
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq p1, p2, :cond_17

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-eq p1, p2, :cond_17

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-eq p1, p2, :cond_17

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didEndCall:I

    if-ne p1, p2, :cond_2

    goto/16 :goto_6

    .line 1424
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    if-eq p1, p2, :cond_14

    sget v4, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    if-eq p1, v4, :cond_14

    sget v4, Lorg/telegram/messenger/NotificationCenter;->groupCallVisibilityChanged:I

    if-ne p1, v4, :cond_3

    goto/16 :goto_5

    .line 1446
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupCallTypingsUpdated:I

    if-ne p1, p2, :cond_9

    .line 1447
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    .line 1448
    iget-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz p1, :cond_1a

    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-ne p1, v2, :cond_1a

    .line 1449
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1450
    iget-object p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-eqz p2, :cond_8

    .line 1451
    invoke-virtual {p1}, Lorg/telegram/messenger/ChatObject$Call;->isScheduled()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1452
    iget-object p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->schedule_date:I

    int-to-long v4, p1

    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatStartsTime(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 1453
    :cond_4
    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget p2, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    if-nez p2, :cond_6

    .line 1454
    iget-object p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz p1, :cond_5

    sget p1, Lorg/telegram/messenger/R$string;->ViewersWatchingNobody:I

    goto :goto_0

    :cond_5
    sget p1, Lorg/telegram/messenger/R$string;->MembersTalkingNobody:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 1456
    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz p1, :cond_7

    const-string p1, "ViewersWatching"

    goto :goto_1

    :cond_7
    const-string p1, "Participants"

    :goto_1
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    .line 1459
    :cond_8
    :goto_2
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->updateAvatars(Z)V

    goto/16 :goto_7

    .line 1461
    :cond_9
    sget p2, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I

    if-ne p1, p2, :cond_c

    .line 1462
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq p1, v3, :cond_a

    if-eq p1, v1, :cond_a

    if-ne p1, v2, :cond_b

    .line 1463
    :cond_a
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    .line 1465
    :cond_b
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkImport(Z)V

    goto/16 :goto_7

    .line 1466
    :cond_c
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingSpeedChanged:I

    if-ne p1, p2, :cond_d

    .line 1467
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->updatePlaybackButton(Z)V

    goto/16 :goto_7

    .line 1468
    :cond_d
    sget p2, Lorg/telegram/messenger/NotificationCenter;->webRtcMicAmplitudeEvent:I

    const/4 v1, 0x0

    if-ne p1, p2, :cond_10

    .line 1469
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_3

    .line 1472
    :cond_e
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p2, 0x457a0000    # 4000.0f

    mul-float p1, p1, p2

    const p2, 0x4604d000    # 8500.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->micAmplitude:F

    goto :goto_4

    .line 1470
    :cond_f
    :goto_3
    iput v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->micAmplitude:F

    .line 1474
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 1475
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->speakerAmplitude:F

    iget p3, p0, Lorg/telegram/ui/Components/FragmentContextView;->micAmplitude:F

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setAmplitude(F)V

    goto/16 :goto_7

    .line 1477
    :cond_10
    sget p2, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I

    if-ne p1, p2, :cond_1a

    .line 1478
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    .line 1479
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p2, 0x41700000    # 15.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x42a00000    # 80.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1480
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->speakerAmplitude:F

    .line 1481
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1482
    :cond_11
    iput v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->micAmplitude:F

    .line 1484
    :cond_12
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1485
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->speakerAmplitude:F

    iget p3, p0, Lorg/telegram/ui/Components/FragmentContextView;->micAmplitude:F

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setAmplitude(F)V

    .line 1487
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_7

    .line 1425
    :cond_14
    :goto_5
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    .line 1426
    iget p3, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-ne p3, v1, :cond_1a

    .line 1427
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p3

    if-eqz p3, :cond_1a

    .line 1428
    iget-object v1, p3, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_1a

    if-ne p1, p2, :cond_15

    .line 1430
    invoke-virtual {p3, p0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 1432
    :cond_15
    invoke-virtual {p3}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result p1

    if-eq p1, v3, :cond_1a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1a

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1a

    const/4 p2, 0x5

    if-ne p1, p2, :cond_16

    goto :goto_7

    .line 1435
    :cond_16
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p1, :cond_1a

    .line 1436
    iget-object p1, p3, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {p3}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eqz p1, :cond_1a

    .line 1437
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    if-nez p2, :cond_1a

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    if-eqz p1, :cond_1a

    invoke-virtual {p3}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 1438
    invoke-virtual {p3, v3, v0, v0}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    .line 1439
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v4, v6

    .line 1440
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1441
    iget-object p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_7

    .line 1420
    :cond_17
    :goto_6
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq p1, v3, :cond_18

    if-eq p1, v1, :cond_18

    if-ne p1, v2, :cond_19

    .line 1421
    :cond_18
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    .line 1423
    :cond_19
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayer(Z)V

    :cond_1a
    :goto_7
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v8, p0

    .line 2367
    iget-object v0, v8, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 2370
    :cond_0
    iget-boolean v0, v8, Lorg/telegram/ui/Components/FragmentContextView;->drawOverlay:Z

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 2374
    iget v1, v8, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v2, 0x3

    const/4 v9, 0x1

    if-eq v1, v2, :cond_3

    if-ne v1, v9, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v4, p1

    goto/16 :goto_2

    .line 2376
    :cond_3
    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v0

    iget-boolean v1, v8, Lorg/telegram/ui/Components/FragmentContextView;->wasDraw:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->updateState(Z)V

    .line 2378
    iget v0, v8, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 2380
    iget-boolean v0, v8, Lorg/telegram/ui/Components/FragmentContextView;->collapseTransition:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2381
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, v8, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    sub-float/2addr v0, v2

    iget v2, v8, Lorg/telegram/ui/Components/FragmentContextView;->extraHeight:F

    add-float v12, v0, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v13, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v14, v0

    const/16 v16, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, v8, Lorg/telegram/ui/Components/FragmentContextView;->collapseProgress:F

    sub-float/2addr v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v17

    move-object/from16 v15, p1

    invoke-virtual/range {v10 .. v17}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->draw(FFFFLandroid/graphics/Canvas;Lorg/telegram/ui/Components/FragmentContextView;F)V

    goto :goto_1

    .line 2383
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v8, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    sub-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v5, v1

    int-to-float v5, v5

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->draw(FFFFLandroid/graphics/Canvas;Lorg/telegram/ui/Components/FragmentContextView;F)V

    .line 2385
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, v8, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    sub-float/2addr v0, v1

    .line 2386
    iget-boolean v1, v8, Lorg/telegram/ui/Components/FragmentContextView;->collapseTransition:Z

    if-eqz v1, :cond_5

    .line 2387
    iget v1, v8, Lorg/telegram/ui/Components/FragmentContextView;->extraHeight:F

    add-float/2addr v0, v1

    .line 2389
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    return-void

    .line 2393
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    .line 2394
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v4, p1

    invoke-virtual {v4, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 2395
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->invalidate()V

    const/4 v0, 0x1

    .line 2397
    :goto_2
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_7

    .line 2399
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2401
    :cond_7
    iput-boolean v9, v8, Lorg/telegram/ui/Components/FragmentContextView;->wasDraw:Z

    return-void
.end method

.method public getStyleHeight()I
    .locals 2

    .line 1495
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x30

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    :goto_0
    return v0
.end method

.method public getTopPadding()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 988
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    return v0
.end method

.method public invalidate()V
    .locals 2

    .line 2412
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2413
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2414
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2415
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public isCallStyle()Z
    .locals 3

    .line 2421
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isCallTypeVisible()Z
    .locals 3

    .line 1499
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPlayer()Z
    .locals 1

    .line 128
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .line 1329
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1330
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isLocation:Z

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 1331
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    invoke-virtual {v0, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1332
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I

    invoke-virtual {v0, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1333
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz v0, :cond_0

    .line 1334
    invoke-direct {v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkVisibility()V

    .line 1336
    :cond_0
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->checkLiveLocation(Z)V

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v0, v4, :cond_2

    .line 1339
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v4, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1340
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v4, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1341
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v4, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1342
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v4, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1343
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->groupCallTypingsUpdated:I

    invoke-virtual {v4, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1344
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I

    invoke-virtual {v4, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1346
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->messagePlayingSpeedChanged:I

    invoke-virtual {v0, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1347
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    invoke-virtual {v0, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1348
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didEndCall:I

    invoke-virtual {v0, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1349
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I

    invoke-virtual {v0, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1350
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->webRtcMicAmplitudeEvent:I

    invoke-virtual {v0, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1351
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->groupCallVisibilityChanged:I

    invoke-virtual {v0, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1352
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz v0, :cond_3

    .line 1353
    invoke-direct {v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkVisibility()V

    .line 1356
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isHangingUp()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v0

    if-eq v0, v1, :cond_4

    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1357
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    goto :goto_1

    .line 1358
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v4}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/SendMessagesHelper;->getImportingHistory(J)Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1359
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->checkImport(Z)V

    goto :goto_1

    .line 1360
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ChatObject$Call;->shouldShowPanel()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1361
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    goto :goto_1

    .line 1363
    :cond_6
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    .line 1364
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayer(Z)V

    .line 1365
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/FragmentContextView;->updatePlaybackButton(Z)V

    .line 1368
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_7

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInMenuMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1369
    iput-boolean v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    const/16 v0, 0x8

    .line 1370
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 1375
    :cond_7
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    if-ne v0, v3, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    .line 1388
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    if-nez v0, :cond_d

    .line 1389
    iput-boolean v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    .line 1390
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->updateScheduleTimeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    .line 1376
    :cond_9
    :goto_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->addParent(Landroid/view/View;)V

    .line 1377
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1378
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 1380
    :cond_a
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    .line 1381
    :goto_4
    iget-boolean v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    if-eq v4, v0, :cond_d

    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v4, :cond_d

    .line 1382
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    .line 1383
    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_c

    goto :goto_5

    :cond_c
    const/16 v1, 0x1d

    :goto_5
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 1384
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getCustomEndFrame()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 1385
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 1394
    :cond_d
    :goto_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    .line 1395
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePaddings()V

    .line 1396
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    .line 1399
    :cond_e
    iput v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->speakerAmplitude:F

    .line 1400
    iput v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->micAmplitude:F

    return-void
.end method

.method public onAudioSettingsChanged()V
    .locals 4

    .line 262
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 263
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    if-eq v3, v0, :cond_2

    .line 264
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    .line 265
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    goto :goto_1

    :cond_1
    const/16 v0, 0x1d

    :goto_1
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getCustomEndFrame()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 268
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->updateState(Z)V

    .line 270
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 271
    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->micAmplitude:F

    .line 272
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setAmplitude(F)V

    :cond_3
    return-void
.end method

.method public synthetic onCameraFirstFrameAvailable()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onCameraFirstFrameAvailable(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    return-void
.end method

.method public synthetic onCameraSwitch(Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onCameraSwitch(Lorg/telegram/messenger/voip/VoIPService$StateListener;Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .line 1286
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1287
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1288
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 1289
    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1291
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1292
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->updateScheduleTimeRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1293
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    .line 1295
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 1296
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animationIndex:I

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    const/4 v0, 0x0

    .line 1297
    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    .line 1298
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isLocation:Z

    if-eqz v0, :cond_2

    .line 1299
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1300
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    .line 1303
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1304
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1305
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1306
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1307
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->groupCallTypingsUpdated:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1308
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1310
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingSpeedChanged:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1311
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1312
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didEndCall:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1313
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1314
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->webRtcMicAmplitudeEvent:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1315
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->groupCallVisibilityChanged:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1318
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 1319
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->removeParent(Landroid/view/View;)V

    .line 1321
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1322
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->unregisterStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 1324
    :cond_6
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->wasDraw:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1405
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result p2

    add-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public synthetic onMediaStateUpdated(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onMediaStateUpdated(Lorg/telegram/messenger/voip/VoIPService$StateListener;II)V

    return-void
.end method

.method public onPanTranslationUpdate(F)V
    .locals 2

    .line 923
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedHintView:Lorg/telegram/ui/Components/HintView;

    if-eqz v0, :cond_0

    const/16 v1, 0x56

    .line 924
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setExtraTranslationY(F)V

    :cond_0
    return-void
.end method

.method public synthetic onScreenOnChange(Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onScreenOnChange(Lorg/telegram/messenger/voip/VoIPService$StateListener;Z)V

    return-void
.end method

.method public synthetic onSignalBarsCountChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onSignalBarsCountChanged(Lorg/telegram/messenger/voip/VoIPService$StateListener;I)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 2460
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updateCallTitle()V

    return-void
.end method

.method public synthetic onVideoAvailableChange(Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onVideoAvailableChange(Lorg/telegram/messenger/voip/VoIPService$StateListener;Z)V

    return-void
.end method

.method public setAdditionalContextView(Lorg/telegram/ui/Components/FragmentContextView;)V
    .locals 0

    .line 969
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    return-void
.end method

.method public setCollapseTransition(ZFF)V
    .locals 0

    .line 2360
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->collapseTransition:Z

    .line 2361
    iput p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->extraHeight:F

    .line 2362
    iput p3, p0, Lorg/telegram/ui/Components/FragmentContextView;->collapseProgress:F

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    return-void
.end method

.method public setDrawOverlay(Z)V
    .locals 0

    .line 2407
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->drawOverlay:Z

    return-void
.end method

.method public setSupportsCalls(Z)V
    .locals 0

    .line 313
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->supportsCalls:Z

    return-void
.end method

.method public setSupportsVoices(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->supportsVoices:Z

    return-void
.end method

.method public setTopPadding(F)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1028
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    .line 1029
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1030
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->applyingView:Landroid/view/View;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p1

    .line 1032
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1033
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 1035
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1036
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    float-to-int v2, v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .line 2426
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2427
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePaddings()V

    .line 2428
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 2430
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->wasDraw:Z

    .line 2433
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2434
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz p1, :cond_2

    .line 2435
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    .line 2436
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-interface {v1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setMusicPlaying(Z)V

    goto :goto_0

    .line 2438
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setMusicPlaying(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 958
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 959
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->equals(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "featuredStickers_addButtonPressed"

    goto :goto_0

    :cond_0
    const-string v0, "inappPlayerClose"

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    .line 960
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedIcon:Lorg/telegram/ui/Components/SpeedIconDrawable;

    if-eqz v1, :cond_1

    .line 961
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/SpeedIconDrawable;->setColor(I)V

    .line 963
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    const v2, 0x19ffffff

    and-int/2addr v0, v2

    const/4 v2, 0x1

    const/16 v3, 0xe

    .line 964
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method
