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
.method public static synthetic $r8$lambda$1F4PI8-CDQ2nZSJy8wcol_Wy_c8(Lorg/telegram/ui/LoginActivity;IILandroid/view/ViewGroup$MarginLayoutParams;IIILorg/telegram/ui/Components/TransformableLoginButtonView;FIFILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lorg/telegram/ui/LoginActivity;->lambda$onCustomTransitionAnimation$27(IILandroid/view/ViewGroup$MarginLayoutParams;IIILorg/telegram/ui/Components/TransformableLoginButtonView;FIFILandroid/animation/ValueAnimator;)V

    return-void
.end method

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

.method public static synthetic $r8$lambda$7bC7RHqm09JPFm0YW0rWLv7AgZM(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->lambda$resendCodeFromSafetyNet$19(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9KT1ncr4u0DyPIT99JT2LairzBE(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ATbCd5BbfYoIe-4UUkIqVEkiCYE(Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->lambda$resendCodeFromSafetyNet$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$CU_zBnJEUOfo9Dbys_-eNyEbmDk(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;ZLcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LoginActivity;->lambda$fillNextCodeParams$25(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;ZLcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GnX6u7irbHxcbUWV6jZhGbo4SF4(Lorg/telegram/ui/LoginActivity;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->lambda$showEditDoneProgress$16(IZZ)V

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

.method public static synthetic $r8$lambda$Nd7r_zVzMqMS-zOKAhevfRZEhRQ(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->lambda$fillNextCodeParams$23(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$OpUvGvAsvEbuzT67az4Jlw3Hqp8(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LoginActivity;->lambda$tryResetAccount$28(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

.method public static synthetic $r8$lambda$YxAkj7Y9r906_-Edj_4lnFtsMUI(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Landroid/os/Bundle;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/LoginActivity;->lambda$fillNextCodeParams$24(Lorg/telegram/tgnet/TLRPC$auth_SentCode;Landroid/os/Bundle;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z0Wumxs8ymx6HqVUEpRlrqw1c8U(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/LoginActivity;->lambda$tryResetAccount$30(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V

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

.method public static synthetic $r8$lambda$cr6r3LFjpPeFyKPGoVN9lfBhITs(Lorg/telegram/ui/LoginActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->lambda$resendCodeFromSafetyNet$20(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dG0rmE7Rf0xNmQThQT8ioJPPaW4(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/LoginActivity;->lambda$tryResetAccount$29(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dL1XjhNaUl2n7UesYQRJLe6wi5s(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->lambda$resendCodeFromSafetyNet$22(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kwdx661NvRlIc1K44IOe-9TV8tQ(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kzasbe_hPeU5-Ok4eE8O636caLA(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->lambda$fillNextCodeParams$26(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Ljava/lang/Exception;)V

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

    .line 199
    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lorg/telegram/ui/LoginActivity;->observers:[I

    .line 258
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

    .line 212
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 484
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Lorg/telegram/ui/Components/SlideView;

    .line 343
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 353
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    .line 354
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    .line 356
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    const/4 v1, 0x0

    .line 357
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->testBackend:Z

    .line 359
    iput v1, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/animation/AnimatorSet;

    .line 367
    iput-object v3, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    new-array v3, v2, [Z

    .line 374
    fill-array-data v3, :array_0

    iput-object v3, p0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    .line 390
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->customKeyboardWasVisible:Z

    new-array v1, v2, [Z

    .line 406
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->doneProgressVisible:[Z

    new-array v1, v2, [Ljava/lang/Runnable;

    .line 407
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->editDoneCallback:[Ljava/lang/Runnable;

    new-array v1, v2, [Z

    .line 408
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    .line 485
    iput p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    .line 486
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

    .line 480
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    const/16 p1, 0x10

    new-array p1, p1, [Lorg/telegram/ui/Components/SlideView;

    .line 343
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    .line 351
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;

    .line 352
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 353
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    .line 354
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    .line 356
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    const/4 p1, 0x0

    .line 357
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->testBackend:Z

    .line 359
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/animation/AnimatorSet;

    .line 367
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    new-array v1, v0, [Z

    .line 374
    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    .line 390
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->customKeyboardWasVisible:Z

    new-array p1, v0, [Z

    .line 406
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->doneProgressVisible:[Z

    new-array p1, v0, [Ljava/lang/Runnable;

    .line 407
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->editDoneCallback:[Ljava/lang/Runnable;

    new-array p1, v0, [Z

    .line 408
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

    .line 194
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->onDoneButtonPressed()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    return p0
.end method

.method static synthetic access$10900(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/LoginActivity;)[Lorg/telegram/ui/Components/SlideView;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    return-object p0
.end method

.method static synthetic access$11000(Lorg/telegram/ui/LoginActivity;)Ljava/lang/String;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->cancelDeletionPhone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$11100(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11200(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11300(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11400(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11500(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11600(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11700(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11800(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11900(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12000(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12100(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$12200(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12300(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12400(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12500(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12600(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->tryResetAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12700(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$13000(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$13100(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$13200(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$13300(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_account_sentEmailCode;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_account_sentEmailCode;)V

    return-void
.end method

.method static synthetic access$13400(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$13500(Lorg/telegram/ui/LoginActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->emailChangeFinishCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$13600(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$14000(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$14100(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$14200(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$14300(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$14700(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$15000(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$15100(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$16100(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->restoringState:Z

    return p0
.end method

.method static synthetic access$16200(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$16300(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$16400(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;Z)V
    .locals 0

    .line 194
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->onAuthSuccess(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;Z)V

    return-void
.end method

.method static synthetic access$16500(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$16600(Lorg/telegram/ui/LoginActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$16700(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$16800(Lorg/telegram/ui/LoginActivity;)Landroid/widget/TextView;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$16900(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$17000(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$17100(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 194
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/LoginActivity;)[Landroid/animation/AnimatorSet;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/TransformableLoginButtonView;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/LoginActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/LoginActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 194
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    return p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/LoginActivity;I)I
    .locals 0

    .line 194
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/LoginActivity;ZZ)V
    .locals 0

    .line 194
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 194
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isSearchByTelType()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/LoginActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/LoginActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->showKeyboard(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    return p0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/LoginActivity;Z)Z
    .locals 0

    .line 194
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    return p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->testBackend:Z

    return p0
.end method

.method static synthetic access$4802(Lorg/telegram/ui/LoginActivity;Z)Z
    .locals 0

    .line 194
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->testBackend:Z

    return p1
.end method

.method static synthetic access$4900()[I
    .locals 1

    .line 194
    sget-object v0, Lorg/telegram/ui/LoginActivity;->observers:[I

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->isRequestingFirebaseSms:Z

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/LoginActivity;Landroid/view/View;Z)V
    .locals 0

    .line 194
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->onFieldError(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5200(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 194
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    return-object p0
.end method

.method static synthetic access$5402(Lorg/telegram/ui/LoginActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 194
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardHideCallback:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$5500(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    return-object p0
.end method

.method static synthetic access$5602(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;
    .locals 0

    .line 194
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    return-object p1
.end method

.method static synthetic access$5700(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/LoginActivity;IZ)V
    .locals 0

    .line 194
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->needShowProgress(IZ)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6202(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 194
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->permissionsDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Lorg/telegram/ui/LoginActivity;Z)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->needHideProgress(Z)V

    return-void
.end method

.method static synthetic access$6900(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->forceDisableSafetyNet:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 194
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardForceDisabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/LoginActivity;I)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->needShowProgress(I)V

    return-void
.end method

.method static synthetic access$7400(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->isAnimatingIntro:Z

    return p0
.end method

.method static synthetic access$7602(Lorg/telegram/ui/LoginActivity;Z)Z
    .locals 0

    .line 194
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->isAnimatingIntro:Z

    return p1
.end method

.method static synthetic access$7700(Lorg/telegram/ui/LoginActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->animationFinishCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$7702(Lorg/telegram/ui/LoginActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 194
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->animationFinishCallback:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$7800()I
    .locals 1

    .line 194
    sget v0, Lorg/telegram/ui/LoginActivity;->SHOW_DELAY:I

    return v0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/LoginActivity;->currentConnectionState:I

    return p0
.end method

.method static synthetic access$7902(Lorg/telegram/ui/LoginActivity;I)I
    .locals 0

    .line 194
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->currentConnectionState:I

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->customKeyboardWasVisible:Z

    return p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/LoginActivity;Z)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->updateProxyButton(Z)V

    return-void
.end method

.method static synthetic access$8100(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->needRequestPermissions:Z

    return p0
.end method

.method static synthetic access$8102(Lorg/telegram/ui/LoginActivity;Z)Z
    .locals 0

    .line 194
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->needRequestPermissions:Z

    return p1
.end method

.method static synthetic access$8202(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 194
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$8300(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->currentTermsOfService:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    return-object p0
.end method

.method static synthetic access$8302(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;
    .locals 0

    .line 194
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->currentTermsOfService:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    return-object p1
.end method

.method static synthetic access$8400(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->onAuthSuccess(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    return-void
.end method

.method static synthetic access$8500(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    return-void
.end method

.method static synthetic access$8600(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->slideViewsContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/LoginActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/LoginActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 194
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$9100(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/LoginActivity;->progressRequestId:I

    return p0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 194
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isInCancelAccountDeletionMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 194
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/LoginActivity;ZZ)V
    .locals 0

    .line 194
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->needHideProgress(ZZ)V

    return-void
.end method

.method private clearCurrentState()V
    .locals 3

    .line 1019
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "logininfo2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1020
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1021
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1022
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_account_sentEmailCode;)V
    .locals 2

    .line 1718
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_sentEmailCode;->email_pattern:Ljava/lang/String;

    const-string v1, "emailPattern"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_account_sentEmailCode;->length:I

    const-string v0, "length"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p2, 0xd

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1720
    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V
    .locals 1

    const/4 v0, 0x1

    .line 1724
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/LoginActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Z)V

    return-void
.end method

.method private fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Z)V
    .locals 10

    .line 1759
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFirebaseSms;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->verifiedFirebase:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->isRequestingFirebaseSms:Z

    if-nez v0, :cond_1

    .line 1760
    sget-object v0, Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;->INSTANCE:Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;->hasServices()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1761
    invoke-direct {p0, v3}, Lorg/telegram/ui/LoginActivity;->needShowProgress(I)V

    .line 1762
    iput-boolean v2, p0, Lorg/telegram/ui/LoginActivity;->isRequestingFirebaseSms:Z

    .line 1763
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/safetynet/SafetyNet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/safetynet/SafetyNetClient;

    move-result-object v0

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->nonce:[B

    sget-object v2, Lorg/telegram/messenger/BuildVars;->SAFETYNET_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/safetynet/SafetyNetClient;->attest([BLjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Z)V

    .line 1764
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    .line 1810
    invoke-virtual {p3, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    :cond_0
    const-string p3, "Resend firebase sms because firebase is not available"

    .line 1817
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1818
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->resendCodeFromSafetyNet(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    :goto_0
    return-void

    .line 1823
    :cond_1
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->phone_code_hash:Ljava/lang/String;

    const-string v1, "phoneHash"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->next_type:Lorg/telegram/tgnet/TLRPC$auth_CodeType;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeCall;

    const/16 v4, 0xf

    const/16 v5, 0xb

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x4

    const-string v9, "nextType"

    if-eqz v1, :cond_2

    .line 1825
    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1826
    :cond_2
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeFlashCall;

    if-eqz v1, :cond_3

    .line 1827
    invoke-virtual {p1, v9, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1828
    :cond_3
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeSms;

    if-eqz v1, :cond_4

    .line 1829
    invoke-virtual {p1, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1830
    :cond_4
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeMissedCall;

    if-eqz v1, :cond_5

    .line 1831
    invoke-virtual {p1, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1832
    :cond_5
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeFragmentSms;

    if-eqz v0, :cond_6

    .line 1833
    invoke-virtual {p1, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1835
    :cond_6
    :goto_1
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeApp;

    const-string v1, "length"

    const-string v9, "type"

    if-eqz v0, :cond_7

    .line 1836
    invoke-virtual {p1, v9, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1837
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1838
    invoke-virtual {p0, v2, p3, p1, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto/16 :goto_3

    .line 1840
    :cond_7
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->timeout:I

    if-nez v0, :cond_8

    const/16 v0, 0x3c

    .line 1841
    iput v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->timeout:I

    .line 1843
    :cond_8
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->timeout:I

    mul-int/lit16 v0, v0, 0x3e8

    const-string v2, "timeout"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1844
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeCall;

    if-eqz v2, :cond_9

    .line 1845
    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1846
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1847
    invoke-virtual {p0, v8, p3, p1, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto/16 :goto_3

    .line 1848
    :cond_9
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFlashCall;

    if-eqz v2, :cond_a

    .line 1849
    invoke-virtual {p1, v9, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1850
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->pattern:Ljava/lang/String;

    const-string v0, "pattern"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    invoke-virtual {p0, v7, p3, p1, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto/16 :goto_3

    .line 1852
    :cond_a
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeSms;

    if-nez v2, :cond_f

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFirebaseSms;

    if-eqz v2, :cond_b

    goto :goto_2

    .line 1857
    :cond_b
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFragmentSms;

    if-eqz v2, :cond_c

    .line 1858
    invoke-virtual {p1, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1859
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1861
    invoke-virtual {p0, v4, p3, p1, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_3

    .line 1862
    :cond_c
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeMissedCall;

    if-eqz v2, :cond_d

    .line 1863
    invoke-virtual {p1, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1864
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1865
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->prefix:Ljava/lang/String;

    const-string v0, "prefix"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    invoke-virtual {p0, v5, p3, p1, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_3

    .line 1867
    :cond_d
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeSetUpEmailRequired;

    const-string v4, "googleSignInAllowed"

    if-eqz v2, :cond_e

    .line 1868
    iget-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->google_signin_allowed:Z

    invoke-virtual {p1, v4, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p2, 0xc

    .line 1869
    invoke-virtual {p0, p2, p3, p1, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_3

    .line 1870
    :cond_e
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeEmailCode;

    if-eqz v2, :cond_10

    .line 1871
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->google_signin_allowed:Z

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1872
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->email_pattern:Ljava/lang/String;

    const-string v2, "emailPattern"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1874
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->next_phone_login_date:I

    const-string v0, "nextPhoneLoginDate"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p2, 0xe

    .line 1875
    invoke-virtual {p0, p2, p3, p1, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_3

    .line 1853
    :cond_f
    :goto_2
    invoke-virtual {p1, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1854
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1855
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFirebaseSms;

    const-string v0, "firebase"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1856
    invoke-virtual {p0, v6, p3, p1, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    :cond_10
    :goto_3
    return-void
.end method

.method private isCustomKeyboardForceDisabled()Z
    .locals 2

    .line 825
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

    .line 829
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

    .line 510
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

    .line 242
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

    .line 591
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 594
    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    if-gt p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardHideCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 595
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 596
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardHideCallback:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 0

    .line 720
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->onDoneButtonPressed()V

    return-void
.end method

.method private synthetic lambda$createView$2(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 722
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    if-eqz p1, :cond_0

    .line 723
    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$17600(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 0

    .line 730
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity;->onBackPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 731
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 0

    .line 743
    new-instance p1, Lorg/telegram/ui/ProxyListActivity;

    invoke-direct {p1}, Lorg/telegram/ui/ProxyListActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$fillNextCodeParams$23(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Z)V
    .locals 0

    .line 1785
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Z)V

    return-void
.end method

.method private synthetic lambda$fillNextCodeParams$24(Lorg/telegram/tgnet/TLRPC$auth_SentCode;Landroid/os/Bundle;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    const/4 p5, 0x0

    .line 1781
    invoke-direct {p0, p5}, Lorg/telegram/ui/LoginActivity;->needHideProgress(Z)V

    .line 1782
    iput-boolean p5, p0, Lorg/telegram/ui/LoginActivity;->isRequestingFirebaseSms:Z

    .line 1783
    instance-of p4, p4, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p4, :cond_0

    .line 1784
    iget-object p4, p1, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    const/4 p5, 0x1

    iput-boolean p5, p4, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->verifiedFirebase:Z

    .line 1785
    new-instance p4, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda23;

    invoke-direct {p4, p0, p2, p1, p3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Z)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p3, "Resend firebase sms because auth.requestFirebaseSms = false"

    .line 1787
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1788
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/LoginActivity;->resendCodeFromSafetyNet(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$fillNextCodeParams$25(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;ZLcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse;)V
    .locals 4

    .line 1765
    invoke-virtual {p4}, Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse;->getJwsResult()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 1768
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_requestFirebaseSms;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_requestFirebaseSms;-><init>()V

    const-string v1, "phoneFormated"

    .line 1769
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_requestFirebaseSms;->phone_number:Ljava/lang/String;

    .line 1770
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->phone_code_hash:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_requestFirebaseSms;->phone_code_hash:Ljava/lang/String;

    .line 1771
    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_requestFirebaseSms;->safety_net_token:Ljava/lang/String;

    .line 1772
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_requestFirebaseSms;->flags:I

    const/4 v2, 0x1

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_requestFirebaseSms;->flags:I

    const-string v1, "\\."

    .line 1774
    invoke-virtual {p4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1775
    array-length v1, p4

    if-lez v1, :cond_1

    .line 1777
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    aget-object p4, p4, v2

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    const/4 v2, 0x0

    invoke-static {p4, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p4

    invoke-direct {v3, p4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p4, "basicIntegrity"

    .line 1779
    invoke-virtual {v1, p4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p4, "ctsProfileMatch"

    invoke-virtual {v1, p4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 1780
    iget p4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, p2, p1, p3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Landroid/os/Bundle;Z)V

    const/16 p3, 0xa

    invoke-virtual {p4, v0, v1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    :cond_0
    const-string p3, "Resend firebase sms because ctsProfileMatch or basicIntegrity = false"

    .line 1792
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1793
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->resendCodeFromSafetyNet(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 1796
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p3, "Resend firebase sms because of exception"

    .line 1798
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1799
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->resendCodeFromSafetyNet(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    goto :goto_0

    :cond_1
    const-string p3, "Resend firebase sms because can\'t split JWS token"

    .line 1802
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1803
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->resendCodeFromSafetyNet(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    goto :goto_0

    :cond_2
    const-string p3, "Resend firebase sms because JWS = null"

    .line 1806
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1807
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->resendCodeFromSafetyNet(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$fillNextCodeParams$26(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Ljava/lang/Exception;)V
    .locals 0

    .line 1811
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p3, "Resend firebase sms because of safetynet exception"

    .line 1813
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1814
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->resendCodeFromSafetyNet(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    return-void
.end method

.method private static synthetic lambda$needFinishActivity$18(ZLjava/lang/Void;)Lorg/telegram/ui/DialogsActivity;
    .locals 1

    .line 1654
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "afterSignup"

    .line 1655
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1656
    new-instance p0, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private static synthetic lambda$needShowInvalidAlert$11(ZLjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1216
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

    .line 1217
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

    .line 1219
    new-instance p4, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {p4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mailto:"

    .line 1220
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

    .line 1221
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

    .line 1223
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Banned phone number: "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1224
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

    .line 1226
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid phone number: "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1227
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

    .line 1229
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

    .line 1231
    :catch_0
    new-instance p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1232
    sget p1, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1233
    sget p1, Lorg/telegram/messenger/R$string;->NoMailInstalled:I

    const-string p3, "NoMailInstalled"

    invoke-static {p3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1234
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    const-string p3, "OK"

    invoke-static {p3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1235
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :goto_2
    return-void
.end method

.method private synthetic lambda$onCustomTransitionAnimation$27(IILandroid/view/ViewGroup$MarginLayoutParams;IIILorg/telegram/ui/Components/TransformableLoginButtonView;FIFILandroid/animation/ValueAnimator;)V
    .locals 2

    .line 7710
    invoke-virtual {p12}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p12

    check-cast p12, Ljava/lang/Float;

    invoke-virtual {p12}, Ljava/lang/Float;->floatValue()F

    move-result p12

    .line 7711
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p12}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 7712
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    int-to-float p2, p2

    mul-float p2, p2, p12

    float-to-int p2, p2

    invoke-static {p1, p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p12

    .line 7715
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->slideViewsContainer:Landroid/widget/FrameLayout;

    const/16 v0, 0x14

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 7716
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardForceDisabled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 7717
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 7718
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 7721
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

    .line 7723
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->introView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 7724
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->introView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    int-to-float p1, p4

    sub-int p2, p5, p4

    int-to-float p2, p2

    mul-float p2, p2, p12

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 7726
    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float p1, p6

    sub-int/2addr p5, p6

    int-to-float p2, p5

    mul-float p2, p2, p12

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 7727
    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 7728
    invoke-virtual {p7}, Landroid/view/View;->requestLayout()V

    .line 7730
    invoke-virtual {p7, p12}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setProgress(F)V

    int-to-float p1, p9

    sub-float/2addr p1, p8

    mul-float p1, p1, p12

    add-float/2addr p8, p1

    .line 7731
    invoke-virtual {p7, p8}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p1, p11

    sub-float/2addr p1, p10

    mul-float p1, p1, p12

    add-float/2addr p10, p1

    .line 7732
    invoke-virtual {p7, p10}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$onDialogDismiss$8()V
    .locals 1

    const/4 v0, 0x0

    .line 1063
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->needRequestPermissions:Z

    return-void
.end method

.method private synthetic lambda$onDoneButtonPressed$14(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1358
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget p2, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SlideView;->onCancelPressed()V

    const/4 p1, 0x1

    .line 1359
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->needHideProgress(Z)V

    return-void
.end method

.method private static synthetic lambda$onFieldError$10(Lorg/telegram/ui/Components/OutlineTextContainerView;Landroid/view/View;Landroid/widget/EditText;Landroid/text/TextWatcher;)V
    .locals 1

    const/4 v0, 0x0

    .line 1164
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateError(F)V

    .line 1165
    sget p0, Lorg/telegram/messenger/R$id;->timeout_callback:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 1167
    new-instance p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda16;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda16;-><init>(Landroid/widget/EditText;Landroid/text/TextWatcher;)V

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onFieldError$9(Landroid/widget/EditText;Landroid/text/TextWatcher;)V
    .locals 0

    .line 1167
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private static synthetic lambda$onRequestPermissionsResultFragment$7(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V
    .locals 0

    .line 971
    invoke-static {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$1700(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImageUpdater;->openGallery()V

    return-void
.end method

.method private synthetic lambda$resendCodeFromSafetyNet$19(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 1736
    check-cast p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    return-void
.end method

.method private synthetic lambda$resendCodeFromSafetyNet$20(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x1

    .line 1746
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->forceDisableSafetyNet:Z

    .line 1747
    iget p2, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 1748
    invoke-virtual {p0, p2, p1, v0, p1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$resendCodeFromSafetyNet$21()V
    .locals 3

    .line 1739
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1742
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    .line 1743
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->SafetyNetErrorOccurred:I

    .line 1744
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    .line 1745
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 1751
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$resendCodeFromSafetyNet$22(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1736
    new-instance p3, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda22;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1738
    :cond_0
    new-instance p1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda20;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setCustomKeyboardVisible$5(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 847
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 848
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 849
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

    .line 874
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 875
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 876
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

    .line 1265
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1266
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 1267
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

    .line 1275
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1276
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 1277
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

    .line 1376
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZZ)V

    return-void
.end method

.method private synthetic lambda$showEditDoneProgress$16(IZZ)V
    .locals 1

    .line 1391
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    .line 1392
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    const/4 p1, 0x1

    .line 1393
    invoke-direct {p0, p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZZ)V

    .line 1394
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    return-void
.end method

.method private synthetic lambda$showEditDoneProgress$17(ZLandroid/animation/ValueAnimator;)V
    .locals 4

    .line 1447
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

    .line 1451
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1452
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1453
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    mul-float v0, v0, p2

    add-float/2addr v0, v1

    .line 1456
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1457
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1458
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    mul-float v0, v0, p2

    add-float/2addr v0, v1

    .line 1461
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1462
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1463
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$tryResetAccount$28(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    .line 7808
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

    .line 7814
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 7815
    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7816
    invoke-virtual {p1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7817
    invoke-virtual {p1, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x5

    .line 7818
    invoke-virtual {p0, p2, v4, p1, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 7811
    invoke-virtual {p0, v0, v4, p1, v4}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void

    .line 7820
    :cond_2
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "2FA_RECENT_CONFIRM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7821
    sget p1, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->ResetAccountCancelledAlert:I

    const-string p3, "ResetAccountCancelledAlert"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7822
    :cond_3
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "2FA_CONFIRM_WAIT_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 7823
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 7824
    invoke-virtual {v5, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7825
    invoke-virtual {v5, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7826
    invoke-virtual {v5, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7827
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p2

    const-string p3, "startTime"

    invoke-virtual {v5, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7828
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

    .line 7829
    invoke-virtual {p0, p1, v4, v5, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_1

    .line 7831
    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$tryResetAccount$29(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 7807
    new-instance p4, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda24;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$tryResetAccount$30(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p4, 0x0

    .line 7804
    invoke-direct {p0, p4}, Lorg/telegram/ui/LoginActivity;->needShowProgress(I)V

    .line 7805
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_account_deleteAccount;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_account_deleteAccount;-><init>()V

    const-string p5, "Forgot password"

    .line 7806
    iput-object p5, p4, Lorg/telegram/tgnet/TLRPC$TL_account_deleteAccount;->reason:Ljava/lang/String;

    .line 7807
    iget p5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p5

    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-virtual {p5, p4, v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public static loadCurrentState(Z)Landroid/os/Bundle;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    .line 981
    :cond_0
    :try_start_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 982
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "logininfo2"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 983
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 984
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 985
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 986
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v5, "_\\|_"

    .line 987
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 988
    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 989
    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 990
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 991
    :cond_2
    instance-of v5, v2, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 992
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 993
    :cond_3
    instance-of v5, v2, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    .line 994
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 996
    :cond_4
    array-length v4, v5

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 997
    aget-object v4, v5, v3

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_5

    .line 999
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1000
    aget-object v6, v5, v3

    invoke-virtual {p0, v6, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1002
    :cond_5
    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 1003
    aget-object v5, v5, v7

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1004
    :cond_6
    instance-of v6, v2, Ljava/lang/Integer;

    if-eqz v6, :cond_7

    .line 1005
    aget-object v5, v5, v7

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1006
    :cond_7
    instance-of v6, v2, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    .line 1007
    aget-object v5, v5, v7

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_8
    return-object p0

    :catch_0
    move-exception p0

    .line 1013
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private needFinishActivity(ZZI)V
    .locals 3

    .line 1646
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1647
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 1649
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    .line 1650
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_3

    .line 1651
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    if-eqz v0, :cond_1

    .line 1652
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    .line 1653
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/LaunchActivity;

    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda26;

    invoke-direct {v0, p1}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda26;-><init>(Z)V

    invoke-virtual {p2, p3, v1, v0}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZLorg/telegram/messenger/GenericProvider;)V

    .line 1658
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1662
    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    const/4 p2, 0x6

    const/4 v2, 0x0

    invoke-direct {p1, p2, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(ILorg/telegram/tgnet/TLRPC$account_Password;)V

    .line 1663
    invoke-virtual {p1, p3}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setBlockingAlert(I)V

    .line 1664
    invoke-virtual {p1, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setFromRegistration(Z)V

    .line 1665
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0

    .line 1667
    :cond_2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "afterSignup"

    .line 1668
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1669
    new-instance p1, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1670
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 1673
    :goto_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1674
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/LocaleController;->loadRemoteLanguages(I)V

    .line 1675
    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->checkRestrictedLanguages(Z)V

    goto :goto_1

    .line 1677
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/ExternalActionActivity;

    if-eqz p1, :cond_4

    .line 1678
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

    .line 1530
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity;->needHideProgress(ZZ)V

    return-void
.end method

.method private needHideProgress(ZZ)V
    .locals 3

    .line 1534
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->progressRequestId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1536
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/LoginActivity;->progressRequestId:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1538
    :cond_0
    iput v1, p0, Lorg/telegram/ui/LoginActivity;->progressRequestId:I

    .line 1541
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isInCancelAccountDeletionMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_2

    .line 1542
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 1543
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1546
    :cond_2
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZ)V

    return-void
.end method

.method private needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1121
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1124
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1125
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1126
    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1127
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    const-string p2, "OK"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1128
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

    .line 1186
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1189
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_1

    .line 1191
    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1192
    sget p2, Lorg/telegram/messenger/R$string;->BannedPhoneNumber:I

    const-string v1, "BannedPhoneNumber"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_1
    if-eqz p2, :cond_5

    .line 1194
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

    .line 1196
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

    .line 1197
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_2

    move v1, v3

    goto :goto_0

    .line 1202
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

    .line 1203
    sget v1, Lorg/telegram/messenger/R$string;->WrongNumberFormat:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1204
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

    .line 1206
    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1207
    sget p2, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 1210
    :cond_5
    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1211
    sget p2, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1214
    :goto_1
    sget p2, Lorg/telegram/messenger/R$string;->BotHelp:I

    const-string v1, "BotHelp"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p3, p1, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda9;-><init>(ZLjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1238
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    const-string p2, "OK"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1239
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

    .line 1182
    invoke-static {p0, p1, v0, p2}, Lorg/telegram/ui/LoginActivity;->needShowInvalidAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Z)V

    return-void
.end method

.method private needShowProgress(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1510
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity;->needShowProgress(IZ)V

    return-void
.end method

.method private needShowProgress(IZ)V
    .locals 1

    .line 1514
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isInCancelAccountDeletionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 1515
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

    .line 1519
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 p2, 0x0

    .line 1520
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 1521
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void

    .line 1525
    :cond_2
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->progressRequestId:I

    const/4 p1, 0x1

    .line 1526
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZ)V

    return-void
.end method

.method private onAuthSuccess(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V
    .locals 1

    const/4 v0, 0x0

    .line 1683
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity;->onAuthSuccess(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;Z)V

    return-void
.end method

.method private onAuthSuccess(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;Z)V
    .locals 4

    .line 1687
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->cleanup()V

    .line 1688
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setUserId(J)V

    .line 1689
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->clearConfig()V

    .line 1690
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->cleanup()V

    .line 1691
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    .line 1692
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1693
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1694
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->cleanup(Z)V

    .line 1695
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1696
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1697
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1698
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1699
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->checkAppAccount()V

    .line 1700
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->checkPromoInfo(Z)V

    .line 1701
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->updateDcSettings()V

    .line 1703
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->future_auth_token:[B

    if-eqz v0, :cond_0

    .line 1704
    invoke-static {p1}, Lorg/telegram/messenger/AuthTokensHelper;->saveLogInToken(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    goto :goto_0

    :cond_0
    const-string v0, "onAuthSuccess future_auth_token is empty"

    .line 1706
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 1710
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->putDialogsEndReachedAfterRegistration()V

    .line 1712
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const-string v2, "tg_placeholders_android"

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/MediaDataController;->loadStickersByEmojiOrName(Ljava/lang/String;ZZ)V

    .line 1714
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->setup_password_required:Z

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->otherwise_relogin_days:I

    invoke-direct {p0, p2, v0, p1}, Lorg/telegram/ui/LoginActivity;->needFinishActivity(ZZI)V

    return-void
.end method

.method private onDoneButtonPressed()V
    .locals 4

    .line 1346
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 1349
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1350
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1353
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1354
    sget v2, Lorg/telegram/messenger/R$string;->StopLoadingTitle:I

    const-string v3, "StopLoadingTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1355
    sget v2, Lorg/telegram/messenger/R$string;->StopLoading:I

    const-string v3, "StopLoading"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1356
    sget v2, Lorg/telegram/messenger/R$string;->WaitMore:I

    const-string v3, "WaitMore"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1357
    sget v1, Lorg/telegram/messenger/R$string;->Stop:I

    const-string v2, "Stop"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1361
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 1363
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

    .line 1132
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    const/high16 v0, 0x40600000    # 3.5f

    .line 1133
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    if-eqz p2, :cond_1

    .line 1136
    instance-of p2, p1, Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-eqz p2, :cond_1

    .line 1137
    sget p2, Lorg/telegram/messenger/R$id;->timeout_callback:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1139
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1142
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/OutlineTextContainerView;

    .line 1143
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1144
    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;->getAttachedEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 1145
    new-instance v3, Lorg/telegram/ui/LoginActivity$8;

    invoke-direct {v3, p0, v2, v1}, Lorg/telegram/ui/LoginActivity$8;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/widget/EditText;Ljava/util/concurrent/atomic/AtomicReference;)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1162
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateError(F)V

    .line 1163
    new-instance v4, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda17;

    invoke-direct {v4, v0, p1, v2, v3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/OutlineTextContainerView;Landroid/view/View;Landroid/widget/EditText;Landroid/text/TextWatcher;)V

    .line 1170
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const-wide/16 v0, 0x7d0

    .line 1171
    invoke-virtual {p1, v4, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1172
    invoke-virtual {p1, p2, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v2, :cond_1

    .line 1175
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method

.method private putBundleToEditor(Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 5

    .line 1026
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1027
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

    .line 1028
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1029
    instance-of v3, v2, Ljava/lang/String;

    const-string v4, "_|_"

    if-eqz v3, :cond_2

    if-eqz p3, :cond_1

    .line 1031
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

    .line 1033
    :cond_1
    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1035
    :cond_2
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    if-eqz p3, :cond_3

    .line 1037
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

    .line 1039
    :cond_3
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1041
    :cond_4
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_6

    if-eqz p3, :cond_5

    .line 1043
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

    .line 1045
    :cond_5
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 1047
    :cond_6
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 1048
    check-cast v2, Landroid/os/Bundle;

    invoke-direct {p0, v2, p2, v1}, Lorg/telegram/ui/LoginActivity;->putBundleToEditor(Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private resendCodeFromSafetyNet(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V
    .locals 2

    const/4 v0, 0x0

    .line 1728
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity;->needHideProgress(Z)V

    .line 1729
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->isRequestingFirebaseSms:Z

    .line 1731
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    const-string v1, "phoneFormated"

    .line 1732
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    .line 1733
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->phone_code_hash:Ljava/lang/String;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    .line 1734
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;)V

    const/16 p1, 0xa

    invoke-virtual {p2, v0, v1, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private setCustomKeyboardVisible(ZZ)V
    .locals 5

    .line 833
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->customKeyboardWasVisible:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 834
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->customKeyboardWasVisible:Z

    .line 836
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardForceDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    const-wide/16 v2, 0x12c

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    .line 841
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 842
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {p1, v4}, Lorg/telegram/messenger/AndroidUtilities;->requestAltFocusable(Landroid/app/Activity;I)V

    if-eqz p2, :cond_2

    new-array p1, v0, [F

    .line 844
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    .line 845
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 846
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 851
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/LoginActivity$6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$6;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 864
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 866
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 869
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAltFocusable(Landroid/app/Activity;I)V

    if-eqz p2, :cond_4

    new-array p1, v0, [F

    .line 871
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    .line 872
    sget-object p2, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 873
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 878
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/LoginActivity$7;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$7;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 888
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 890
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

    .line 1243
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1244
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    aget-boolean v4, v4, v0

    if-ne v4, p1, :cond_1

    return-void

    .line 1248
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    aget-object v5, v4, v0

    if-eqz v5, :cond_3

    if-eqz p2, :cond_2

    .line 1250
    aget-object v0, v4, v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 1252
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v4, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1254
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    iget v4, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aput-boolean p1, v0, v4

    const/4 v0, 0x0

    const/high16 v5, 0x428c0000    # 70.0f

    if-eqz p2, :cond_9

    .line 1256
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v6, p2, v4

    const/4 p2, 0x2

    if-eqz p1, :cond_5

    if-eqz v3, :cond_6

    .line 1259
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    .line 1260
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 1261
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    new-array p2, p2, [F

    .line 1263
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->getOffsetY()F

    move-result v4

    aput v4, p2, v2

    aput v0, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1264
    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1269
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    new-array p2, p2, [F

    .line 1273
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->getOffsetY()F

    move-result v0

    aput v0, p2, v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    aput v0, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1274
    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1279
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1282
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

    .line 1318
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    goto :goto_2

    .line 1321
    :cond_7
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    .line 1327
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object v0, v0, v1

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1328
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1329
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget p2, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_9
    if-eqz p1, :cond_a

    if-eqz v3, :cond_b

    .line 1333
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1334
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    goto :goto_3

    :cond_a
    if-eqz v3, :cond_b

    .line 1338
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1339
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

    .line 1368
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZZ)V

    return-void
.end method

.method private showEditDoneProgress(ZZZ)V
    .locals 6

    if-eqz p2, :cond_0

    .line 1372
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->doneProgressVisible:[Z

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-boolean v0, v0, v1

    if-ne v0, p1, :cond_0

    if-nez p3, :cond_0

    return-void

    .line 1375
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1376
    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/LoginActivity;ZZZ)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 1379
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

    .line 1382
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->doneProgressVisible:[Z

    aput-boolean p1, p3, v0

    if-eqz p2, :cond_5

    .line 1385
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    aget-boolean p3, p3, v0

    if-eqz p3, :cond_3

    .line 1386
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->editDoneCallback:[Ljava/lang/Runnable;

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1387
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    iget p2, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aput-boolean v2, p1, p2

    return-void

    :cond_3
    if-eqz p1, :cond_5

    .line 1390
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->editDoneCallback:[Ljava/lang/Runnable;

    new-instance v2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/LoginActivity;IZZ)V

    aput-object v2, p3, v0

    const-wide/16 p1, 0x7d0

    invoke-static {v2, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1396
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    iget p2, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aput-boolean v1, p1, p2

    return-void

    .line 1401
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    aput-boolean v2, p3, v0

    .line 1402
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->doneProgressVisible:[Z

    aput-boolean p1, p3, v0

    .line 1405
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_6

    .line 1406
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_6
    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_9

    .line 1410
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

    .line 1411
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1412
    new-instance p3, Lorg/telegram/ui/LoginActivity$10;

    invoke-direct {p3, p0, p1, v3}, Lorg/telegram/ui/LoginActivity$10;-><init>(Lorg/telegram/ui/LoginActivity;ZZ)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1446
    new-instance p1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LoginActivity;Z)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1466
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-array p3, v1, [Landroid/animation/Animator;

    aput-object p2, p3, v2

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1467
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 p2, 0x96

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1468
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    :cond_9
    const/4 p2, 0x4

    const v4, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_b

    if-eqz v3, :cond_a

    .line 1472
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1473
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1474
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1475
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1476
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 1477
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 1478
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1479
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1480
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    goto :goto_2

    .line 1482
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1483
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1484
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1485
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    goto :goto_2

    .line 1488
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz v3, :cond_c

    .line 1490
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1491
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1492
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1493
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1494
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 1495
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 1496
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1497
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1498
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 1500
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1501
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1502
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 1503
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    :goto_2
    return-void
.end method

.method private showKeyboard(Landroid/view/View;)Z
    .locals 1

    .line 7634
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7635
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private tryResetAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 7797
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 7800
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7801
    sget v1, Lorg/telegram/messenger/R$string;->ResetMyAccountWarningText:I

    const-string v2, "ResetMyAccountWarningText"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7802
    sget v1, Lorg/telegram/messenger/R$string;->ResetMyAccountWarning:I

    const-string v2, "ResetMyAccountWarning"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7803
    sget v1, Lorg/telegram/messenger/R$string;->ResetMyAccountWarningReset:I

    const-string v2, "ResetMyAccountWarningReset"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7836
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p2, "Cancel"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7837
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private updateColors()V
    .locals 8

    .line 7746
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7748
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x38

    .line 7749
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

    .line 7750
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x0

    const/16 v6, 0x15

    if-ge v4, v6, :cond_0

    .line 7751
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 7752
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v6, -0x1000000

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 7753
    new-instance v4, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v4, v0, v2, v5, v5}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 7754
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v2, v4

    .line 7757
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7759
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 7760
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    const-string v2, "listSelectorSDK21"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7762
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 7763
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 7764
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7768
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 7770
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    const-string v1, "chats_actionIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setColor(I)V

    .line 7771
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setBackgroundColor(I)V

    .line 7773
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 7775
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v1, v0

    :goto_0
    if-ge v5, v1, :cond_2

    aget-object v2, v0, v5

    .line 7776
    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->updateColors()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7779
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->updateColors()V

    .line 7780
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    if-eqz v0, :cond_3

    .line 7781
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$17200(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    :cond_3
    return-void
.end method

.method private updateProxyButton(Z)V
    .locals 5

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->proxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "proxy_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 250
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

    .line 497
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeletionPhone:Ljava/lang/String;

    .line 498
    iput-object p2, p0, Lorg/telegram/ui/LoginActivity;->cancelDeletionParams:Landroid/os/Bundle;

    .line 499
    iput-object p3, p0, Lorg/telegram/ui/LoginActivity;->cancelDeletionCode:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    const/4 p1, 0x1

    .line 500
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    return-object p0
.end method

.method public changeEmail(Ljava/lang/Runnable;)Lorg/telegram/ui/LoginActivity;
    .locals 1

    const/4 v0, 0x3

    .line 490
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    const/16 v0, 0xc

    .line 491
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 492
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->emailChangeFinishCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public changePhoneNumber()Lorg/telegram/ui/LoginActivity;
    .locals 1

    const/4 v0, 0x2

    .line 505
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    return-object p0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 534
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 535
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/LoginActivity$1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/LoginActivity$1;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 548
    iput v3, v0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    .line 549
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 550
    aput-boolean v3, v2, v4

    .line 552
    new-instance v2, Lorg/telegram/ui/LoginActivity$2;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/LoginActivity$2;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 590
    new-instance v5, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda31;

    invoke-direct {v5, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 599
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 601
    new-instance v2, Lorg/telegram/ui/LoginActivity$3;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/LoginActivity$3;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    .line 610
    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 611
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v6, -0x1

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    .line 614
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 615
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    const/4 v7, -0x2

    const/16 v8, 0x33

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    new-instance v2, Landroid/widget/Space;

    invoke-direct {v2, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 618
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/Space;->setMinimumHeight(I)V

    .line 619
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 620
    new-instance v2, Lorg/telegram/ui/LoginActivity$4;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/LoginActivity$4;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->slideViewsContainer:Landroid/widget/FrameLayout;

    .line 649
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v3, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    new-instance v2, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    .line 651
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    const/16 v8, 0xe6

    invoke-static {v6, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 653
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    aput-object v5, v2, v3

    .line 654
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-direct {v5, v0, v1, v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v5, v2, v4

    .line 655
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/4 v8, 0x2

    invoke-direct {v5, v0, v1, v8}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v5, v2, v8

    .line 656
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/4 v9, 0x3

    invoke-direct {v5, v0, v1, v9}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v5, v2, v9

    .line 657
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/4 v10, 0x4

    invoke-direct {v5, v0, v1, v10}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v5, v2, v10

    .line 658
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    const/4 v11, 0x5

    aput-object v5, v2, v11

    .line 659
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    const/4 v12, 0x6

    aput-object v5, v2, v12

    .line 660
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    const/4 v13, 0x7

    aput-object v5, v2, v13

    .line 661
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    const/16 v14, 0x8

    aput-object v5, v2, v14

    .line 662
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityNewPasswordView;

    invoke-direct {v5, v0, v1, v3}, Lorg/telegram/ui/LoginActivity$LoginActivityNewPasswordView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    const/16 v15, 0x9

    aput-object v5, v2, v15

    .line 663
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityNewPasswordView;

    invoke-direct {v5, v0, v1, v4}, Lorg/telegram/ui/LoginActivity$LoginActivityNewPasswordView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    const/16 v14, 0xa

    aput-object v5, v2, v14

    .line 664
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/16 v9, 0xb

    invoke-direct {v5, v0, v1, v9}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v5, v2, v9

    .line 665
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    const/16 v9, 0xc

    aput-object v5, v2, v9

    .line 666
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/16 v5, 0xd

    new-instance v9, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;

    invoke-direct {v9, v0, v1, v4}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;Z)V

    aput-object v9, v2, v5

    .line 667
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/16 v5, 0xe

    new-instance v9, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;

    invoke-direct {v9, v0, v1, v3}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;Z)V

    aput-object v9, v2, v5

    .line 668
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/16 v9, 0xf

    invoke-direct {v5, v0, v1, v9}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v5, v2, v9

    const/4 v2, 0x0

    .line 670
    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v9, v5

    if-ge v2, v9, :cond_4

    .line 671
    aget-object v5, v5, v2

    if-nez v2, :cond_1

    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    const/16 v9, 0x8

    :goto_2
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 672
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

    .line 675
    :cond_4
    iget v2, v0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    if-nez v2, :cond_5

    iget-boolean v2, v0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->loadCurrentState(Z)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_9

    const-string v9, "currentViewNum"

    .line 677
    invoke-virtual {v2, v9, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    const-string v9, "syncContacts"

    .line 678
    invoke-virtual {v2, v9, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v4, :cond_6

    const/4 v9, 0x1

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    :goto_6
    iput-boolean v9, v0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    .line 679
    iget v9, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-lt v9, v4, :cond_7

    if-gt v9, v10, :cond_7

    const-string v9, "open"

    .line 680
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_9

    .line 681
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

    .line 682
    iput v3, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 684
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    goto :goto_7

    :cond_7
    if-ne v9, v12, :cond_8

    .line 687
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v5, v5, v12

    check-cast v5, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    .line 688
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$1200(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v5

    if-nez v5, :cond_9

    .line 689
    iput v3, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 691
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    goto :goto_7

    :cond_8
    if-ne v9, v13, :cond_9

    .line 694
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v5, v5, v13

    check-cast v5, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    .line 695
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->access$1300(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    .line 696
    iput v3, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 698
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    :goto_7
    const/4 v5, 0x0

    goto :goto_8

    :cond_9
    move-object v5, v2

    .line 703
    :goto_8
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    .line 704
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    aget-boolean v6, v6, v3

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    goto :goto_9

    :cond_a
    const/16 v6, 0x8

    :goto_9
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 705
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v2, v6, :cond_b

    .line 706
    new-instance v9, Landroid/animation/StateListAnimator;

    invoke-direct {v9}, Landroid/animation/StateListAnimator;-><init>()V

    new-array v13, v4, [I

    const v14, 0x10100a7

    aput v14, v13, v3

    .line 707
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

    .line 708
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

    .line 709
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v9}, Landroid/widget/FrameLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 710
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v12, Lorg/telegram/ui/LoginActivity$5;

    invoke-direct {v12, v0}, Lorg/telegram/ui/LoginActivity$5;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v9, v12}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 718
    :cond_b
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    move-result-object v9

    iput-object v9, v0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 719
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

    .line 720
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v12, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda11;

    invoke-direct {v12, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v9, v12}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    new-instance v12, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda13;

    invoke-direct {v12, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v9, v12}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 727
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    .line 728
    sget v12, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 729
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    new-instance v12, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda12;

    invoke-direct {v12, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    sget v12, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 735
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    .line 736
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    invoke-virtual {v12, v9, v9, v9, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 737
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

    .line 739
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->isSearchByTelType()Z

    move-result v12

    if-nez v12, :cond_e

    .line 740
    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    .line 741
    new-instance v12, Lorg/telegram/ui/Components/ProxyDrawable;

    invoke-direct {v12, v1}, Lorg/telegram/ui/Components/ProxyDrawable;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/LoginActivity;->proxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

    .line 742
    iget-object v13, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 743
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    new-instance v13, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda10;

    invoke-direct {v13, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    invoke-virtual {v12, v9, v9, v9, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 745
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

    .line 746
    invoke-direct {v0, v3}, Lorg/telegram/ui/LoginActivity;->updateProxyButton(Z)V

    .line 750
    :cond_e
    new-instance v9, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v9, v1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v12, 0x14

    .line 751
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v9, v12}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 752
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 753
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v12, 0x3dcccccd    # 0.1f

    invoke-virtual {v9, v12}, Landroid/view/View;->setScaleX(F)V

    .line 754
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v9, v12}, Landroid/view/View;->setScaleY(F)V

    .line 755
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

    .line 757
    new-instance v9, Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-direct {v9, v1}, Lorg/telegram/ui/Components/TransformableLoginButtonView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    .line 758
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->isSearchByTelType()Z

    move-result v13

    if-eqz v13, :cond_f

    sget v13, Lcom/smedialink/common/IdFabric$CustomType;->TRANSFORMABLE_LOGIN_BUTTON_SEARCH:I

    goto :goto_c

    :cond_f
    const/4 v13, 0x0

    :goto_c
    invoke-virtual {v9, v13}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setTransformType(I)V

    .line 759
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v9, v7}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setProgress(F)V

    .line 760
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setDrawBackground(Z)V

    .line 761
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget v9, Lorg/telegram/messenger/R$string;->Done:I

    const-string v13, "Done"

    invoke-static {v13, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 762
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

    .line 764
    new-instance v2, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v1, 0x16

    .line 765
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 766
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 767
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setScaleX(F)V

    .line 768
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setScaleY(F)V

    .line 769
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 770
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v6, -0x1

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v5, :cond_12

    .line 773
    iput-boolean v4, v0, Lorg/telegram/ui/LoginActivity;->restoringState:Z

    :cond_12
    const/4 v1, 0x0

    .line 775
    :goto_e
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v6, v2

    if-ge v1, v6, :cond_23

    .line 776
    aget-object v2, v2, v1

    if-eqz v5, :cond_14

    if-lt v1, v4, :cond_13

    if-gt v1, v10, :cond_13

    .line 779
    iget v6, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-ne v1, v6, :cond_14

    .line 780
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/SlideView;->restoreStateParams(Landroid/os/Bundle;)V

    goto :goto_f

    .line 783
    :cond_13
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/SlideView;->restoreStateParams(Landroid/os/Bundle;)V

    .line 786
    :cond_14
    :goto_f
    iget v6, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-ne v6, v1, :cond_21

    .line 787
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

    .line 789
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    if-eqz v6, :cond_18

    if-nez v1, :cond_17

    const/4 v7, 0x0

    goto :goto_12

    :cond_17
    const/16 v7, 0x8

    .line 790
    :goto_12
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 793
    :cond_18
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 794
    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 796
    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->hasCustomKeyboard()Z

    move-result v2

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/LoginActivity;->setCustomKeyboardVisible(ZZ)V

    .line 798
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

    .line 802
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

    .line 804
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

    .line 807
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_22

    .line 808
    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 809
    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->onHide()V

    :cond_22
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e

    .line 813
    :cond_23
    iput-boolean v3, v0, Lorg/telegram/ui/LoginActivity;->restoringState:Z

    .line 815
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->updateColors()V

    .line 817
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->isInCancelAccountDeletionMode()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 818
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->cancelDeletionParams:Landroid/os/Bundle;

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->cancelDeletionCode:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/LoginActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Z)V

    .line 821
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

    .line 7787
    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda30;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/LoginActivity;)V

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

    .line 8096
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;[ZZ)I

    move-result v0

    .line 8097
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

    .line 1114
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    check-cast v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    if-eqz v0, :cond_0

    .line 1116
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$1700(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ImageUpdater;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 8

    .line 1075
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

    .line 1084
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v3, v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 1085
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

    .line 1094
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

    .line 1096
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v3, v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 1097
    invoke-virtual {p0, v6, v2, v4, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    :cond_6
    const/16 v6, 0xa

    if-ne v0, v6, :cond_7

    .line 1099
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v5, v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 1100
    invoke-virtual {p0, v3, v2, v4, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    :cond_7
    const/16 v3, 0xd

    if-ne v0, v3, :cond_8

    .line 1102
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v3, v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 1103
    invoke-virtual {p0, v5, v2, v4, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 1105
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v3, v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1106
    invoke-virtual {p0, v1, v2, v4, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 1090
    :cond_9
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v3, v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1091
    invoke-virtual {p0, v1, v2, v4, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 1087
    :cond_a
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v5, v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 1088
    invoke-virtual {p0, v3, v2, v4, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    :cond_b
    :goto_2
    return v1

    .line 1076
    :cond_c
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v3, v0

    if-ge v1, v3, :cond_e

    .line 1077
    aget-object v3, v0, v1

    if-eqz v3, :cond_d

    .line 1078
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1081
    :cond_e
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    return v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 941
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SlideView;->hasCustomKeyboard()Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity;->setCustomKeyboardVisible(ZZ)V

    .line 942
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    if-eqz p1, :cond_0

    .line 943
    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$1500(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    :cond_0
    return-void
.end method

.method public onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
    .locals 17

    move-object/from16 v13, p0

    if-eqz p1, :cond_2

    .line 7649
    iget-object v0, v13, Lorg/telegram/ui/LoginActivity;->introView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 7650
    iget-object v0, v13, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 7651
    iget-object v0, v13, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 7654
    :cond_0
    new-instance v8, Lorg/telegram/ui/Components/TransformableLoginButtonView;

    iget-object v0, v13, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/TransformableLoginButtonView;-><init>(Landroid/content/Context;)V

    .line 7655
    iget-object v0, v13, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, v13, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setButtonText(Landroid/text/TextPaint;Ljava/lang/String;)V

    .line 7657
    iget-object v0, v13, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget-object v0, v13, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    .line 7658
    iget-object v0, v13, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7659
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 7660
    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 7663
    iget-object v2, v13, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v14, 0x0

    .line 7664
    aget v2, v1, v14

    const/4 v15, 0x1

    aget v3, v1, v15

    .line 7666
    iget-object v9, v13, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 7667
    aget v9, v1, v14

    sub-int/2addr v9, v2

    int-to-float v9, v9

    aget v1, v1, v15

    sub-int/2addr v1, v3

    int-to-float v11, v1

    .line 7668
    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 7669
    invoke-virtual {v8, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 7671
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

    .line 7672
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

    .line 7673
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

    .line 7675
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 7676
    new-instance v0, Lorg/telegram/ui/LoginActivity$12;

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v8, v1}, Lorg/telegram/ui/LoginActivity$12;-><init>(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/Components/TransformableLoginButtonView;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string v0, "windowBackgroundWhite"

    .line 7707
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    .line 7708
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v16

    .line 7709
    new-instance v1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda4;

    move-object v0, v1

    move-object v14, v1

    move-object/from16 v1, p0

    move-object v15, v3

    move/from16 v3, v16

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LoginActivity;IILandroid/view/ViewGroup$MarginLayoutParams;IIILorg/telegram/ui/Components/TransformableLoginButtonView;FIFI)V

    invoke-virtual {v15, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7734
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7736
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x12c

    .line 7737
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v15, v1, v2

    .line 7738
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 7739
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

    .line 1055
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 1056
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

    .line 1058
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

    .line 1062
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

    .line 1063
    new-instance p1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda19;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/LoginActivity;)V

    const-wide/16 v2, 0xc8

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1065
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

    .line 227
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentConnectionState:I

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "custom_screen_type"

    .line 229
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/LoginActivity;->customScreenType:I

    .line 230
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isSearchByTelType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    .line 234
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 4

    .line 515
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 516
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 517
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 518
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v1, :cond_2

    .line 522
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    .line 523
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 525
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->editDoneCallback:[Ljava/lang/Runnable;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    if-eqz v3, :cond_3

    .line 527
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 897
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 898
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    if-eqz v0, :cond_0

    .line 899
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 901
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAltFocusable(Landroid/app/Activity;I)V

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 2

    .line 949
    array-length p2, p2

    if-eqz p2, :cond_5

    array-length p2, p3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    .line 951
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

    .line 953
    iput-boolean p2, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    .line 954
    iget p1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-nez p1, :cond_5

    .line 955
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p2, p1

    check-cast p1, Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$1602(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z

    .line 956
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget p2, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object p1, p1, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SlideView;->onNextPressed(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    .line 959
    iput-boolean p2, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    .line 960
    iget p1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-nez p1, :cond_5

    .line 961
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

    .line 965
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p1, v0

    check-cast p1, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    .line 966
    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$1700(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ImageUpdater;->openCamera()V

    goto :goto_1

    :cond_4
    const/16 p2, 0x97

    if-ne p1, p2, :cond_5

    if-eqz p3, :cond_5

    .line 970
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p1, v0

    check-cast p1, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    .line 971
    new-instance p2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda18;

    invoke-direct {p2, p1}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 906
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 907
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 908
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 910
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 912
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 913
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 915
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

    .line 916
    aget-object v0, v3, v0

    check-cast v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$1400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 917
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

    .line 918
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v3, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    const/4 v0, 0x0

    .line 919
    invoke-virtual {p0, v1, v1, v0, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 923
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 925
    :cond_2
    :goto_0
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-nez v0, :cond_3

    iget-boolean v2, p0, Lorg/telegram/ui/LoginActivity;->needRequestPermissions:Z

    if-nez v2, :cond_3

    .line 926
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v2, v0

    if-eqz v0, :cond_3

    .line 928
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 932
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 933
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 934
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->requestAltFocusable(Landroid/app/Activity;I)V

    .line 936
    :cond_4
    invoke-direct {p0, v1}, Lorg/telegram/ui/LoginActivity;->updateProxyButton(Z)V

    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 3

    .line 1626
    :try_start_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "currentViewNum"

    .line 1627
    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "syncContacts"

    .line 1628
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

    .line 1629
    :goto_1
    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-gt v0, v1, :cond_2

    .line 1630
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 1632
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/SlideView;->saveStateParams(Landroid/os/Bundle;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1635
    :cond_2
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "logininfo2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1636
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1637
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    .line 1638
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/LoginActivity;->putBundleToEditor(Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 1639
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1641
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public setIntroView(Landroid/view/View;Landroid/widget/TextView;)Lorg/telegram/ui/LoginActivity;
    .locals 0

    .line 7641
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->introView:Landroid/view/View;

    .line 7642
    iput-object p2, p0, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 7643
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

    .line 1554
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    .line 1555
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    .line 1557
    :cond_2
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    .line 1558
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V

    .line 1560
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZ)V

    .line 1561
    iput v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    .line 1562
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZ)V

    if-nez p2, :cond_4

    .line 1564
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V

    goto :goto_2

    .line 1567
    :cond_3
    iput v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    .line 1568
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V

    .line 1569
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZ)V

    if-eq p1, v3, :cond_4

    .line 1571
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    :cond_4
    :goto_2
    if-eqz p2, :cond_9

    .line 1575
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v4, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v4, p2, v4

    .line 1576
    aget-object p2, p2, p1

    .line 1577
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 1578
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

    .line 1580
    invoke-virtual {p2, p3, v1}, Lorg/telegram/ui/Components/SlideView;->setParams(Landroid/os/Bundle;Z)V

    .line 1581
    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->getHeaderName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentActivityTitle(Ljava/lang/CharSequence;)V

    .line 1582
    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 1583
    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    if-eqz p4, :cond_7

    neg-int p3, p3

    :cond_7
    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setX(F)V

    .line 1584
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1586
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1587
    new-instance v5, Lorg/telegram/ui/LoginActivity$11;

    invoke-direct {v5, p0, v2, v4}, Lorg/telegram/ui/LoginActivity$11;-><init>(Lorg/telegram/ui/LoginActivity;ZLorg/telegram/ui/Components/SlideView;)V

    invoke-virtual {p3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    .line 1597
    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v0, [F

    if-eqz p4, :cond_8

    .line 1598
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

    .line 1599
    invoke-static {p2, p4, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    aput-object p4, v2, v0

    .line 1597
    invoke-virtual {p3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x12c

    .line 1600
    invoke-virtual {p3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1601
    new-instance p4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1602
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    .line 1604
    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->hasCustomKeyboard()Z

    move-result p2

    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/LoginActivity;->setCustomKeyboardVisible(ZZ)V

    goto :goto_8

    .line 1606
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

    .line 1607
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget p4, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object p2, p2, p4

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1608
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 1609
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p2, p2, p1

    invoke-virtual {p2, p3, v1}, Lorg/telegram/ui/Components/SlideView;->setParams(Landroid/os/Bundle;Z)V

    .line 1610
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p2, p2, p1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1611
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->getHeaderName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentActivityTitle(Ljava/lang/CharSequence;)V

    .line 1612
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 1614
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->hasCustomKeyboard()Z

    move-result p2

    invoke-direct {p0, p2, v1}, Lorg/telegram/ui/LoginActivity;->setCustomKeyboardVisible(ZZ)V

    .line 1617
    :goto_8
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    if-eqz p2, :cond_d

    if-nez p1, :cond_c

    goto :goto_9

    :cond_c
    const/16 v1, 0x8

    .line 1618
    :goto_9
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d
    return-void
.end method
