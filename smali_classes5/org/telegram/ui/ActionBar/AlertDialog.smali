.class public Lorg/telegram/ui/ActionBar/AlertDialog;
.super Landroid/app/Dialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/AlertDialog$Builder;,
        Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;
    }
.end annotation


# instance fields
.field private aboveMessageView:Landroid/view/View;

.field private additioanalHorizontalPadding:I

.field private aspectRatio:F

.field private backgroundColor:I

.field private backgroundPaddings:Landroid/graphics/Rect;

.field blurAlpha:F

.field private blurBehind:Z

.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurMatrix:Landroid/graphics/Matrix;

.field private blurOpacity:F

.field private blurPaint:Landroid/graphics/Paint;

.field private blurShader:Landroid/graphics/BitmapShader;

.field private blurredBackground:Z

.field private blurredNativeBackground:Z

.field private bottomView:Landroid/view/View;

.field protected buttonsLayout:Landroid/view/ViewGroup;

.field private canCacnel:Z

.field private cancelDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private checkFocusable:Z

.field private containerViewLocation:[I

.field private contentScrollView:Landroid/widget/ScrollView;

.field private currentProgress:I

.field private customView:Landroid/view/View;

.field private customViewHeight:I

.field private customViewOffset:I

.field private dialogButtonColorKey:I

.field private dimAlpha:F

.field private dimBlurPaint:Landroid/graphics/Paint;

.field private dimCustom:Z

.field private dimEnabled:Z

.field private dismissDialogByButtons:Z

.field private dismissRunnable:Ljava/lang/Runnable;

.field private drawBackground:Z

.field private focusable:Z

.field private itemIcons:[I

.field private itemViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;",
            ">;"
        }
    .end annotation
.end field

.field private items:[Ljava/lang/CharSequence;

.field private lastScreenWidth:I

.field private lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

.field private lineProgressViewPercent:Landroid/widget/TextView;

.field private message:Ljava/lang/CharSequence;

.field private messageTextView:Landroid/widget/TextView;

.field private messageTextViewClickable:Z

.field private negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private negativeButtonText:Ljava/lang/CharSequence;

.field private neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private neutralButtonText:Ljava/lang/CharSequence;

.field private notDrawBackgroundOnTopView:Z

.field private onBackButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonText:Ljava/lang/CharSequence;

.field private progressViewContainer:Landroid/widget/FrameLayout;

.field private progressViewStyle:I

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrollContainer:Landroid/widget/LinearLayout;

.field private secondTitle:Ljava/lang/CharSequence;

.field private secondTitleTextView:Landroid/widget/TextView;

.field private shadow:[Landroid/graphics/drawable/BitmapDrawable;

.field private shadowAnimation:[Landroid/animation/AnimatorSet;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private shadowVisibility:[Z

.field private showRunnable:Ljava/lang/Runnable;

.field private shownAt:J

.field private subtitle:Ljava/lang/CharSequence;

.field private subtitleTextView:Landroid/widget/TextView;

.field private title:Ljava/lang/CharSequence;

.field private titleContainer:Landroid/widget/FrameLayout;

.field private titleTextView:Landroid/widget/TextView;

.field private topAnimationAutoRepeat:Z

.field private topAnimationId:I

.field private topAnimationIsNew:Z

.field private topAnimationLayerColors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private topAnimationSize:I

.field private topBackgroundColor:I

.field private topDrawable:Landroid/graphics/drawable/Drawable;

.field private topHeight:I

.field private topIconImagePaddingsRect:Landroid/graphics/Rect;

.field private topImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private topResId:I

.field private topView:Landroid/view/View;

.field private verticalButtons:Z


# direct methods
.method public static synthetic $r8$lambda$71rpJjrGoLfL4vO5QnDhFdcoDXI(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->lambda$inflateContent$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AhtrfQZCv4j3aPQeE5K7sTE3QTA(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->lambda$inflateContent$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H4cSn1h98ySDj69REiLvvtG6Cfs(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->lambda$inflateContent$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TFZoSa_m7qt6uprM9FT4u8v3KJE(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->lambda$showCancelAlert$7(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cisoIfYVEqCydRn7DuctLwtn-ZE(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->lambda$inflateContent$5(Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lOB4GI0joN8i7pFAgVYR7q3bTYI(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->lambda$showCancelAlert$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wF-j88fpucDCBxZFAIRLr7Yp6Pw(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$wbE991cx3ZCjIvuFde1b8q9Z2yc(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->lambda$inflateContent$3(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 312
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 5

    .line 316
    sget v0, Lorg/telegram/messenger/R$style;->TransparentDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x2

    .line 129
    iput v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->customViewHeight:I

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/graphics/drawable/BitmapDrawable;

    .line 140
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    new-array v1, v0, [Z

    .line 141
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowVisibility:[Z

    new-array v1, v0, [Landroid/animation/AnimatorSet;

    .line 142
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    const/16 v1, 0xc

    .line 143
    iput v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->customViewOffset:I

    .line 145
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButton:I

    iput v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dialogButtonColorKey:I

    const/16 v1, 0x84

    .line 168
    iput v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topHeight:I

    const/4 v1, 0x1

    .line 174
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextViewClickable:Z

    .line 176
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->canCacnel:Z

    .line 178
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissDialogByButtons:Z

    new-array v2, v0, [I

    .line 192
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerViewLocation:[I

    .line 194
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->checkFocusable:Z

    .line 210
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissRunnable:Ljava/lang/Runnable;

    .line 211
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->showRunnable:Ljava/lang/Runnable;

    .line 222
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->itemViews:Ljava/util/ArrayList;

    .line 224
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimEnabled:Z

    const/high16 v2, 0x3f000000    # 0.5f

    .line 225
    iput v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimAlpha:F

    const/4 v2, 0x0

    .line 226
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimCustom:Z

    .line 228
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationAutoRepeat:Z

    const v3, 0x3f4ccccd    # 0.8f

    .line 232
    iput v3, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurAlpha:F

    .line 317
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 319
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result p3

    iput p3, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundColor:I

    .line 320
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p3

    const v4, 0x3f389375    # 0.721f

    cmpg-float p3, p3, v4

    if-gez p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    .line 321
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->supportsNativeBlur()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredNativeBackground:Z

    if-nez v4, :cond_2

    .line 322
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->supportsNativeBlur()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v4

    if-lt v4, v0, :cond_3

    const/16 v0, 0x100

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredBackground:Z

    .line 324
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundPaddings:Landroid/graphics/Rect;

    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 325
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredBackground:Z

    if-eqz v1, :cond_7

    .line 326
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert3:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p2, v0, :cond_5

    const v3, 0x3f0ccccd    # 0.55f

    goto :goto_3

    :cond_5
    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    const v3, 0x3f7c28f6    # 0.985f

    .line 327
    :goto_3
    iput v3, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurOpacity:F

    .line 328
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    iget v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 329
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundPaddings:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 332
    :cond_7
    iput p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ActionBar/AlertDialog;)I
    .locals 0

    .line 85
    iget p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->showCancelAlert()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ActionBar/AlertDialog;)F
    .locals 0

    .line 85
    iget p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->aspectRatio:F

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/ActionBar/AlertDialog;F)F
    .locals 0

    .line 85
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->aspectRatio:F

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/View;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ActionBar/AlertDialog;)[Ljava/lang/CharSequence;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/ActionBar/AlertDialog;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/LineProgressView;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ActionBar/AlertDialog;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/ActionBar/AlertDialog;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ActionBar/AlertDialog;)I
    .locals 0

    .line 85
    iget p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->lastScreenWidth:I

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/ActionBar/AlertDialog;I)I
    .locals 0

    .line 85
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->lastScreenWidth:I

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-object p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ActionBar/AlertDialog;)[I
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerViewLocation:[I

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Matrix;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/BitmapShader;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurShader:Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ActionBar/AlertDialog;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredBackground:Z

    return p0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/ActionBar/AlertDialog;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredBackground:Z

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ActionBar/AlertDialog;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredNativeBackground:Z

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Paint;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Paint;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimBlurPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimBlurPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ActionBar/AlertDialog;)F
    .locals 0

    .line 85
    iget p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimAlpha:F

    return p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/ActionBar/AlertDialog;F)F
    .locals 0

    .line 85
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimAlpha:F

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ActionBar/AlertDialog;)I
    .locals 0

    .line 85
    iget p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundColor:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ActionBar/AlertDialog;)F
    .locals 0

    .line 85
    iget p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurOpacity:F

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->secondTitleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ActionBar/AlertDialog;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->drawBackground:Z

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ActionBar/AlertDialog;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->notDrawBackgroundOnTopView:Z

    return p0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/ActionBar/AlertDialog;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->notDrawBackgroundOnTopView:Z

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/LinearLayout;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ActionBar/AlertDialog;IZ)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->runShadowAnimation(IZ)V

    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Rect;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundPaddings:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ActionBar/AlertDialog;)I
    .locals 0

    .line 85
    iget p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationSize:I

    return p0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/ActionBar/AlertDialog;I)I
    .locals 0

    .line 85
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationSize:I

    return p1
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ActionBar/AlertDialog;)[Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ActionBar/AlertDialog;)[Landroid/animation/AnimatorSet;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4102(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topIconImagePaddingsRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$4202(Lorg/telegram/ui/ActionBar/AlertDialog;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->verticalButtons:Z

    return p1
.end method

.method static synthetic access$4302(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method static synthetic access$4402(Lorg/telegram/ui/ActionBar/AlertDialog;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->checkFocusable:Z

    return p1
.end method

.method static synthetic access$4502(Lorg/telegram/ui/ActionBar/AlertDialog;[I)[I
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->itemIcons:[I

    return-object p1
.end method

.method static synthetic access$4602(Lorg/telegram/ui/ActionBar/AlertDialog;I)I
    .locals 0

    .line 85
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->customViewHeight:I

    return p1
.end method

.method static synthetic access$4702(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->aboveMessageView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$4802(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->bottomView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$4902(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->title:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->subtitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$5102(Lorg/telegram/ui/ActionBar/AlertDialog;I)I
    .locals 0

    .line 85
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topResId:I

    return p1
.end method

.method static synthetic access$5202(Lorg/telegram/ui/ActionBar/AlertDialog;I)I
    .locals 0

    .line 85
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topBackgroundColor:I

    return p1
.end method

.method static synthetic access$5302(Lorg/telegram/ui/ActionBar/AlertDialog;I)I
    .locals 0

    .line 85
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dialogButtonColorKey:I

    return p1
.end method

.method static synthetic access$5402(Lorg/telegram/ui/ActionBar/AlertDialog;I)I
    .locals 0

    .line 85
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationId:I

    return p1
.end method

.method static synthetic access$5502(Lorg/telegram/ui/ActionBar/AlertDialog;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationAutoRepeat:Z

    return p1
.end method

.method static synthetic access$5602(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationLayerColors:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$5702(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$5802(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->message:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$5902(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->subtitleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$6002(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method static synthetic access$6102(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$6202(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method static synthetic access$6302(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$6402(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method static synthetic access$6502(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onBackButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method static synthetic access$6602(Lorg/telegram/ui/ActionBar/AlertDialog;I)I
    .locals 0

    .line 85
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->customViewOffset:I

    return p1
.end method

.method static synthetic access$6702(Lorg/telegram/ui/ActionBar/AlertDialog;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextViewClickable:Z

    return p1
.end method

.method static synthetic access$6800(Lorg/telegram/ui/ActionBar/AlertDialog;)Ljava/lang/Runnable;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$6902(Lorg/telegram/ui/ActionBar/AlertDialog;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$7002(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p1
.end method

.method static synthetic access$7102(Lorg/telegram/ui/ActionBar/AlertDialog;I)I
    .locals 0

    .line 85
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->additioanalHorizontalPadding:I

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/ActionBar/AlertDialog;)I
    .locals 0

    .line 85
    iget p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topHeight:I

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/ActionBar/AlertDialog;I)I
    .locals 0

    .line 85
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topHeight:I

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/View;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topView:Landroid/view/View;

    return-object p1
.end method

.method private canTextInput(Landroid/view/View;)Z
    .locals 4

    .line 1316
    invoke-virtual {p1}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1319
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1322
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .line 1323
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 1326
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1327
    invoke-direct {p0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private synthetic lambda$inflateContent$1(Landroid/view/View;)V
    .locals 1

    .line 842
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 845
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$inflateContent$2(Landroid/view/View;)V
    .locals 1

    .line 1002
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 1003
    invoke-interface {p1, p0, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1005
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissDialogByButtons:Z

    if-eqz p1, :cond_1

    .line 1006
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$inflateContent$3(Landroid/view/View;)V
    .locals 1

    .line 1042
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    const/4 v0, -0x2

    .line 1043
    invoke-interface {p1, p0, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1045
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissDialogByButtons:Z

    if-eqz p1, :cond_1

    .line 1046
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$inflateContent$4(Landroid/view/View;)V
    .locals 1

    .line 1082
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    const/4 v0, -0x2

    .line 1083
    invoke-interface {p1, p0, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1085
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissDialogByButtons:Z

    if-eqz p1, :cond_1

    .line 1086
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$inflateContent$5(Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 1155
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1156
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurPaint:Landroid/graphics/Paint;

    .line 1158
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurBitmap:Landroid/graphics/Bitmap;

    .line 1159
    new-instance p2, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, v0, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurShader:Landroid/graphics/BitmapShader;

    .line 1160
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1161
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x41000000    # 8.0f

    .line 1162
    invoke-virtual {p2, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1163
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerViewLocation:[I

    const/4 v2, 0x0

    aget v2, v0, v2

    neg-int v2, v2

    int-to-float v2, v2

    aget v0, v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1164
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1165
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 212
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 216
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$showCancelAlert$6(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1247
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz p1, :cond_0

    .line 1248
    invoke-interface {p1, p0}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 1250
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showCancelAlert$7(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1252
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->cancelDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private runShadowAnimation(IZ)V
    .locals 5

    if-eqz p2, :cond_0

    .line 1261
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowVisibility:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    :cond_0
    if-nez p2, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowVisibility:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_5

    .line 1262
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowVisibility:[Z

    aput-boolean p2, v0, p1

    .line 1263
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v1, v0, p1

    if-eqz v1, :cond_2

    .line 1264
    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1266
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v1, v0, p1

    .line 1267
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v0, p1

    if-eqz v1, :cond_4

    .line 1268
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/animation/Animator;

    aget-object v0, v0, p1

    new-array v2, v2, [I

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    const/16 p2, 0xff

    goto :goto_0

    :cond_3
    move p2, v4

    :goto_0
    aput p2, v2, v4

    const-string p2, "alpha"

    invoke-static {v0, p2, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v3, v4

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1270
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object p2, p2, p1

    const-wide/16 v0, 0x96

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1271
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object p2, p2, p1

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$8;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$8;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1287
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1289
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private showCancelAlert()V
    .locals 3

    .line 1239
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->canCacnel:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->cancelDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1242
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1243
    sget v1, Lorg/telegram/messenger/R$string;->StopLoadingTitle:I

    const-string v2, "StopLoadingTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1244
    sget v1, Lorg/telegram/messenger/R$string;->StopLoading:I

    const-string v2, "StopLoading"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1245
    sget v1, Lorg/telegram/messenger/R$string;->WaitMore:I

    const-string v2, "WaitMore"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1246
    sget v1, Lorg/telegram/messenger/R$string;->Stop:I

    const-string v2, "Stop"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1252
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1254
    :try_start_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->cancelDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private updateLineProgressTextView()V
    .locals 4

    .line 1308
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->currentProgress:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%d%%"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 1336
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 1337
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 1338
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1354
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1355
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 1356
    invoke-interface {v0, p0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 1358
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->cancelDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_1

    .line 1359
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1362
    :cond_1
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1366
    :catchall_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->showRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1368
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1369
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 1370
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurShader:Landroid/graphics/BitmapShader;

    .line 1371
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurPaint:Landroid/graphics/Paint;

    .line 1372
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurBitmap:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method public dismissUnless(J)V
    .locals 4

    .line 1344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shownAt:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    .line 1346
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    sub-long/2addr v0, p1

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 1348
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public getButton(I)Landroid/view/View;
    .locals 1

    .line 1477
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1478
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getButtonsLayout()Landroid/view/ViewGroup;
    .locals 1

    .line 1527
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    return-object v0
.end method

.method public getItemsCount()I
    .locals 1

    .line 1440
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->message:Ljava/lang/CharSequence;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 1514
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected inflateContent(Z)Landroid/view/View;
    .locals 33

    move-object/from16 v0, p0

    .line 353
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$1;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$1;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 616
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 617
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredBackground:Z

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-nez v3, :cond_0

    iget v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    if-ne v3, v6, :cond_2

    :cond_0
    iget v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    if-eq v3, v5, :cond_2

    .line 618
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 619
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 620
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredBackground:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredNativeBackground:Z

    if-nez v3, :cond_1

    .line 621
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 623
    :cond_1
    iput-boolean v7, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->drawBackground:Z

    goto :goto_0

    .line 625
    :cond_2
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->notDrawBackgroundOnTopView:Z

    if-eqz v3, :cond_3

    .line 626
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 627
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 628
    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    iget v10, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v8, v9, v10, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 629
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->drawBackground:Z

    goto :goto_0

    .line 631
    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 632
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 633
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 634
    iput-boolean v7, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->drawBackground:Z

    .line 637
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v3, v8, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v7

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    if-eqz p1, :cond_5

    .line 639
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 642
    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonText:Ljava/lang/CharSequence;

    if-nez v3, :cond_7

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonText:Ljava/lang/CharSequence;

    if-nez v3, :cond_7

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move v3, v7

    goto :goto_3

    :cond_7
    :goto_2
    move v3, v2

    .line 644
    :goto_3
    iget v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topResId:I

    const/16 v9, 0x10

    const/16 v10, 0xa

    if-nez v8, :cond_9

    iget v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationId:I

    if-nez v8, :cond_9

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_8

    goto :goto_4

    .line 705
    :cond_8
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topView:Landroid/view/View;

    if-eqz v8, :cond_10

    .line 706
    invoke-virtual {v8, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 707
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topView:Landroid/view/View;

    const/4 v11, -0x1

    iget v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topHeight:I

    const/16 v13, 0x33

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a

    .line 645
    :cond_9
    :goto_4
    new-instance v8, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v8, v11}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 646
    iget-object v11, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_a

    .line 647
    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 648
    :cond_a
    iget v11, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topResId:I

    if-eqz v11, :cond_b

    .line 649
    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_6

    .line 651
    :cond_b
    iget-boolean v11, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationAutoRepeat:Z

    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 652
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget v11, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationId:I

    iget v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationSize:I

    invoke-virtual {v8, v11, v12, v12}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 653
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationLayerColors:Ljava/util/Map;

    if-eqz v8, :cond_c

    .line 654
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v8

    .line 655
    iget-object v11, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationLayerColors:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 656
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v8, v13, v12}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    goto :goto_5

    .line 659
    :cond_c
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 661
    :goto_6
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 662
    iget-boolean v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    if-eqz v8, :cond_d

    .line 663
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 664
    iget v11, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topBackgroundColor:I

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v11, 0x80

    .line 665
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 666
    iget-object v11, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v12, Lorg/telegram/ui/ActionBar/AlertDialog$2;

    invoke-direct {v12, v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$2;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v8, 0x5c

    .line 690
    iput v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topHeight:I

    goto :goto_7

    .line 692
    :cond_d
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    iget v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topBackgroundColor:I

    invoke-static {v11, v7, v12}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 694
    :goto_7
    iget-boolean v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    if-eqz v8, :cond_e

    .line 695
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_8

    .line 697
    :cond_e
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 700
    :goto_8
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topIconImagePaddingsRect:Landroid/graphics/Rect;

    if-eqz v8, :cond_f

    .line 701
    iget-object v11, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget v12, v8, Landroid/graphics/Rect;->left:I

    iget v13, v8, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v11, v12, v13, v14, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_9

    .line 703
    :cond_f
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v8, v7, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 704
    :goto_9
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v11, -0x1

    iget v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topHeight:I

    const/16 v13, 0x33

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 710
    :cond_10
    :goto_a
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->title:Ljava/lang/CharSequence;

    const/16 v11, 0xe

    const-string v13, "fonts/rmedium.ttf"

    const/16 v14, 0x30

    if-eqz v8, :cond_18

    .line 711
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v8, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleContainer:Landroid/widget/FrameLayout;

    const/16 v17, -0x2

    const/16 v18, -0x2

    .line 712
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    const/16 v20, 0x18

    const/16 v21, 0x0

    const/16 v22, 0x18

    const/16 v23, 0x0

    move/from16 v19, v4

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    new-instance v4, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8, v7}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;-><init>(Landroid/content/Context;Z)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Landroid/widget/TextView;

    .line 715
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Landroid/widget/TextView;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 717
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Landroid/widget/TextView;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v4, v2, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 718
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Landroid/widget/TextView;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 719
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Landroid/widget/TextView;

    iget-boolean v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    if-eqz v8, :cond_11

    move v8, v2

    goto :goto_b

    :cond_11
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_12

    const/4 v8, 0x5

    goto :goto_b

    :cond_12
    move v8, v6

    :goto_b
    or-int/2addr v8, v14

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 720
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleContainer:Landroid/widget/FrameLayout;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Landroid/widget/TextView;

    const/16 v17, -0x2

    const/16 v18, -0x2

    iget-boolean v15, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    if-eqz v15, :cond_13

    move/from16 v19, v2

    goto :goto_c

    :cond_13
    sget-boolean v19, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v19, :cond_14

    const/16 v19, 0x5

    goto :goto_c

    :cond_14
    move/from16 v19, v6

    :goto_c
    or-int/lit8 v19, v19, 0x30

    const/16 v20, 0x0

    const/16 v21, 0x13

    const/16 v22, 0x0

    if-eqz v15, :cond_15

    const/16 v23, 0x4

    goto :goto_d

    :cond_15
    iget-object v15, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->subtitle:Ljava/lang/CharSequence;

    if-eqz v15, :cond_16

    move/from16 v23, v5

    goto :goto_d

    :cond_16
    iget-object v15, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    if-eqz v15, :cond_17

    move/from16 v23, v11

    goto :goto_d

    :cond_17
    move/from16 v23, v10

    :goto_d
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v4, v8, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    :cond_18
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->secondTitle:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1b

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1b

    .line 724
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->secondTitleTextView:Landroid/widget/TextView;

    .line 725
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->secondTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->secondTitleTextView:Landroid/widget/TextView;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 727
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->secondTitleTextView:Landroid/widget/TextView;

    const/high16 v8, 0x41900000    # 18.0f

    invoke-virtual {v4, v2, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 728
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->secondTitleTextView:Landroid/widget/TextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_19

    move v8, v6

    goto :goto_e

    :cond_19
    const/4 v8, 0x5

    :goto_e
    or-int/2addr v8, v14

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 729
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleContainer:Landroid/widget/FrameLayout;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->secondTitleTextView:Landroid/widget/TextView;

    const/16 v17, -0x2

    const/16 v18, -0x2

    sget-boolean v15, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v15, :cond_1a

    move v15, v6

    goto :goto_f

    :cond_1a
    const/4 v15, 0x5

    :goto_f
    or-int/lit8 v19, v15, 0x30

    const/16 v20, 0x0

    const/16 v21, 0x15

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v4, v8, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 732
    :cond_1b
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->subtitle:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1f

    .line 733
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->subtitleTextView:Landroid/widget/TextView;

    .line 734
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->subtitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->subtitleTextView:Landroid/widget/TextView;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogIcon:I

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 736
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->subtitleTextView:Landroid/widget/TextView;

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v4, v2, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 737
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->subtitleTextView:Landroid/widget/TextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_1c

    const/4 v8, 0x5

    goto :goto_10

    :cond_1c
    move v8, v6

    :goto_10
    or-int/2addr v8, v14

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 738
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->subtitleTextView:Landroid/widget/TextView;

    const/16 v17, -0x2

    const/16 v18, -0x2

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_1d

    const/4 v8, 0x5

    goto :goto_11

    :cond_1d
    move v8, v6

    :goto_11
    or-int/lit8 v19, v8, 0x30

    const/16 v20, 0x18

    const/16 v21, 0x0

    const/16 v22, 0x18

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    if-eqz v8, :cond_1e

    move/from16 v23, v11

    goto :goto_12

    :cond_1e
    move/from16 v23, v10

    :goto_12
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 741
    :cond_1f
    iget v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    const/4 v8, -0x1

    const/4 v15, -0x2

    if-nez v4, :cond_20

    .line 742
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v9, Lorg/telegram/messenger/R$drawable;->header_shadow:I

    invoke-virtual {v12, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v9, v4, v7

    .line 743
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v12, Lorg/telegram/messenger/R$drawable;->header_shadow_reverse:I

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v9, v4, v2

    .line 744
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v7

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 745
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v2

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 746
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v7

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 747
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 749
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$3;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v0, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$3;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    .line 764
    invoke-virtual {v4, v7}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 765
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v9

    invoke-static {v4, v9}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    .line 766
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    const/16 v19, -0x1

    const/16 v20, -0x2

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v19 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    .line 769
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 770
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v8, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v9, v12}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    :cond_20
    new-instance v4, Lorg/telegram/ui/Components/EffectsTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9}, Lorg/telegram/ui/Components/EffectsTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    .line 774
    invoke-static {v4}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 775
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    iget-boolean v9, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    if-eqz v9, :cond_21

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    goto :goto_13

    :cond_21
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    :goto_13
    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 776
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v4, v2, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 777
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    new-instance v12, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v12}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 778
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 779
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextViewClickable:Z

    if-nez v4, :cond_22

    .line 780
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 781
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 783
    :cond_22
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    iget-boolean v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    if-eqz v12, :cond_23

    move v12, v2

    goto :goto_14

    :cond_23
    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_24

    const/4 v12, 0x5

    goto :goto_14

    :cond_24
    move v12, v6

    :goto_14
    or-int/2addr v12, v14

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 784
    iget v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    const/16 v12, 0x11

    if-ne v4, v5, :cond_29

    .line 785
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    const/16 v19, -0x2

    const/16 v20, -0x2

    sget-boolean v21, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v21, :cond_25

    const/16 v21, 0x5

    goto :goto_15

    :cond_25
    move/from16 v21, v6

    :goto_15
    or-int/lit8 v21, v21, 0x30

    const/16 v22, 0x18

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->title:Ljava/lang/CharSequence;

    if-nez v5, :cond_26

    const/16 v5, 0x13

    move/from16 v23, v5

    goto :goto_16

    :cond_26
    move/from16 v23, v7

    :goto_16
    const/16 v24, 0x18

    const/16 v25, 0x14

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    new-instance v4, Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/LineProgressView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    .line 788
    iget v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->currentProgress:I

    int-to-float v5, v5

    const/high16 v19, 0x42c80000    # 100.0f

    div-float v5, v5, v19

    invoke-virtual {v4, v5, v7}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 789
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogLineProgress:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    .line 790
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogLineProgressBackground:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/LineProgressView;->setBackColor(I)V

    .line 791
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    const/16 v19, -0x1

    const/16 v20, 0x4

    const/16 v21, 0x13

    const/16 v22, 0x18

    const/16 v23, 0x0

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    .line 794
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 795
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_27

    const/4 v5, 0x5

    goto :goto_17

    :cond_27
    move v5, v6

    :goto_17
    or-int/2addr v5, v14

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 796
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 797
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 798
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    const/16 v19, -0x2

    const/16 v20, -0x2

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_28

    const/4 v5, 0x5

    goto :goto_18

    :cond_28
    move v5, v6

    :goto_18
    or-int/lit8 v21, v5, 0x30

    const/16 v22, 0x17

    const/16 v23, 0x4

    const/16 v24, 0x17

    const/16 v25, 0x18

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 799
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->updateLineProgressTextView()V

    goto/16 :goto_1c

    :cond_29
    if-ne v4, v6, :cond_2c

    .line 801
    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 802
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 804
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewContainer:Landroid/widget/FrameLayout;

    .line 805
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialog_inlineProgressBackground:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundColor:I

    .line 806
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredBackground:Z

    if-eqz v4, :cond_2a

    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredNativeBackground:Z

    if-eqz v4, :cond_2b

    .line 807
    :cond_2a
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewContainer:Landroid/widget/FrameLayout;

    const/16 v5, 0x12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundColor:I

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 809
    :cond_2b
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewContainer:Landroid/widget/FrameLayout;

    const/16 v5, 0x56

    invoke-static {v5, v5, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 811
    new-instance v4, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v6, v15}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v6, 0x20

    .line 812
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 813
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialog_inlineProgress:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 814
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewContainer:Landroid/widget/FrameLayout;

    invoke-static {v5, v5, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1c

    .line 816
    :cond_2c
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->aboveMessageView:Landroid/view/View;

    if-eqz v4, :cond_2d

    .line 817
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    const/16 v26, -0x1

    const/16 v27, -0x2

    const/16 v28, 0x16

    const/16 v29, 0x4

    const/16 v30, 0x16

    const/16 v31, 0xc

    invoke-static/range {v26 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 819
    :cond_2d
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    const/16 v26, -0x2

    const/16 v27, -0x2

    iget-boolean v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    if-eqz v6, :cond_2e

    move v6, v2

    goto :goto_19

    :cond_2e
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_2f

    const/4 v6, 0x5

    goto :goto_19

    :cond_2f
    const/4 v6, 0x3

    :goto_19
    or-int/lit8 v28, v6, 0x30

    const/16 v29, 0x18

    const/16 v30, 0x0

    const/16 v31, 0x18

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    if-nez v6, :cond_31

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    if-eqz v6, :cond_30

    goto :goto_1a

    :cond_30
    move/from16 v32, v7

    goto :goto_1b

    :cond_31
    :goto_1a
    iget v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customViewOffset:I

    move/from16 v32, v6

    :goto_1b
    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 820
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->bottomView:Landroid/view/View;

    if-eqz v4, :cond_32

    .line 821
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    const/16 v26, -0x1

    const/16 v27, -0x2

    const/16 v28, 0x16

    const/16 v29, 0xc

    const/16 v30, 0x16

    const/16 v31, 0x0

    invoke-static/range {v26 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 824
    :cond_32
    :goto_1c
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->message:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    if-nez v4, :cond_33

    .line 825
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->message:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1d

    .line 828
    :cond_33
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 831
    :goto_1d
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_36

    move v4, v7

    .line 832
    :goto_1e
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    array-length v15, v6

    if-ge v4, v15, :cond_36

    .line 833
    aget-object v6, v6, v4

    if-nez v6, :cond_34

    goto :goto_20

    .line 836
    :cond_34
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v15

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v15, v14}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 837
    iget-object v14, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    aget-object v14, v14, v4

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->itemIcons:[I

    if-eqz v15, :cond_35

    aget v15, v15, v4

    goto :goto_1f

    :cond_35
    move v15, v7

    :goto_1f
    invoke-virtual {v6, v14, v15}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 838
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 839
    iget-object v14, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    iget-object v14, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    const/16 v15, 0x32

    invoke-static {v8, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v14, v6, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 841
    new-instance v14, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda3;

    invoke-direct {v14, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v6, v14}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_20
    add-int/lit8 v4, v4, 0x1

    const/16 v14, 0x30

    goto :goto_1e

    .line 849
    :cond_36
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    if-eqz v4, :cond_38

    .line 850
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 851
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 852
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 854
    :cond_37
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    iget v14, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customViewHeight:I

    invoke-static {v8, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v4, v6, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_38
    const/4 v4, 0x6

    const/16 v6, 0xc

    if-eqz v3, :cond_49

    .line 857
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->verticalButtons:Z

    if-nez v3, :cond_3c

    .line 859
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 860
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v3, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 861
    iget-object v11, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonText:Ljava/lang/CharSequence;

    if-eqz v11, :cond_39

    int-to-float v14, v7

    .line 862
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v15

    invoke-virtual {v3, v11, v7, v15}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v11, v15

    add-float/2addr v14, v11

    float-to-int v11, v14

    goto :goto_21

    :cond_39
    move v11, v7

    .line 864
    :goto_21
    iget-object v14, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonText:Ljava/lang/CharSequence;

    if-eqz v14, :cond_3a

    int-to-float v11, v11

    .line 865
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v15

    invoke-virtual {v3, v14, v7, v15}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v14

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v14, v15

    add-float/2addr v11, v14

    float-to-int v11, v11

    .line 867
    :cond_3a
    iget-object v14, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonText:Ljava/lang/CharSequence;

    if-eqz v14, :cond_3b

    int-to-float v11, v11

    .line 868
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v15

    invoke-virtual {v3, v14, v7, v15}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v3, v10

    add-float/2addr v11, v3

    float-to-int v11, v11

    .line 870
    :cond_3b
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    const/16 v10, 0x6e

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v3, v10

    if-le v11, v3, :cond_3c

    .line 871
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->verticalButtons:Z

    .line 874
    :cond_3c
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->verticalButtons:Z

    if-eqz v3, :cond_3d

    .line 875
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 876
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 877
    iput-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    goto :goto_22

    .line 879
    :cond_3d
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$4;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v0, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$4;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    .line 960
    :goto_22
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->bottomView:Landroid/view/View;

    if-eqz v3, :cond_3e

    .line 961
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    const/16 v10, 0x10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    const/4 v14, 0x4

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-virtual {v3, v11, v7, v10, v15}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 962
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_23

    .line 964
    :cond_3e
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-virtual {v3, v10, v11, v14, v15}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 966
    :goto_23
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    const/16 v10, 0x34

    invoke-static {v8, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 967
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    if-eqz v3, :cond_3f

    .line 968
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 971
    :cond_3f
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonText:Ljava/lang/CharSequence;

    const/16 v10, 0x40

    const/16 v11, 0x24

    if-eqz v3, :cond_42

    .line 972
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$5;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v3, v0, v14}, Lorg/telegram/ui/ActionBar/AlertDialog$5;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V

    .line 985
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 986
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 987
    invoke-virtual {v3, v2, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 988
    iget v14, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->dialogButtonColorKey:I

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v14

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 989
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 990
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 993
    iget-object v14, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonText:Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 994
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    iget v15, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->dialogButtonColorKey:I

    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v15

    invoke-static {v14, v15}, Lorg/telegram/ui/ActionBar/Theme;->getRoundRectSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 995
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-virtual {v3, v14, v7, v15, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 996
    iget-boolean v14, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->verticalButtons:Z

    if-eqz v14, :cond_41

    .line 997
    iget-object v14, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    sget-boolean v15, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v5, -0x2

    if-eqz v15, :cond_40

    const/4 v15, 0x3

    goto :goto_24

    :cond_40
    const/4 v15, 0x5

    :goto_24
    invoke-static {v5, v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v14, v3, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_25

    :cond_41
    const/4 v5, -0x2

    .line 999
    iget-object v14, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    const/16 v15, 0x35

    invoke-static {v5, v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v14, v3, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1001
    :goto_25
    new-instance v5, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1011
    :cond_42
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_45

    .line 1012
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$6;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$6;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V

    .line 1025
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMinWidth(I)V

    const/4 v5, -0x2

    .line 1026
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1027
    invoke-virtual {v3, v2, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1028
    iget v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->dialogButtonColorKey:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1029
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 1030
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1031
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1032
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1033
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iget v14, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->dialogButtonColorKey:I

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v14

    invoke-static {v5, v14}, Lorg/telegram/ui/ActionBar/Theme;->getRoundRectSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1035
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v3, v5, v7, v14, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1036
    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->verticalButtons:Z

    if-eqz v5, :cond_44

    .line 1037
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_43

    const/4 v14, 0x3

    goto :goto_26

    :cond_43
    const/4 v14, 0x5

    :goto_26
    const/4 v15, -0x2

    invoke-static {v15, v11, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v5, v3, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_27

    :cond_44
    const/4 v15, -0x2

    .line 1039
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    const/16 v14, 0x35

    invoke-static {v15, v11, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v5, v3, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1041
    :goto_27
    new-instance v5, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1051
    :cond_45
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_48

    .line 1052
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$7;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$7;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V

    .line 1065
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMinWidth(I)V

    const/4 v5, -0x3

    .line 1066
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1067
    invoke-virtual {v3, v2, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1068
    iget v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->dialogButtonColorKey:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1069
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 1070
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1071
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1072
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1073
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iget v9, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->dialogButtonColorKey:I

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v9

    invoke-static {v5, v9}, Lorg/telegram/ui/ActionBar/Theme;->getRoundRectSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1075
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v3, v5, v7, v9, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1076
    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->verticalButtons:Z

    if-eqz v5, :cond_47

    .line 1077
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_46

    const/4 v9, 0x3

    goto :goto_28

    :cond_46
    const/4 v9, 0x5

    :goto_28
    const/4 v10, -0x2

    invoke-static {v10, v11, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v3, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_29

    :cond_47
    const/4 v10, -0x2

    .line 1079
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    const/16 v9, 0x33

    invoke-static {v10, v11, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1081
    :goto_29
    new-instance v5, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1091
    :cond_48
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->verticalButtons:Z

    if-eqz v3, :cond_49

    move v3, v2

    .line 1092
    :goto_2a
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_49

    .line 1093
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 1098
    :cond_49
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1099
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1100
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1101
    iget v9, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4a

    .line 1102
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2d

    .line 1104
    :cond_4a
    iget-boolean v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimEnabled:Z

    if-eqz v8, :cond_4b

    iget-boolean v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimCustom:Z

    if-nez v8, :cond_4b

    .line 1105
    iget v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimAlpha:F

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1106
    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v9, 0x2

    or-int/2addr v8, v9

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2b

    :cond_4b
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 1108
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1109
    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v8, v9

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1112
    :goto_2b
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iput v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lastScreenWidth:I

    const/16 v10, 0x30

    .line 1113
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v8, v10

    iget v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->additioanalHorizontalPadding:I

    mul-int/2addr v10, v9

    sub-int/2addr v8, v10

    .line 1115
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 1116
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v9

    if-eqz v9, :cond_4c

    const/16 v9, 0x1be

    .line 1117
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    goto :goto_2c

    :cond_4c
    const/16 v9, 0x1f0

    .line 1119
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    goto :goto_2c

    :cond_4d
    const/16 v9, 0x164

    .line 1122
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    .line 1125
    :goto_2c
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundPaddings:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v10

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1127
    :goto_2d
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    if-eqz v8, :cond_4f

    iget-boolean v9, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->checkFocusable:Z

    if-eqz v9, :cond_4f

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog;->canTextInput(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_4e

    goto :goto_2e

    :cond_4e
    const/4 v8, 0x4

    .line 1130
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    goto :goto_2f

    .line 1128
    :cond_4f
    :goto_2e
    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v9, 0x20000

    or-int/2addr v8, v9

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1132
    :goto_2f
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_50

    .line 1133
    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1136
    :cond_50
    iget-boolean v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredBackground:Z

    if-eqz v8, :cond_52

    .line 1137
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->supportsNativeBlur()Z

    move-result v8

    if-eqz v8, :cond_51

    .line 1138
    iget v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    if-nez v8, :cond_52

    .line 1139
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredNativeBackground:Z

    const/16 v8, 0x32

    .line 1140
    invoke-virtual {v3, v8}, Landroid/view/Window;->setBackgroundBlurRadius(I)V

    .line 1141
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    .line 1142
    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v9, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v10, 0x8

    new-array v10, v10, [F

    aput v6, v10, v7

    aput v6, v10, v2

    const/4 v2, 0x2

    aput v6, v10, v2

    const/4 v2, 0x3

    aput v6, v10, v2

    const/4 v2, 0x4

    aput v6, v10, v2

    const/4 v2, 0x5

    aput v6, v10, v2

    aput v6, v10, v4

    const/4 v2, 0x7

    aput v6, v10, v2

    const/4 v2, 0x0

    invoke-direct {v9, v10, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1143
    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundColor:I

    iget v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurAlpha:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v4, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1144
    invoke-virtual {v3, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1145
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurBehind:Z

    if-eqz v2, :cond_52

    .line 1146
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v4, 0x4

    or-int/2addr v2, v4

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x14

    .line 1147
    invoke-virtual {v5, v2}, Landroid/view/WindowManager$LayoutParams;->setBlurBehindRadius(I)V

    goto :goto_30

    .line 1151
    :cond_51
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/widget/LinearLayout;)V

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->makeGlobalBlurBitmap(Lorg/telegram/messenger/Utilities$Callback;F)V

    .line 1170
    :cond_52
    :goto_30
    invoke-virtual {v3, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object v1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1485
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->invalidate()V

    .line 1486
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1184
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 1185
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onBackButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    const/4 v1, -0x2

    .line 1186
    invoke-interface {v0, p0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1177
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 1178
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->inflateContent(Z)Landroid/view/View;

    .line 1179
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public redPositive()V
    .locals 2

    const/4 v0, -0x1

    .line 247
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 249
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1491
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    .line 1492
    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 3

    .line 1208
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundColor:I

    .line 1209
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 1210
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setBlurParams(FZZ)V
    .locals 0

    .line 237
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurAlpha:F

    .line 238
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurBehind:Z

    .line 239
    iput-boolean p3, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredBackground:Z

    return-void
.end method

.method public setCanCancel(Z)V
    .locals 0

    .line 1312
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->canCacnel:Z

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 1378
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public setDismissDialogByButtons(Z)V
    .locals 0

    .line 1296
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissDialogByButtons:Z

    return-void
.end method

.method public setFocusable(Z)V
    .locals 3

    .line 1191
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->focusable:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1194
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->focusable:Z

    .line 1195
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1196
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1197
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->focusable:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    .line 1198
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1199
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x30

    .line 1201
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1202
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1204
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setItemColor(III)V
    .locals 1

    if-ltz p1, :cond_1

    .line 1431
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1434
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;

    .line 1435
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->access$3900(Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1436
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->access$4000(Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1444
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->message:Ljava/lang/CharSequence;

    .line 1445
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1446
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1447
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->message:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1448
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1450
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMessageLineSpacing(F)V
    .locals 2

    .line 1233
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1234
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_0
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1421
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonText:Ljava/lang/CharSequence;

    .line 1422
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1426
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonText:Ljava/lang/CharSequence;

    .line 1427
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 1505
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 1506
    invoke-super {p0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1416
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonText:Ljava/lang/CharSequence;

    .line 1417
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setPositiveButtonListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1510
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .line 1300
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->currentProgress:I

    .line 1301
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    const/4 v1, 0x1

    .line 1302
    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 1303
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->updateLineProgressTextView()V

    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1215
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1216
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1218
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1219
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public setTextSize(II)V
    .locals 2

    .line 1224
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 1225
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1227
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    int-to-float p2, p2

    .line 1228
    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1405
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->title:Ljava/lang/CharSequence;

    .line 1406
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1407
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 339
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 341
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 343
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 344
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 345
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xbe

    .line 346
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 349
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shownAt:J

    return-void
.end method

.method public showDelayed(J)V
    .locals 1

    .line 1518
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->showRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1519
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->showRunnable:Ljava/lang/Runnable;

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected supportsNativeBlur()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1498
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    .line 1499
    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
