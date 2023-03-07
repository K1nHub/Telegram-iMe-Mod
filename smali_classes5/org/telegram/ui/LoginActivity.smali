.class public Lorg/telegram/ui/LoginActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LoginActivity$PhoneInputData;,
        Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;,
        Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;,
        Lorg/telegram/ui/LoginActivity$LoginActivityNewPasswordView;,
        Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;,
        Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;,
        Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;,
        Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;,
        Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;,
        Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;,
        Lorg/telegram/ui/LoginActivity$PhoneView;,
        Lorg/telegram/ui/LoginActivity$ProgressView;
    }
.end annotation


# static fields
.field private static final SHOW_DELAY:I

.field private static final observers:[I


# instance fields
.field private activityMode:I

.field private animationFinishCallback:Ljava/lang/Runnable;

.field private backButtonView:Landroid/widget/ImageView;

.field private cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private cancelDeletionCode:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

.field private cancelDeletionParams:Landroid/os/Bundle;

.field private cancelDeletionPhone:Ljava/lang/String;

.field private checkPermissions:Z

.field private checkShowPermissions:Z

.field private currentConnectionState:I

.field private currentDoneType:I

.field private currentTermsOfService:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

.field private currentViewNum:I

.field private customKeyboardWasVisible:Z

.field private customScreenType:I

.field private doneButtonVisible:[Z

.field private doneItemAnimation:Landroid/animation/AnimatorSet;

.field private doneProgressVisible:[Z

.field private editDoneCallback:[Ljava/lang/Runnable;

.field private emailChangeFinishCallback:Ljava/lang/Runnable;

.field private floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

.field private floatingButtonContainer:Landroid/widget/FrameLayout;

.field private floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

.field private floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private forceDisableSafetyNet:Z

.field private introView:Landroid/view/View;

.field private isAnimatingIntro:Z

.field private isRequestingFirebaseSms:Z

.field private keyboardAnimator:Landroid/animation/ValueAnimator;

.field private keyboardHideCallback:Ljava/lang/Runnable;

.field private keyboardLinearLayout:Landroid/widget/LinearLayout;

.field private keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

.field private needRequestPermissions:Z

.field private newAccount:Z

.field private permissionsDialog:Landroid/app/Dialog;

.field private permissionsItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private permissionsShowDialog:Landroid/app/Dialog;

.field private permissionsShowItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

.field private postedEditDoneCallback:[Z

.field private progressRequestId:I

.field private proxyButtonView:Landroid/widget/ImageView;

.field private proxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

.field private radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private restoringState:Z

.field private showDoneAnimation:[Landroid/animation/AnimatorSet;

.field private sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private slideViewsContainer:Landroid/widget/FrameLayout;

.field private startMessagingButton:Landroid/widget/TextView;

.field private syncContacts:Z

.field private testBackend:Z

.field private views:[Lorg/telegram/ui/Components/SlideView;


# direct methods
.method public static synthetic $r8$lambda$3A-4ps9YxjPw1XmBC3lTlhtJkJM(Lorg/telegram/ui/LoginActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->lambda$onDoneButtonPressed$14(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4eQOmhtJO39B92k72uBQpeoGohg(Lorg/telegram/ui/Components/OutlineTextContainerView;Landroid/view/View;Landroid/widget/EditText;Landroid/text/TextWatcher;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->lambda$onFieldError$10(Lorg/telegram/ui/Components/OutlineTextContainerView;Landroid/view/View;Landroid/widget/EditText;Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4h0HGcnyApsnrxgr3rGKop_QZl8(Lorg/telegram/ui/LoginActivity;IILandroid/view/ViewGroup$MarginLayoutParams;IIILorg/telegram/ui/Components/TransformableLoginButtonView;FIFILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lorg/telegram/ui/LoginActivity;->lambda$onCustomTransitionAnimation$23(IILandroid/view/ViewGroup$MarginLayoutParams;IIILorg/telegram/ui/Components/TransformableLoginButtonView;FIFILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$581p8yIphp3aLXr-oITUtHQUzVk(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LoginActivity;->lambda$tryResetAccount$24(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5XWsLReVYdF0B-MB6z8YHzIr-gA(Lorg/telegram/ui/LoginActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$setCustomKeyboardVisible$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5bTfPNdyUwRm1QGZsQymNGY3-QU(Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->updateColors()V

    return-void
.end method

.method public static synthetic $r8$lambda$78_d67qTErAOlj_F2riKqKwGEsE(Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->lambda$onDialogDismiss$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$9KT1ncr4u0DyPIT99JT2LairzBE(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GnX6u7irbHxcbUWV6jZhGbo4SF4(Lorg/telegram/ui/LoginActivity;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->lambda$showEditDoneProgress$16(IZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$JXOESgTsN3g7UHQ745mSxqqLYiU(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/LoginActivity;->lambda$tryResetAccount$25(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K3GQlg1SNKog5ez5QiJSR9Tisjw(ZLjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LoginActivity;->lambda$needShowInvalidAlert$11(ZLjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$M3p_JC12s02LrxsbYdWwFqJT-pY(Lorg/telegram/ui/LoginActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->lambda$createView$0(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$OrptQYyFmGOJzI9tw3B8A79ryoE(Lorg/telegram/ui/LoginActivity;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->lambda$showEditDoneProgress$15(ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$QJTys2P4Zp9kWGnwRtbIrkzz6LM(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/LoginActivity;->lambda$onRequestPermissionsResultFragment$7(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qufqt00E7feWBNoQNCfhicmK1G8(Lorg/telegram/ui/LoginActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$setCustomKeyboardVisible$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TgFY0BaY-_rZY2_uWG5wAEwFWnY(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$createView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y6OsXTfSdT8QYih03zWdWYfSKp8(Landroid/widget/EditText;Landroid/text/TextWatcher;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$onFieldError$9(Landroid/widget/EditText;Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Ej-KsZOTPio5nT8CchKIQGzPMg(Lorg/telegram/ui/LoginActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$showDoneButton$13(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cg5K5AJtqeJkXLqmvlJ4y-qafJ4(Lorg/telegram/ui/LoginActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$showDoneButton$12(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eIhm4IGya9AzhU7pfX-YYxwck8U(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/LoginActivity;->lambda$tryResetAccount$26(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kwdx661NvRlIc1K44IOe-9TV8tQ(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nck5OnGYwEr9dXkp30N_j9eJ7U8(Lorg/telegram/ui/LoginActivity;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->lambda$showEditDoneProgress$17(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sEEGWtZv_s74WCHceRaUj_NCk8c(Lorg/telegram/ui/LoginActivity;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->lambda$createView$2(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$uIew5VP8xCuKJzUqaiKKkFRkKOM(ZLjava/lang/Void;)Lorg/telegram/ui/DialogsActivity;
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$needFinishActivity$18(ZLjava/lang/Void;)Lorg/telegram/ui/DialogsActivity;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 201
    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lorg/telegram/ui/LoginActivity;->observers:[I

    .line 289
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-gt v0, v2, :cond_0

    const/16 v0, 0x96

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    sput v0, Lorg/telegram/ui/LoginActivity;->SHOW_DELAY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 515
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Lorg/telegram/ui/Components/SlideView;

    .line 374
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 384
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    .line 385
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    .line 387
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    const/4 v1, 0x0

    .line 388
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->testBackend:Z

    .line 390
    iput v1, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/animation/AnimatorSet;

    .line 398
    iput-object v3, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    new-array v3, v2, [Z

    .line 405
    fill-array-data v3, :array_0

    iput-object v3, p0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    .line 421
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->customKeyboardWasVisible:Z

    new-array v1, v2, [Z

    .line 437
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->doneProgressVisible:[Z

    new-array v1, v2, [Ljava/lang/Runnable;

    .line 438
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->editDoneCallback:[Ljava/lang/Runnable;

    new-array v1, v2, [Z

    .line 439
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    .line 516
    iput p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    .line 517
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 511
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    const/16 p1, 0x10

    new-array p1, p1, [Lorg/telegram/ui/Components/SlideView;

    .line 374
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    .line 382
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;

    .line 383
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 384
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    .line 385
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    .line 387
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    const/4 p1, 0x0

    .line 388
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->testBackend:Z

    .line 390
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/animation/AnimatorSet;

    .line 398
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    new-array v1, v0, [Z

    .line 405
    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    .line 421
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->customKeyboardWasVisible:Z

    new-array p1, v0, [Z

    .line 437
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->doneProgressVisible:[Z

    new-array p1, v0, [Ljava/lang/Runnable;

    .line 438
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->editDoneCallback:[Ljava/lang/Runnable;

    new-array p1, v0, [Z

    .line 439
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->onDoneButtonPressed()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/LoginActivity;)[Lorg/telegram/ui/Components/SlideView;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    return-object p0
.end method

.method static synthetic access$11500(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11600(Lorg/telegram/ui/LoginActivity;)Ljava/lang/String;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->cancelDeletionPhone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$11700(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11800(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11900(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12000(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12100(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12200(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12300(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12400(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12500(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12600(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12700(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$12800(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12900(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$13000(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$13100(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$13200(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->tryResetAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13300(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$13600(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$13700(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$13800(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$13900(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_account_sentEmailCode;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_account_sentEmailCode;)V

    return-void
.end method

.method static synthetic access$14000(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$14100(Lorg/telegram/ui/LoginActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->emailChangeFinishCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$14200(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$14600(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$14700(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$14800(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$14900(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$15300(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$15600(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$15700(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$16700(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 196
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->restoringState:Z

    return p0
.end method

.method static synthetic access$16800(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$16900(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$17000(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;Z)V
    .locals 0

    .line 196
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->onAuthSuccess(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;Z)V

    return-void
.end method

.method static synthetic access$17100(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$17200(Lorg/telegram/ui/LoginActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$17300(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$17400(Lorg/telegram/ui/LoginActivity;)Landroid/widget/TextView;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$17500(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$17600(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$17700(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 196
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/LoginActivity;)[Landroid/animation/AnimatorSet;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/TransformableLoginButtonView;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/LoginActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/LoginActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 196
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    return p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/LoginActivity;I)I
    .locals 0

    .line 196
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/LoginActivity;ZZ)V
    .locals 0

    .line 196
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 196
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isSearchByTelType()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/LoginActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/LoginActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->showKeyboard(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 196
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 196
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    return p0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/LoginActivity;Z)Z
    .locals 0

    .line 196
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    return p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 196
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->testBackend:Z

    return p0
.end method

.method static synthetic access$4802(Lorg/telegram/ui/LoginActivity;Z)Z
    .locals 0

    .line 196
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->testBackend:Z

    return p1
.end method

.method static synthetic access$4900()[I
    .locals 1

    .line 196
    sget-object v0, Lorg/telegram/ui/LoginActivity;->observers:[I

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 196
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->isRequestingFirebaseSms:Z

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/LoginActivity;Landroid/view/View;Z)V
    .locals 0

    .line 196
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->onFieldError(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5200(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 196
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    return-object p0
.end method

.method static synthetic access$5402(Lorg/telegram/ui/LoginActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 196
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardHideCallback:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$5500(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    return-object p0
.end method

.method static synthetic access$5602(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;
    .locals 0

    .line 196
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    return-object p1
.end method

.method static synthetic access$5700(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/LoginActivity;IZ)V
    .locals 0

    .line 196
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->needShowProgress(IZ)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 196
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6202(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 196
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->permissionsDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Lorg/telegram/ui/LoginActivity;Z)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->needHideProgress(Z)V

    return-void
.end method

.method static synthetic access$6900(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 196
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->forceDisableSafetyNet:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 196
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardForceDisabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/LoginActivity;I)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->needShowProgress(I)V

    return-void
.end method

.method static synthetic access$7400(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 196
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 196
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->isAnimatingIntro:Z

    return p0
.end method

.method static synthetic access$7602(Lorg/telegram/ui/LoginActivity;Z)Z
    .locals 0

    .line 196
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->isAnimatingIntro:Z

    return p1
.end method

.method static synthetic access$7700(Lorg/telegram/ui/LoginActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->animationFinishCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$7702(Lorg/telegram/ui/LoginActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 196
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->animationFinishCallback:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$7800()I
    .locals 1

    .line 196
    sget v0, Lorg/telegram/ui/LoginActivity;->SHOW_DELAY:I

    return v0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/LoginActivity;->currentConnectionState:I

    return p0
.end method

.method static synthetic access$7902(Lorg/telegram/ui/LoginActivity;I)I
    .locals 0

    .line 196
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->currentConnectionState:I

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 196
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->customKeyboardWasVisible:Z

    return p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/LoginActivity;Z)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->updateProxyButton(Z)V

    return-void
.end method

.method static synthetic access$8100(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 196
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->needRequestPermissions:Z

    return p0
.end method

.method static synthetic access$8102(Lorg/telegram/ui/LoginActivity;Z)Z
    .locals 0

    .line 196
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->needRequestPermissions:Z

    return p1
.end method

.method static synthetic access$8202(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 196
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$8300(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->currentTermsOfService:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    return-object p0
.end method

.method static synthetic access$8302(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;
    .locals 0

    .line 196
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->currentTermsOfService:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    return-object p1
.end method

.method static synthetic access$8400(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->onAuthSuccess(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    return-void
.end method

.method static synthetic access$8500(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    return-void
.end method

.method static synthetic access$8600(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->slideViewsContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/LoginActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 196
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/LoginActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 196
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$9100(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/LoginActivity;->progressRequestId:I

    return p0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->openTelegramApp()V

    return-void
.end method

.method static synthetic access$9700(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 196
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isInCancelAccountDeletionMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 196
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/LoginActivity;ZZ)V
    .locals 0

    .line 196
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->needHideProgress(ZZ)V

    return-void
.end method

.method private clearCurrentState()V
    .locals 4

    .line 1047
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logininfo2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1048
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1049
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1050
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_account_sentEmailCode;)V
    .locals 2

    .line 1748
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_sentEmailCode;->email_pattern:Ljava/lang/String;

    const-string v1, "emailPattern"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_account_sentEmailCode;->length:I

    const-string v0, "length"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p2, 0xd

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1750
    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V
    .locals 1

    const/4 v0, 0x1

    .line 1754
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/LoginActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Z)V

    return-void
.end method

.method private fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Z)V
    .locals 10

    .line 1858
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->phone_code_hash:Ljava/lang/String;

    const-string v1, "phoneHash"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->next_type:Lorg/telegram/tgnet/TLRPC$auth_CodeType;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeCall;

    const/16 v2, 0xf

    const/16 v3, 0xb

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const-string v7, "nextType"

    if-eqz v1, :cond_0

    .line 1860
    invoke-virtual {p1, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1861
    :cond_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeFlashCall;

    if-eqz v1, :cond_1

    .line 1862
    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1863
    :cond_1
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeSms;

    if-eqz v1, :cond_2

    .line 1864
    invoke-virtual {p1, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1865
    :cond_2
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeMissedCall;

    if-eqz v1, :cond_3

    .line 1866
    invoke-virtual {p1, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1867
    :cond_3
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeFragmentSms;

    if-eqz v0, :cond_4

    .line 1868
    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1870
    :cond_4
    :goto_0
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeApp;

    const-string v1, "length"

    const-string v7, "type"

    const/4 v8, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 1871
    invoke-virtual {p1, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1872
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1873
    invoke-virtual {p0, v0, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto/16 :goto_2

    .line 1875
    :cond_5
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->timeout:I

    if-nez v0, :cond_6

    const/16 v0, 0x3c

    .line 1876
    iput v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->timeout:I

    .line 1878
    :cond_6
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->timeout:I

    mul-int/lit16 v0, v0, 0x3e8

    const-string v9, "timeout"

    invoke-virtual {p1, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1879
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of v9, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeCall;

    if-eqz v9, :cond_7

    .line 1880
    invoke-virtual {p1, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1881
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1882
    invoke-virtual {p0, v6, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto/16 :goto_2

    .line 1883
    :cond_7
    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFlashCall;

    if-eqz v6, :cond_8

    .line 1884
    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1885
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->pattern:Ljava/lang/String;

    const-string v0, "pattern"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    invoke-virtual {p0, v5, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto/16 :goto_2

    .line 1887
    :cond_8
    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeSms;

    if-nez v5, :cond_d

    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFirebaseSms;

    if-eqz v5, :cond_9

    goto :goto_1

    .line 1892
    :cond_9
    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFragmentSms;

    if-eqz v4, :cond_a

    .line 1893
    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1894
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->url:Ljava/lang/String;

    const-string v3, "url"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1896
    invoke-virtual {p0, v2, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 1897
    :cond_a
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeMissedCall;

    if-eqz v2, :cond_b

    .line 1898
    invoke-virtual {p1, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1899
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1900
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->prefix:Ljava/lang/String;

    const-string v0, "prefix"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    invoke-virtual {p0, v3, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 1902
    :cond_b
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeSetUpEmailRequired;

    const-string v3, "googleSignInAllowed"

    if-eqz v2, :cond_c

    .line 1903
    iget-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->google_signin_allowed:Z

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p2, 0xc

    .line 1904
    invoke-virtual {p0, p2, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 1905
    :cond_c
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeEmailCode;

    if-eqz v2, :cond_e

    .line 1906
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->google_signin_allowed:Z

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1907
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->email_pattern:Ljava/lang/String;

    const-string v2, "emailPattern"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1909
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->next_phone_login_date:I

    const-string v0, "nextPhoneLoginDate"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p2, 0xe

    .line 1910
    invoke-virtual {p0, p2, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 1888
    :cond_d
    :goto_1
    invoke-virtual {p1, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1889
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1890
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFirebaseSms;

    const-string v0, "firebase"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1891
    invoke-virtual {p0, v4, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    :cond_e
    :goto_2
    return-void
.end method

.method private isCustomKeyboardForceDisabled()Z
    .locals 2

    .line 856
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gt v1, v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityTouchExplorationEnabled()Z

    move-result v0

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

.method private isCustomKeyboardVisible()Z
    .locals 2

    .line 860
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->hasCustomKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardForceDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInCancelAccountDeletionMode()Z
    .locals 2

    .line 541
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSearchByTelType()Z
    .locals 2

    .line 244
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->customScreenType:I

    sget v1, Lcom/smedialink/common/IdFabric$CustomType;->LOGIN_SEARCH_BY_TEL:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$createView$0(IZ)V
    .locals 1

    const/16 p2, 0x14

    .line 622
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 625
    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    if-gt p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardHideCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 626
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 627
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardHideCallback:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 0

    .line 751
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->onDoneButtonPressed()V

    return-void
.end method

.method private synthetic lambda$createView$2(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 753
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    if-eqz p1, :cond_0

    .line 754
    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$18200(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 0

    .line 761
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity;->onBackPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 762
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 0

    .line 774
    new-instance p1, Lorg/telegram/ui/ProxyListActivity;

    invoke-direct {p1}, Lorg/telegram/ui/ProxyListActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static synthetic lambda$needFinishActivity$18(ZLjava/lang/Void;)Lorg/telegram/ui/DialogsActivity;
    .locals 1

    .line 1684
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "afterSignup"

    .line 1685
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1686
    new-instance p0, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private static synthetic lambda$needShowInvalidAlert$11(ZLjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1244
    :try_start_0
    sget-object p3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    sget-object p4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p3

    .line 1245
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s (%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v3, v2, v0

    iget p3, p3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {p4, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 1247
    new-instance p4, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {p4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mailto:"

    .line 1248
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    new-array v2, v3, [Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v3, "recover@telegram.org"

    goto :goto_0

    :cond_0
    const-string v3, "login@stel.com"

    :goto_0
    aput-object v3, v2, v0

    .line 1249
    invoke-virtual {p4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "\nLocale: "

    const-string v1, "\nDevice Name: "

    const-string v2, "\nOS version: SDK "

    const-string v3, "I\'m trying to use my mobile phone number: "

    const-string v4, "android.intent.extra.TEXT"

    const-string v5, "android.intent.extra.SUBJECT"

    if-eqz p0, :cond_1

    .line 1251
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Banned phone number: "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1252
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nBut Telegram says it\'s banned. Please help.\n\nApp version: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1254
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid phone number: "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1255
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nBut Telegram says it\'s invalid. Please help.\n\nApp version: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1257
    :goto_1
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    const-string p1, "Send email..."

    invoke-static {p4, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1259
    :catch_0
    new-instance p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1260
    sget p1, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1261
    sget p1, Lorg/telegram/messenger/R$string;->NoMailInstalled:I

    const-string p3, "NoMailInstalled"

    invoke-static {p3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1262
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    const-string p3, "OK"

    invoke-static {p3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1263
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :goto_2
    return-void
.end method

.method private synthetic lambda$onCustomTransitionAnimation$23(IILandroid/view/ViewGroup$MarginLayoutParams;IIILorg/telegram/ui/Components/TransformableLoginButtonView;FIFILandroid/animation/ValueAnimator;)V
    .locals 2

    .line 7965
    invoke-virtual {p12}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p12

    check-cast p12, Ljava/lang/Float;

    invoke-virtual {p12}, Ljava/lang/Float;->floatValue()F

    move-result p12

    .line 7966
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p12}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 7967
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    int-to-float p2, p2

    mul-float p2, p2, p12

    float-to-int p2, p2

    invoke-static {p1, p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p12

    .line 7970
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->slideViewsContainer:Landroid/widget/FrameLayout;

    const/16 v0, 0x14

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 7971
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardForceDisabled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 7972
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 7973
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 7976
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->introView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float v0, v0, p12

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    const p2, 0x3f733333    # 0.95f

    const v0, 0x3d4ccccd    # 0.05f

    mul-float p1, p1, v0

    add-float/2addr p1, p2

    .line 7978
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->introView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 7979
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->introView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    int-to-float p1, p4

    sub-int p2, p5, p4

    int-to-float p2, p2

    mul-float p2, p2, p12

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 7981
    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float p1, p6

    sub-int/2addr p5, p6

    int-to-float p2, p5

    mul-float p2, p2, p12

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 7982
    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 7983
    invoke-virtual {p7}, Landroid/view/View;->requestLayout()V

    .line 7985
    invoke-virtual {p7, p12}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setProgress(F)V

    int-to-float p1, p9

    sub-float/2addr p1, p8

    mul-float p1, p1, p12

    add-float/2addr p8, p1

    .line 7986
    invoke-virtual {p7, p8}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p1, p11

    sub-float/2addr p1, p10

    mul-float p1, p1, p12

    add-float/2addr p10, p1

    .line 7987
    invoke-virtual {p7, p10}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$onDialogDismiss$8()V
    .locals 1

    const/4 v0, 0x0

    .line 1091
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->needRequestPermissions:Z

    return-void
.end method

.method private synthetic lambda$onDoneButtonPressed$14(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1386
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget p2, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SlideView;->onCancelPressed()V

    const/4 p1, 0x1

    .line 1387
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->needHideProgress(Z)V

    return-void
.end method

.method private static synthetic lambda$onFieldError$10(Lorg/telegram/ui/Components/OutlineTextContainerView;Landroid/view/View;Landroid/widget/EditText;Landroid/text/TextWatcher;)V
    .locals 1

    const/4 v0, 0x0

    .line 1192
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateError(F)V

    .line 1193
    sget p0, Lorg/telegram/messenger/R$id;->timeout_callback:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 1195
    new-instance p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda13;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda13;-><init>(Landroid/widget/EditText;Landroid/text/TextWatcher;)V

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onFieldError$9(Landroid/widget/EditText;Landroid/text/TextWatcher;)V
    .locals 0

    .line 1195
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private static synthetic lambda$onRequestPermissionsResultFragment$7(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V
    .locals 0

    .line 1002
    invoke-static {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$1700(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImageUpdater;->openGallery()V

    return-void
.end method

.method private synthetic lambda$setCustomKeyboardVisible$5(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 878
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 879
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 880
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/16 p1, 0xe6

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$setCustomKeyboardVisible$6(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 905
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 907
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/16 p1, 0xe6

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$showDoneButton$12(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1293
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1294
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 1295
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$showDoneButton$13(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1303
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1304
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 1305
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$showEditDoneProgress$15(ZZZ)V
    .locals 0

    .line 1404
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZZ)V

    return-void
.end method

.method private synthetic lambda$showEditDoneProgress$16(IZZ)V
    .locals 1

    .line 1419
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    .line 1420
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    const/4 p1, 0x1

    .line 1421
    invoke-direct {p0, p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZZ)V

    .line 1422
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    return-void
.end method

.method private synthetic lambda$showEditDoneProgress$17(ZLandroid/animation/ValueAnimator;)V
    .locals 4

    .line 1475
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const v0, 0x3f666666    # 0.9f

    const v1, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    mul-float v2, p1, v0

    add-float/2addr v2, v1

    .line 1479
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1480
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1481
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    mul-float v0, v0, p2

    add-float/2addr v0, v1

    .line 1484
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1485
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1486
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    mul-float v0, v0, p2

    add-float/2addr v0, v1

    .line 1489
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1490
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1491
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$tryResetAccount$24(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    .line 8063
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity;->needHideProgress(Z)V

    const-string v1, "code"

    const-string v2, "phoneHash"

    const-string v3, "phoneFormated"

    const/4 v4, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 8069
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 8070
    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8071
    invoke-virtual {p1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8072
    invoke-virtual {p1, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x5

    .line 8073
    invoke-virtual {p0, p2, v4, p1, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 8066
    invoke-virtual {p0, v0, v4, p1, v4}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void

    .line 8075
    :cond_2
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "2FA_RECENT_CONFIRM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8076
    sget p1, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->ResetAccountCancelledAlert:I

    const-string p3, "ResetAccountCancelledAlert"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8077
    :cond_3
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "2FA_CONFIRM_WAIT_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 8078
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 8079
    invoke-virtual {v5, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8080
    invoke-virtual {v5, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8081
    invoke-virtual {v5, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8082
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p2

    const-string p3, "startTime"

    invoke-virtual {v5, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8083
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, v6, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "waitTime"

    invoke-virtual {v5, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x8

    .line 8084
    invoke-virtual {p0, p1, v4, v5, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_1

    .line 8086
    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$tryResetAccount$25(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 8062
    new-instance p4, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda18;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$tryResetAccount$26(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p4, 0x0

    .line 8059
    invoke-direct {p0, p4}, Lorg/telegram/ui/LoginActivity;->needShowProgress(I)V

    .line 8060
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_account_deleteAccount;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_account_deleteAccount;-><init>()V

    const-string p5, "Forgot password"

    .line 8061
    iput-object p5, p4, Lorg/telegram/tgnet/TLRPC$TL_account_deleteAccount;->reason:Ljava/lang/String;

    .line 8062
    iget p5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p5

    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-virtual {p5, p4, v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public static loadCurrentState(ZI)Landroid/os/Bundle;
    .locals 6

    .line 1009
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1010
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logininfo2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1011
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    .line 1012
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1013
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1014
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "_\\|_"

    .line 1015
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1016
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 1017
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1018
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1019
    :cond_2
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 1020
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1021
    :cond_3
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 1022
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1024
    :cond_4
    array-length v2, v3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 1025
    aget-object v2, v3, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1027
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1028
    aget-object v4, v3, p1

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1030
    :cond_5
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 1031
    aget-object v3, v3, v5

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1032
    :cond_6
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_7

    .line 1033
    aget-object v3, v3, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1034
    :cond_7
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 1035
    aget-object v3, v3, v5

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_8
    return-object v0

    :catch_0
    move-exception p0

    .line 1041
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private needFinishActivity(ZZI)V
    .locals 3

    .line 1676
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1677
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 1679
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    .line 1680
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_3

    .line 1681
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    if-eqz v0, :cond_1

    .line 1682
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    .line 1683
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/LaunchActivity;

    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda20;-><init>(Z)V

    invoke-virtual {p2, p3, v1, v0}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZLorg/telegram/messenger/GenericProvider;)V

    .line 1688
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1692
    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    const/4 p2, 0x6

    const/4 v2, 0x0

    invoke-direct {p1, p2, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(ILorg/telegram/tgnet/TLRPC$account_Password;)V

    .line 1693
    invoke-virtual {p1, p3}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setBlockingAlert(I)V

    .line 1694
    invoke-virtual {p1, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setFromRegistration(Z)V

    .line 1695
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0

    .line 1697
    :cond_2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "afterSignup"

    .line 1698
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1699
    new-instance p1, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1700
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 1703
    :goto_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1704
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/LocaleController;->loadRemoteLanguages(I)V

    .line 1705
    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->checkRestrictedLanguages(Z)V

    goto :goto_1

    .line 1707
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/ExternalActionActivity;

    if-eqz p1, :cond_4

    .line 1708
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ExternalActionActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ExternalActionActivity;->onFinishLogin()V

    :cond_4
    :goto_1
    return-void
.end method

.method private needHideProgress(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1558
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity;->needHideProgress(ZZ)V

    return-void
.end method

.method private needHideProgress(ZZ)V
    .locals 3

    .line 1562
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->progressRequestId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1564
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/LoginActivity;->progressRequestId:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1566
    :cond_0
    iput v1, p0, Lorg/telegram/ui/LoginActivity;->progressRequestId:I

    .line 1569
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isInCancelAccountDeletionMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_2

    .line 1570
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 1571
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1574
    :cond_2
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZ)V

    return-void
.end method

.method private needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1149
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1152
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1153
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1154
    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1155
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    const-string p2, "OK"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1156
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    :goto_0
    return-void
.end method

.method public static needShowInvalidAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Z)V
    .locals 6

    if-eqz p0, :cond_6

    .line 1214
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1217
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_1

    .line 1219
    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1220
    sget p2, Lorg/telegram/messenger/R$string;->BannedPhoneNumber:I

    const-string v1, "BannedPhoneNumber"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_1
    if-eqz p2, :cond_5

    .line 1222
    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$1900(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$1900(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$2000(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Lorg/telegram/ui/CountrySelectActivity$Country;

    move-result-object v1

    if-eqz v1, :cond_5

    const v1, 0x7fffffff

    .line 1224
    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$1900(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, " "

    const-string v5, ""

    .line 1225
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_2

    move v1, v3

    goto :goto_0

    .line 1230
    :cond_3
    invoke-static {p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$2000(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Lorg/telegram/ui/CountrySelectActivity$Country;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v2, v1, :cond_4

    .line 1231
    sget v1, Lorg/telegram/messenger/R$string;->WrongNumberFormat:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1232
    sget v1, Lorg/telegram/messenger/R$string;->ShortNumberInfo:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$2000(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Lorg/telegram/ui/CountrySelectActivity$Country;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$2100(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    const-string p2, "ShortNumberInfo"

    invoke-static {p2, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 1234
    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1235
    sget p2, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 1238
    :cond_5
    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1239
    sget p2, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1242
    :goto_1
    sget p2, Lorg/telegram/messenger/R$string;->BotHelp:I

    const-string v1, "BotHelp"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p3, p1, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda8;-><init>(ZLjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1266
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    const-string p2, "OK"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1267
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_6
    :goto_2
    return-void
.end method

.method public static needShowInvalidAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1210
    invoke-static {p0, p1, v0, p2}, Lorg/telegram/ui/LoginActivity;->needShowInvalidAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Z)V

    return-void
.end method

.method private needShowProgress(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1538
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity;->needShowProgress(IZ)V

    return-void
.end method

.method private needShowProgress(IZ)V
    .locals 1

    .line 1542
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isInCancelAccountDeletionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 1543
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1547
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 p2, 0x0

    .line 1548
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 1549
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void

    .line 1553
    :cond_2
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->progressRequestId:I

    const/4 p1, 0x1

    .line 1554
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZ)V

    return-void
.end method

.method private onAuthSuccess(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V
    .locals 1

    const/4 v0, 0x0

    .line 1713
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity;->onAuthSuccess(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;Z)V

    return-void
.end method

.method private onAuthSuccess(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;Z)V
    .locals 4

    .line 1717
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->cleanup()V

    .line 1718
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setUserId(J)V

    .line 1719
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->clearConfig()V

    .line 1720
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->cleanup()V

    .line 1721
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    .line 1722
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1723
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1724
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->cleanup(Z)V

    .line 1725
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1726
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1727
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1728
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1729
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->checkAppAccount()V

    .line 1730
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->checkPromoInfo(Z)V

    .line 1731
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->updateDcSettings()V

    .line 1733
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->future_auth_token:[B

    if-eqz v0, :cond_0

    .line 1734
    invoke-static {p1}, Lorg/telegram/messenger/AuthTokensHelper;->saveLogInToken(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    goto :goto_0

    :cond_0
    const-string v0, "onAuthSuccess future_auth_token is empty"

    .line 1736
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 1740
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->putDialogsEndReachedAfterRegistration()V

    .line 1742
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const-string v2, "tg_placeholders_android"

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/MediaDataController;->loadStickersByEmojiOrName(Ljava/lang/String;ZZ)V

    .line 1744
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->setup_password_required:Z

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->otherwise_relogin_days:I

    invoke-direct {p0, p2, v0, p1}, Lorg/telegram/ui/LoginActivity;->needFinishActivity(ZZI)V

    return-void
.end method

.method private onDoneButtonPressed()V
    .locals 4

    .line 1374
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 1377
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1378
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1381
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1382
    sget v2, Lorg/telegram/messenger/R$string;->StopLoadingTitle:I

    const-string v3, "StopLoadingTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1383
    sget v2, Lorg/telegram/messenger/R$string;->StopLoading:I

    const-string v3, "StopLoading"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1384
    sget v2, Lorg/telegram/messenger/R$string;->WaitMore:I

    const-string v3, "WaitMore"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1385
    sget v1, Lorg/telegram/messenger/R$string;->Stop:I

    const-string v2, "Stop"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1389
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 1391
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v2, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SlideView;->onNextPressed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private onFieldError(Landroid/view/View;Z)V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 1160
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    const/high16 v0, 0x40600000    # 3.5f

    .line 1161
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    if-eqz p2, :cond_1

    .line 1164
    instance-of p2, p1, Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-eqz p2, :cond_1

    .line 1165
    sget p2, Lorg/telegram/messenger/R$id;->timeout_callback:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1167
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1170
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/OutlineTextContainerView;

    .line 1171
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1172
    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;->getAttachedEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 1173
    new-instance v3, Lorg/telegram/ui/LoginActivity$8;

    invoke-direct {v3, p0, v2, v1}, Lorg/telegram/ui/LoginActivity$8;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/widget/EditText;Ljava/util/concurrent/atomic/AtomicReference;)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1190
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateError(F)V

    .line 1191
    new-instance v4, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda14;

    invoke-direct {v4, v0, p1, v2, v3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/OutlineTextContainerView;Landroid/view/View;Landroid/widget/EditText;Landroid/text/TextWatcher;)V

    .line 1198
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const-wide/16 v0, 0x7d0

    .line 1199
    invoke-virtual {p1, v4, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1200
    invoke-virtual {p1, p2, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v2, :cond_1

    .line 1203
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method

.method private openTelegramApp()V
    .locals 8

    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "tg://telegram.org"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 257
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 258
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 259
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 260
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, "org.telegram.messenger"

    .line 261
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "org.telegram.messenger.web"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "org.telegram.messenger.beta"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 262
    :cond_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 264
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 270
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    sget v1, Lorg/telegram/messenger/R$string;->DidNotGetTheCodeSms:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    new-array v1, v4, [Landroid/os/Parcelable;

    .line 271
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    const-string v2, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 272
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 275
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://play.google.com/store/apps/details?id=org.telegram.messenger"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 276
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 277
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 279
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://telegram.org/android"

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private putBundleToEditor(Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 5

    .line 1054
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1055
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1056
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1057
    instance-of v3, v2, Ljava/lang/String;

    const-string v4, "_|_"

    if-eqz v3, :cond_2

    if-eqz p3, :cond_1

    .line 1059
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1061
    :cond_1
    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1063
    :cond_2
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    if-eqz p3, :cond_3

    .line 1065
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1067
    :cond_3
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1069
    :cond_4
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_6

    if-eqz p3, :cond_5

    .line 1071
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 1073
    :cond_5
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 1075
    :cond_6
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 1076
    check-cast v2, Landroid/os/Bundle;

    invoke-direct {p0, v2, p2, v1}, Lorg/telegram/ui/LoginActivity;->putBundleToEditor(Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private setCustomKeyboardVisible(ZZ)V
    .locals 5

    .line 864
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->customKeyboardWasVisible:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 865
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->customKeyboardWasVisible:Z

    .line 867
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardForceDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    const-wide/16 v2, 0x12c

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    .line 872
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 873
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {p1, v4}, Lorg/telegram/messenger/AndroidUtilities;->requestAltFocusable(Landroid/app/Activity;I)V

    if-eqz p2, :cond_2

    new-array p1, v0, [F

    .line 875
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    .line 876
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 877
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 882
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/LoginActivity$6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$6;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 895
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 897
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 900
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAltFocusable(Landroid/app/Activity;I)V

    if-eqz p2, :cond_4

    new-array p1, v0, [F

    .line 902
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    .line 903
    sget-object p2, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 904
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 909
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/LoginActivity$7;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$7;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 919
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 921
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private showDoneButton(ZZ)V
    .locals 7

    .line 1271
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1272
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    aget-boolean v4, v4, v0

    if-ne v4, p1, :cond_1

    return-void

    .line 1276
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    aget-object v5, v4, v0

    if-eqz v5, :cond_3

    if-eqz p2, :cond_2

    .line 1278
    aget-object v0, v4, v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 1280
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v4, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1282
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    iget v4, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aput-boolean p1, v0, v4

    const/4 v0, 0x0

    const/high16 v5, 0x428c0000    # 70.0f

    if-eqz p2, :cond_9

    .line 1284
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v6, p2, v4

    const/4 p2, 0x2

    if-eqz p1, :cond_5

    if-eqz v3, :cond_6

    .line 1287
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    .line 1288
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 1289
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    new-array p2, p2, [F

    .line 1291
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->getOffsetY()F

    move-result v4

    aput v4, p2, v2

    aput v0, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1292
    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1297
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    new-array p2, p2, [F

    .line 1301
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->getOffsetY()F

    move-result v0

    aput v0, p2, v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    aput v0, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1302
    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1307
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1310
    :cond_6
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object p2, p2, v0

    new-instance v0, Lorg/telegram/ui/LoginActivity$9;

    invoke-direct {v0, p0, v3, p1}, Lorg/telegram/ui/LoginActivity$9;-><init>(Lorg/telegram/ui/LoginActivity;ZZ)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/16 p2, 0x96

    if-eqz v3, :cond_8

    if-eqz p1, :cond_7

    const/16 p2, 0xc8

    .line 1346
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    goto :goto_2

    .line 1349
    :cond_7
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    .line 1355
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object v0, v0, v1

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1356
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1357
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget p2, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_9
    if-eqz p1, :cond_a

    if-eqz v3, :cond_b

    .line 1361
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1362
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    goto :goto_3

    :cond_a
    if-eqz v3, :cond_b

    .line 1366
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1367
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    :cond_b
    :goto_3
    return-void
.end method

.method private showEditDoneProgress(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1396
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZZ)V

    return-void
.end method

.method private showEditDoneProgress(ZZZ)V
    .locals 6

    if-eqz p2, :cond_0

    .line 1400
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->doneProgressVisible:[Z

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-boolean v0, v0, v1

    if-ne v0, p1, :cond_0

    if-nez p3, :cond_0

    return-void

    .line 1403
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1404
    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/LoginActivity;ZZZ)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 1407
    :cond_1
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez p3, :cond_4

    if-nez v3, :cond_4

    .line 1410
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->doneProgressVisible:[Z

    aput-boolean p1, p3, v0

    if-eqz p2, :cond_5

    .line 1413
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    aget-boolean p3, p3, v0

    if-eqz p3, :cond_3

    .line 1414
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->editDoneCallback:[Ljava/lang/Runnable;

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1415
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    iget p2, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aput-boolean v2, p1, p2

    return-void

    :cond_3
    if-eqz p1, :cond_5

    .line 1418
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->editDoneCallback:[Ljava/lang/Runnable;

    new-instance v2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/LoginActivity;IZZ)V

    aput-object v2, p3, v0

    const-wide/16 p1, 0x7d0

    invoke-static {v2, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1424
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    iget p2, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aput-boolean v1, p1, p2

    return-void

    .line 1429
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    aput-boolean v2, p3, v0

    .line 1430
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->doneProgressVisible:[Z

    aput-boolean p1, p3, v0

    .line 1433
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_6

    .line 1434
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_6
    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_9

    .line 1438
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const/4 p2, 0x2

    new-array p2, p2, [F

    if-eqz p1, :cond_7

    const/4 v4, 0x0

    goto :goto_1

    :cond_7
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    aput v4, p2, v2

    if-eqz p1, :cond_8

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_8
    aput p3, p2, v1

    .line 1439
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1440
    new-instance p3, Lorg/telegram/ui/LoginActivity$10;

    invoke-direct {p3, p0, p1, v3}, Lorg/telegram/ui/LoginActivity$10;-><init>(Lorg/telegram/ui/LoginActivity;ZZ)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1474
    new-instance p1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LoginActivity;Z)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1494
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-array p3, v1, [Landroid/animation/Animator;

    aput-object p2, p3, v2

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1495
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 p2, 0x96

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1496
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    :cond_9
    const/4 p2, 0x4

    const v4, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_b

    if-eqz v3, :cond_a

    .line 1500
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1501
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1502
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1503
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1504
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 1505
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 1506
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1507
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1508
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    goto :goto_2

    .line 1510
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1511
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1512
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1513
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    goto :goto_2

    .line 1516
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz v3, :cond_c

    .line 1518
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1519
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1520
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1521
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1522
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 1523
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 1524
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1525
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1526
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 1528
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1529
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1530
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 1531
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    :goto_2
    return-void
.end method

.method private showKeyboard(Landroid/view/View;)Z
    .locals 1

    .line 7889
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7890
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private tryResetAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 8052
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 8055
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8056
    sget v1, Lorg/telegram/messenger/R$string;->ResetMyAccountWarningText:I

    const-string v2, "ResetMyAccountWarningText"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8057
    sget v1, Lorg/telegram/messenger/R$string;->ResetMyAccountWarning:I

    const-string v2, "ResetMyAccountWarning"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8058
    sget v1, Lorg/telegram/messenger/R$string;->ResetMyAccountWarningReset:I

    const-string v2, "ResetMyAccountWarningReset"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8091
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p2, "Cancel"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8092
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private updateColors()V
    .locals 8

    .line 8001
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8003
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x38

    .line 8004
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const-string v3, "chats_actionBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    const-string v5, "chats_actionPressedBackground"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 8005
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x0

    const/16 v6, 0x15

    if-ge v4, v6, :cond_0

    .line 8006
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 8007
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v6, -0x1000000

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 8008
    new-instance v4, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v4, v0, v2, v5, v5}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 8009
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v2, v4

    .line 8012
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8014
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 8015
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    const-string v2, "listSelectorSDK21"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8017
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 8018
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 8019
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8023
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 8025
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    const-string v1, "chats_actionIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setColor(I)V

    .line 8026
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setBackgroundColor(I)V

    .line 8028
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 8030
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v1, v0

    :goto_0
    if-ge v5, v1, :cond_2

    aget-object v2, v0, v5

    .line 8031
    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->updateColors()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8034
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->updateColors()V

    .line 8035
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    if-eqz v0, :cond_3

    .line 8036
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$17800(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    :cond_3
    return-void
.end method

.method private updateProxyButton(Z)V
    .locals 5

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->proxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

    if-nez v0, :cond_0

    return-void

    .line 251
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "proxy_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 252
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->proxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

    iget v3, p0, Lorg/telegram/ui/LoginActivity;->currentConnectionState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/ui/Components/ProxyDrawable;->setConnected(ZZZ)V

    return-void
.end method


# virtual methods
.method public cancelAccountDeletion(Ljava/lang/String;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;)Lorg/telegram/ui/LoginActivity;
    .locals 0

    .line 528
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeletionPhone:Ljava/lang/String;

    .line 529
    iput-object p2, p0, Lorg/telegram/ui/LoginActivity;->cancelDeletionParams:Landroid/os/Bundle;

    .line 530
    iput-object p3, p0, Lorg/telegram/ui/LoginActivity;->cancelDeletionCode:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    const/4 p1, 0x1

    .line 531
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    return-object p0
.end method

.method public changeEmail(Ljava/lang/Runnable;)Lorg/telegram/ui/LoginActivity;
    .locals 1

    const/4 v0, 0x3

    .line 521
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    const/16 v0, 0xc

    .line 522
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 523
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->emailChangeFinishCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public changePhoneNumber()Lorg/telegram/ui/LoginActivity;
    .locals 1

    const/4 v0, 0x2

    .line 536
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    return-object p0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 565
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 566
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/LoginActivity$1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/LoginActivity$1;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 579
    iput v3, v0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    .line 580
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 581
    aput-boolean v3, v2, v4

    .line 583
    new-instance v2, Lorg/telegram/ui/LoginActivity$2;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/LoginActivity$2;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 621
    new-instance v5, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda23;

    invoke-direct {v5, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 630
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 632
    new-instance v2, Lorg/telegram/ui/LoginActivity$3;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/LoginActivity$3;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    .line 641
    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 642
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v6, -0x1

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 644
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    .line 645
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 646
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    const/4 v7, -0x2

    const/16 v8, 0x33

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    new-instance v2, Landroid/widget/Space;

    invoke-direct {v2, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 649
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/Space;->setMinimumHeight(I)V

    .line 650
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 651
    new-instance v2, Lorg/telegram/ui/LoginActivity$4;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/LoginActivity$4;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->slideViewsContainer:Landroid/widget/FrameLayout;

    .line 680
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v3, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 681
    new-instance v2, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    .line 682
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    const/16 v8, 0xe6

    invoke-static {v6, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 684
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    aput-object v5, v2, v3

    .line 685
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-direct {v5, v0, v1, v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v5, v2, v4

    .line 686
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/4 v8, 0x2

    invoke-direct {v5, v0, v1, v8}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v5, v2, v8

    .line 687
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/4 v9, 0x3

    invoke-direct {v5, v0, v1, v9}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v5, v2, v9

    .line 688
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/4 v10, 0x4

    invoke-direct {v5, v0, v1, v10}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v5, v2, v10

    .line 689
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    const/4 v11, 0x5

    aput-object v5, v2, v11

    .line 690
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    const/4 v12, 0x6

    aput-object v5, v2, v12

    .line 691
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    const/4 v13, 0x7

    aput-object v5, v2, v13

    .line 692
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    const/16 v14, 0x8

    aput-object v5, v2, v14

    .line 693
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityNewPasswordView;

    invoke-direct {v5, v0, v1, v3}, Lorg/telegram/ui/LoginActivity$LoginActivityNewPasswordView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    const/16 v15, 0x9

    aput-object v5, v2, v15

    .line 694
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityNewPasswordView;

    invoke-direct {v5, v0, v1, v4}, Lorg/telegram/ui/LoginActivity$LoginActivityNewPasswordView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    const/16 v14, 0xa

    aput-object v5, v2, v14

    .line 695
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/16 v9, 0xb

    invoke-direct {v5, v0, v1, v9}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v5, v2, v9

    .line 696
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    const/16 v9, 0xc

    aput-object v5, v2, v9

    .line 697
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/16 v5, 0xd

    new-instance v9, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;

    invoke-direct {v9, v0, v1, v4}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;Z)V

    aput-object v9, v2, v5

    .line 698
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/16 v5, 0xe

    new-instance v9, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;

    invoke-direct {v9, v0, v1, v3}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;Z)V

    aput-object v9, v2, v5

    .line 699
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/16 v9, 0xf

    invoke-direct {v5, v0, v1, v9}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v5, v2, v9

    const/4 v2, 0x0

    .line 701
    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v9, v5

    if-ge v2, v9, :cond_4

    .line 702
    aget-object v5, v5, v2

    if-nez v2, :cond_1

    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    const/16 v9, 0x8

    :goto_2
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 703
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->slideViewsContainer:Landroid/widget/FrameLayout;

    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v9, v9, v2

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x11

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v19

    const/16 v20, 0x12

    if-eqz v19, :cond_2

    const/16 v19, 0x1a

    goto :goto_3

    :cond_2
    const/16 v19, 0x12

    :goto_3
    const/16 v21, 0x1e

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v22

    if-eqz v22, :cond_3

    const/16 v20, 0x1a

    const/16 v22, 0x1a

    goto :goto_4

    :cond_3
    const/16 v22, 0x12

    :goto_4
    const/16 v23, 0x0

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v5, v9, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    const/16 v14, 0xa

    goto :goto_1

    .line 706
    :cond_4
    iget v2, v0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    if-nez v2, :cond_5

    iget-boolean v2, v0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    iget v9, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2, v9}, Lorg/telegram/ui/LoginActivity;->loadCurrentState(ZI)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_9

    const-string v9, "currentViewNum"

    .line 708
    invoke-virtual {v2, v9, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    const-string v9, "syncContacts"

    .line 709
    invoke-virtual {v2, v9, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v4, :cond_6

    const/4 v9, 0x1

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    :goto_6
    iput-boolean v9, v0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    .line 710
    iget v9, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-lt v9, v4, :cond_7

    if-gt v9, v10, :cond_7

    const-string v9, "open"

    .line 711
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_9

    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v16, 0x3e8

    div-long v13, v13, v16

    int-to-long v5, v9

    sub-long/2addr v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/32 v13, 0x15180

    cmp-long v9, v5, v13

    if-ltz v9, :cond_9

    .line 713
    iput v3, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 715
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    goto :goto_7

    :cond_7
    if-ne v9, v12, :cond_8

    .line 718
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v5, v5, v12

    check-cast v5, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    .line 719
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$1200(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v5

    if-nez v5, :cond_9

    .line 720
    iput v3, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 722
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    goto :goto_7

    :cond_8
    if-ne v9, v13, :cond_9

    .line 725
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v5, v5, v13

    check-cast v5, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    .line 726
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->access$1300(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    .line 727
    iput v3, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 729
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    :goto_7
    const/4 v5, 0x0

    goto :goto_8

    :cond_9
    move-object v5, v2

    .line 734
    :goto_8
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    .line 735
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    aget-boolean v6, v6, v3

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    goto :goto_9

    :cond_a
    const/16 v6, 0x8

    :goto_9
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 736
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v2, v6, :cond_b

    .line 737
    new-instance v9, Landroid/animation/StateListAnimator;

    invoke-direct {v9}, Landroid/animation/StateListAnimator;-><init>()V

    new-array v13, v4, [I

    const v14, 0x10100a7

    aput v14, v13, v3

    .line 738
    iget-object v14, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    new-array v15, v8, [F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    aput v12, v15, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    aput v12, v15, v4

    const-string v12, "translationZ"

    invoke-static {v14, v12, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    const-wide/16 v14, 0xc8

    invoke-virtual {v12, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v9, v13, v12}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v12, v3, [I

    .line 739
    iget-object v13, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    new-array v14, v8, [F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    aput v15, v14, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    aput v15, v14, v4

    const-string v15, "translationZ"

    invoke-static {v13, v15, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    const-wide/16 v14, 0xc8

    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 740
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v9}, Landroid/widget/FrameLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 741
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v12, Lorg/telegram/ui/LoginActivity$5;

    invoke-direct {v12, v0}, Lorg/telegram/ui/LoginActivity$5;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v9, v12}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 749
    :cond_b
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    move-result-object v9

    iput-object v9, v0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 750
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/16 v14, 0x3c

    if-lt v2, v6, :cond_c

    const/16 v24, 0x38

    goto :goto_a

    :cond_c
    const/16 v24, 0x3c

    :goto_a
    if-lt v2, v6, :cond_d

    const/16 v25, 0x38

    goto :goto_b

    :cond_d
    const/16 v25, 0x3c

    :goto_b
    const/16 v26, 0x55

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x18

    const/16 v30, 0x10

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v9, v12, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v12, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda10;

    invoke-direct {v12, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v9, v12}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    new-instance v12, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda12;

    invoke-direct {v12, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v9, v12}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 758
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    .line 759
    sget v12, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 760
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    new-instance v12, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda11;

    invoke-direct {v12, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 765
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    sget v12, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 766
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    .line 767
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    invoke-virtual {v12, v9, v9, v9, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 768
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v15, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    const/16 v24, 0x20

    const/16 v25, 0x20

    const/16 v26, 0x33

    const/16 v27, 0x10

    const/16 v28, 0x10

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v12, v15, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 770
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->isSearchByTelType()Z

    move-result v12

    if-nez v12, :cond_e

    .line 771
    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    .line 772
    new-instance v12, Lorg/telegram/ui/Components/ProxyDrawable;

    invoke-direct {v12, v1}, Lorg/telegram/ui/Components/ProxyDrawable;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/LoginActivity;->proxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

    .line 773
    iget-object v13, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 774
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    new-instance v13, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda9;

    invoke-direct {v13, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 775
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    invoke-virtual {v12, v9, v9, v9, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 776
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    const/16 v24, 0x20

    const/16 v25, 0x20

    const/16 v26, 0x35

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x10

    const/16 v30, 0x10

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 777
    invoke-direct {v0, v3}, Lorg/telegram/ui/LoginActivity;->updateProxyButton(Z)V

    .line 781
    :cond_e
    new-instance v9, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v9, v1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v12, 0x14

    .line 782
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v9, v12}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 783
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 784
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v12, 0x3dcccccd    # 0.1f

    invoke-virtual {v9, v12}, Landroid/view/View;->setScaleX(F)V

    .line 785
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v9, v12}, Landroid/view/View;->setScaleY(F)V

    .line 786
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v13, v0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v24, 0x20

    const/16 v25, 0x20

    const/16 v26, 0x35

    const/16 v27, 0x0

    const/16 v28, 0x10

    const/16 v29, 0x10

    const/16 v30, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v9, v13, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 788
    new-instance v9, Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-direct {v9, v1}, Lorg/telegram/ui/Components/TransformableLoginButtonView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    .line 789
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->isSearchByTelType()Z

    move-result v13

    if-eqz v13, :cond_f

    sget v13, Lcom/smedialink/common/IdFabric$CustomType;->TRANSFORMABLE_LOGIN_BUTTON_SEARCH:I

    goto :goto_c

    :cond_f
    const/4 v13, 0x0

    :goto_c
    invoke-virtual {v9, v13}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setTransformType(I)V

    .line 790
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v9, v7}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setProgress(F)V

    .line 791
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setDrawBackground(Z)V

    .line 792
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget v9, Lorg/telegram/messenger/R$string;->Done:I

    const-string v13, "Done"

    invoke-static {v13, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 793
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    if-lt v2, v6, :cond_10

    const/16 v13, 0x38

    goto :goto_d

    :cond_10
    const/16 v13, 0x3c

    :goto_d
    if-lt v2, v6, :cond_11

    const/16 v14, 0x38

    :cond_11
    invoke-static {v13, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v9, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 795
    new-instance v2, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v1, 0x16

    .line 796
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 797
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 798
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setScaleX(F)V

    .line 799
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setScaleY(F)V

    .line 800
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 801
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v6, -0x1

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v5, :cond_12

    .line 804
    iput-boolean v4, v0, Lorg/telegram/ui/LoginActivity;->restoringState:Z

    :cond_12
    const/4 v1, 0x0

    .line 806
    :goto_e
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v6, v2

    if-ge v1, v6, :cond_23

    .line 807
    aget-object v2, v2, v1

    if-eqz v5, :cond_14

    if-lt v1, v4, :cond_13

    if-gt v1, v10, :cond_13

    .line 810
    iget v6, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-ne v1, v6, :cond_14

    .line 811
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/SlideView;->restoreStateParams(Landroid/os/Bundle;)V

    goto :goto_f

    .line 814
    :cond_13
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/SlideView;->restoreStateParams(Landroid/os/Bundle;)V

    .line 817
    :cond_14
    :goto_f
    iget v6, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-ne v6, v1, :cond_21

    .line 818
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->needBackButton()Z

    move-result v7

    if-nez v7, :cond_16

    iget-boolean v7, v0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    if-nez v7, :cond_16

    iget v7, v0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    if-ne v7, v8, :cond_15

    goto :goto_10

    :cond_15
    const/16 v7, 0x8

    goto :goto_11

    :cond_16
    :goto_10
    const/4 v7, 0x0

    :goto_11
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 820
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    if-eqz v6, :cond_18

    if-nez v1, :cond_17

    const/4 v7, 0x0

    goto :goto_12

    :cond_17
    const/16 v7, 0x8

    .line 821
    :goto_12
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 824
    :cond_18
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 825
    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 827
    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->hasCustomKeyboard()Z

    move-result v2

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/LoginActivity;->setCustomKeyboardVisible(ZZ)V

    .line 829
    iput v3, v0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    if-eqz v1, :cond_1a

    if-eq v1, v11, :cond_1a

    const/4 v6, 0x6

    const/16 v7, 0x9

    if-eq v1, v6, :cond_1b

    const/16 v9, 0xa

    if-eq v1, v7, :cond_1c

    const/16 v12, 0xc

    if-eq v1, v9, :cond_1d

    if-ne v1, v12, :cond_19

    goto :goto_13

    :cond_19
    const/4 v2, 0x0

    goto :goto_14

    :cond_1a
    const/4 v6, 0x6

    const/16 v7, 0x9

    :cond_1b
    const/16 v9, 0xa

    :cond_1c
    const/16 v12, 0xc

    :cond_1d
    :goto_13
    const/4 v2, 0x1

    .line 833
    :goto_14
    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V

    if-eq v1, v4, :cond_1e

    if-eq v1, v8, :cond_1e

    const/4 v13, 0x3

    if-eq v1, v13, :cond_1f

    if-ne v1, v10, :cond_20

    goto :goto_15

    :cond_1e
    const/4 v13, 0x3

    .line 835
    :cond_1f
    :goto_15
    iput v4, v0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    :cond_20
    const/16 v15, 0x8

    goto :goto_16

    :cond_21
    const/4 v6, 0x6

    const/16 v7, 0x9

    const/16 v9, 0xa

    const/16 v12, 0xc

    const/4 v13, 0x3

    .line 838
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_22

    .line 839
    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 840
    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->onHide()V

    :cond_22
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e

    .line 844
    :cond_23
    iput-boolean v3, v0, Lorg/telegram/ui/LoginActivity;->restoringState:Z

    .line 846
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->updateColors()V

    .line 848
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->isInCancelAccountDeletionMode()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 849
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->cancelDeletionParams:Landroid/os/Bundle;

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->cancelDeletionCode:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/LoginActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Z)V

    .line 852
    :cond_24
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    .line 8042
    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda22;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/LoginActivity;)V

    const-string v2, "windowBackgroundWhiteBlackText"

    const-string v3, "windowBackgroundWhiteGrayText6"

    const-string v4, "windowBackgroundWhiteHintText"

    const-string v5, "listSelectorSDK21"

    const-string v6, "chats_actionBackground"

    const-string v7, "chats_actionIcon"

    const-string v8, "windowBackgroundWhiteInputField"

    const-string v9, "windowBackgroundWhiteInputFieldActivated"

    const-string v10, "windowBackgroundWhiteValueText"

    const-string v11, "dialogTextRed"

    const-string v12, "windowBackgroundWhiteGrayText"

    const-string v13, "checkbox"

    const-string v14, "windowBackgroundWhiteBlueText4"

    const-string v15, "changephoneinfo_image2"

    const-string v16, "chats_actionPressedBackground"

    const-string v17, "windowBackgroundWhiteRedText2"

    const-string v18, "windowBackgroundWhiteLinkText"

    const-string v19, "checkboxSquareUnchecked"

    const-string v20, "checkboxSquareBackground"

    const-string v21, "checkboxSquareCheck"

    const-string v22, "dialogBackground"

    const-string v23, "dialogTextGray2"

    const-string v24, "dialogTextBlack"

    filled-new-array/range {v2 .. v24}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/SimpleThemeDescription;->createThemeDescriptions(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isLightStatusBar()Z
    .locals 6

    const-string v0, "windowBackgroundWhite"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 8351
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;[ZZ)I

    move-result v0

    .line 8352
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v3, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v5, v0, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 2

    .line 1142
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    check-cast v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    if-eqz v0, :cond_0

    .line 1144
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$1700(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ImageUpdater;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 8

    .line 1103
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    iget v3, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    const/4 v4, 0x3

    const/16 v5, 0xc

    if-ne v3, v4, :cond_0

    if-ne v0, v5, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x6

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    .line 1112
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v3, v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 1113
    invoke-virtual {p0, v1, v2, v4, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto/16 :goto_2

    :cond_1
    const/4 v6, 0x7

    if-eq v0, v6, :cond_a

    const/16 v7, 0x8

    if-ne v0, v7, :cond_2

    goto/16 :goto_1

    :cond_2
    if-lt v0, v2, :cond_3

    const/4 v3, 0x4

    if-le v0, v3, :cond_9

    :cond_3
    const/16 v3, 0xb

    if-eq v0, v3, :cond_9

    const/16 v3, 0xf

    if-ne v0, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    if-ne v0, v3, :cond_5

    .line 1122
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v2, v0

    check-cast v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$1800(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->callOnClick()Z

    goto :goto_2

    :cond_5
    const/16 v3, 0x9

    if-ne v0, v3, :cond_6

    .line 1124
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v3, v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 1125
    invoke-virtual {p0, v6, v2, v4, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    :cond_6
    const/16 v6, 0xa

    if-ne v0, v6, :cond_7

    .line 1127
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v5, v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 1128
    invoke-virtual {p0, v3, v2, v4, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    :cond_7
    const/16 v3, 0xd

    if-ne v0, v3, :cond_8

    .line 1130
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v3, v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 1131
    invoke-virtual {p0, v5, v2, v4, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 1133
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v3, v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1134
    invoke-virtual {p0, v1, v2, v4, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 1118
    :cond_9
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v3, v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1119
    invoke-virtual {p0, v1, v2, v4, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 1115
    :cond_a
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v5, v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 1116
    invoke-virtual {p0, v3, v2, v4, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    :cond_b
    :goto_2
    return v1

    .line 1104
    :cond_c
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v3, v0

    if-ge v1, v3, :cond_e

    .line 1105
    aget-object v3, v0, v1

    if-eqz v3, :cond_d

    .line 1106
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1109
    :cond_e
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    return v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 972
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SlideView;->hasCustomKeyboard()Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity;->setCustomKeyboardVisible(ZZ)V

    .line 973
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    if-eqz p1, :cond_0

    .line 974
    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$1500(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    :cond_0
    return-void
.end method

.method public onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
    .locals 17

    move-object/from16 v13, p0

    if-eqz p1, :cond_2

    .line 7904
    iget-object v0, v13, Lorg/telegram/ui/LoginActivity;->introView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 7905
    iget-object v0, v13, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 7906
    iget-object v0, v13, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 7909
    :cond_0
    new-instance v8, Lorg/telegram/ui/Components/TransformableLoginButtonView;

    iget-object v0, v13, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/TransformableLoginButtonView;-><init>(Landroid/content/Context;)V

    .line 7910
    iget-object v0, v13, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, v13, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setButtonText(Landroid/text/TextPaint;Ljava/lang/String;)V

    .line 7912
    iget-object v0, v13, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget-object v0, v13, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    .line 7913
    iget-object v0, v13, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7914
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 7915
    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 7918
    iget-object v2, v13, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v14, 0x0

    .line 7919
    aget v2, v1, v14

    const/4 v15, 0x1

    aget v3, v1, v15

    .line 7921
    iget-object v9, v13, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 7922
    aget v9, v1, v14

    sub-int/2addr v9, v2

    int-to-float v9, v9

    aget v1, v1, v15

    sub-int/2addr v1, v3

    int-to-float v11, v1

    .line 7923
    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 7924
    invoke-virtual {v8, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 7926
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, v13, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v1, v2

    iget-object v2, v13, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int v10, v1, v2

    .line 7927
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, v13, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iget-object v2, v13, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, v2

    .line 7928
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xe6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int v12, v1, v2

    new-array v0, v0, [F

    .line 7930
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 7931
    new-instance v0, Lorg/telegram/ui/LoginActivity$12;

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v8, v1}, Lorg/telegram/ui/LoginActivity$12;-><init>(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/Components/TransformableLoginButtonView;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string v0, "windowBackgroundWhite"

    .line 7962
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    .line 7963
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v16

    .line 7964
    new-instance v1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda4;

    move-object v0, v1

    move-object v14, v1

    move-object/from16 v1, p0

    move-object v15, v3

    move/from16 v3, v16

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LoginActivity;IILandroid/view/ViewGroup$MarginLayoutParams;IIILorg/telegram/ui/Components/TransformableLoginButtonView;FIFI)V

    invoke-virtual {v15, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7989
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7991
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x12c

    .line 7992
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v15, v1, v2

    .line 7993
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 7994
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .locals 4

    .line 1083
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 1084
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1086
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1090
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1091
    new-instance p1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/LoginActivity;)V

    const-wide/16 v2, 0xc8

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1093
    :try_start_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 3

    .line 229
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentConnectionState:I

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "custom_screen_type"

    .line 231
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/LoginActivity;->customScreenType:I

    .line 232
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isSearchByTelType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    .line 236
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 4

    .line 546
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 547
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 548
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 549
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v1, :cond_2

    .line 553
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    .line 554
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 556
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->editDoneCallback:[Ljava/lang/Runnable;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    if-eqz v3, :cond_3

    .line 558
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 928
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 929
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    if-eqz v0, :cond_0

    .line 930
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 932
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAltFocusable(Landroid/app/Activity;I)V

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 2

    .line 980
    array-length p2, p2

    if-eqz p2, :cond_5

    array-length p2, p3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    .line 982
    aget p3, p3, p2

    const/4 v0, 0x1

    if-nez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    .line 984
    iput-boolean p2, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    .line 985
    iget p1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-nez p1, :cond_5

    .line 986
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p2, p1

    check-cast p1, Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$1602(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z

    .line 987
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget p2, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object p1, p1, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SlideView;->onNextPressed(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    .line 990
    iput-boolean p2, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    .line 991
    iget p1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-nez p1, :cond_5

    .line 992
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p2, p1

    check-cast p1, Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-virtual {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->fillNumber()V

    goto :goto_1

    :cond_3
    const/16 p2, 0x14

    const/4 v0, 0x5

    if-ne p1, p2, :cond_4

    if-eqz p3, :cond_5

    .line 996
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p1, v0

    check-cast p1, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    .line 997
    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$1700(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ImageUpdater;->openCamera()V

    goto :goto_1

    :cond_4
    const/16 p2, 0x97

    if-ne p1, p2, :cond_5

    if-eqz p3, :cond_5

    .line 1001
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p1, v0

    check-cast p1, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    .line 1002
    new-instance p2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda15;

    invoke-direct {p2, p1}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 937
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 938
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 939
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 941
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 942
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 943
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 946
    :cond_1
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    const/4 v3, 0x4

    if-gt v0, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v4, v3, v0

    instance-of v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    if-eqz v4, :cond_2

    .line 947
    aget-object v0, v3, v0

    check-cast v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$1400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 948
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    int-to-long v5, v0

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v5, 0x15180

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    .line 949
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v3, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    const/4 v0, 0x0

    .line 950
    invoke-virtual {p0, v1, v1, v0, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 954
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 956
    :cond_2
    :goto_0
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-nez v0, :cond_3

    iget-boolean v2, p0, Lorg/telegram/ui/LoginActivity;->needRequestPermissions:Z

    if-nez v2, :cond_3

    .line 957
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v2, v0

    if-eqz v0, :cond_3

    .line 959
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 963
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 964
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 965
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->requestAltFocusable(Landroid/app/Activity;I)V

    .line 967
    :cond_4
    invoke-direct {p0, v1}, Lorg/telegram/ui/LoginActivity;->updateProxyButton(Z)V

    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 5

    .line 1656
    :try_start_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "currentViewNum"

    .line 1657
    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "syncContacts"

    .line 1658
    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 1659
    :goto_1
    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-gt v0, v1, :cond_2

    .line 1660
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 1662
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/SlideView;->saveStateParams(Landroid/os/Bundle;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1665
    :cond_2
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logininfo2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    const-string v3, ""

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1666
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1667
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    .line 1668
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/LoginActivity;->putBundleToEditor(Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 1669
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1671
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public setIntroView(Landroid/view/View;Landroid/widget/TextView;)Lorg/telegram/ui/LoginActivity;
    .locals 0

    .line 7896
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->introView:Landroid/view/View;

    .line 7897
    iput-object p2, p0, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 7898
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->isAnimatingIntro:Z

    return-object p0
.end method

.method public setPage(IZLandroid/os/Bundle;Z)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    const/16 v2, 0x9

    if-eq p1, v2, :cond_1

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    const/16 v2, 0xc

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/16 v3, 0x8

    if-eqz v2, :cond_3

    if-nez p1, :cond_2

    .line 1582
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    .line 1583
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    .line 1585
    :cond_2
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    .line 1586
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V

    .line 1588
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZ)V

    .line 1589
    iput v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    .line 1590
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZ)V

    if-nez p2, :cond_4

    .line 1592
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V

    goto :goto_2

    .line 1595
    :cond_3
    iput v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    .line 1596
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V

    .line 1597
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZ)V

    if-eq p1, v3, :cond_4

    .line 1599
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    :cond_4
    :goto_2
    if-eqz p2, :cond_9

    .line 1603
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v4, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v4, p2, v4

    .line 1604
    aget-object p2, p2, p1

    .line 1605
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 1606
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->needBackButton()Z

    move-result v6

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    const/16 v6, 0x8

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1608
    invoke-virtual {p2, p3, v1}, Lorg/telegram/ui/Components/SlideView;->setParams(Landroid/os/Bundle;Z)V

    .line 1609
    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->getHeaderName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentActivityTitle(Ljava/lang/CharSequence;)V

    .line 1610
    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 1611
    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    if-eqz p4, :cond_7

    neg-int p3, p3

    :cond_7
    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setX(F)V

    .line 1612
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1614
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1615
    new-instance v5, Lorg/telegram/ui/LoginActivity$11;

    invoke-direct {v5, p0, v2, v4}, Lorg/telegram/ui/LoginActivity$11;-><init>(Lorg/telegram/ui/LoginActivity;ZLorg/telegram/ui/Components/SlideView;)V

    invoke-virtual {p3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    .line 1626
    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v0, [F

    if-eqz p4, :cond_8

    .line 1627
    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->x:I

    goto :goto_5

    :cond_8
    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->x:I

    neg-int p4, p4

    :goto_5
    int-to-float p4, p4

    aput p4, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    aput-object p4, v2, v1

    sget-object p4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v0, [F

    const/4 v5, 0x0

    aput v5, v4, v1

    .line 1628
    invoke-static {p2, p4, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    aput-object p4, v2, v0

    .line 1626
    invoke-virtual {p3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x12c

    .line 1629
    invoke-virtual {p3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1630
    new-instance p4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1631
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    .line 1633
    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->hasCustomKeyboard()Z

    move-result p2

    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/LoginActivity;->setCustomKeyboardVisible(ZZ)V

    goto :goto_8

    .line 1635
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    iget-object p4, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p4, p4, p1

    invoke-virtual {p4}, Lorg/telegram/ui/Components/SlideView;->needBackButton()Z

    move-result p4

    if-nez p4, :cond_b

    iget-boolean p4, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    if-eqz p4, :cond_a

    goto :goto_6

    :cond_a
    const/16 p4, 0x8

    goto :goto_7

    :cond_b
    :goto_6
    const/4 p4, 0x0

    :goto_7
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1636
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget p4, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object p2, p2, p4

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1637
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget p4, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object p2, p2, p4

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->onHide()V

    .line 1638
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 1639
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p2, p2, p1

    invoke-virtual {p2, p3, v1}, Lorg/telegram/ui/Components/SlideView;->setParams(Landroid/os/Bundle;Z)V

    .line 1640
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p2, p2, p1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1641
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->getHeaderName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentActivityTitle(Ljava/lang/CharSequence;)V

    .line 1642
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 1644
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->hasCustomKeyboard()Z

    move-result p2

    invoke-direct {p0, p2, v1}, Lorg/telegram/ui/LoginActivity;->setCustomKeyboardVisible(ZZ)V

    .line 1647
    :goto_8
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    if-eqz p2, :cond_d

    if-nez p1, :cond_c

    goto :goto_9

    :cond_c
    const/16 v1, 0x8

    .line 1648
    :goto_9
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d
    return-void
.end method
