.class public Lorg/telegram/ui/LoginActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "LoginActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


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

.field private loginPrivacyPolicyView:Landroid/widget/TextView;

.field private loginTokenBottomSheet:Lorg/telegram/ui/Components/QRCodeBottomSheet;

.field private loginTokenGenerator:Lcom/iMe/fork/utils/LoginTokenGenerator;

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

.field private quickLoginButton:Landroid/widget/FrameLayout;

.field private quickLoginButtonIcon:Landroid/widget/ImageView;

.field private radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private restoringState:Z

.field private showDoneAnimation:[Landroid/animation/AnimatorSet;

.field private sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private slideViewsContainer:Landroid/widget/FrameLayout;

.field private startMessagingButton:Landroid/widget/TextView;

.field private syncContacts:Z

.field private testBackend:Z

.field private updateAppItem:Landroid/widget/ImageView;

.field private updateAppItemDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

.field private views:[Lorg/telegram/ui/Components/SlideView;


# direct methods
.method public static synthetic $r8$lambda$0jc5ei4RueL0IBddZk_psScFFC8(Lorg/telegram/ui/LoginActivity;IILandroid/view/ViewGroup$MarginLayoutParams;IIILorg/telegram/ui/Components/TransformableLoginButtonView;FIFILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lorg/telegram/ui/LoginActivity;->lambda$onCustomTransitionAnimation$28(IILandroid/view/ViewGroup$MarginLayoutParams;IIILorg/telegram/ui/Components/TransformableLoginButtonView;FIFILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2_w4BrwrQoJtxEGaBNtDBE-Ajxw(Landroid/widget/EditText;Landroid/text/TextWatcher;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$onFieldError$13(Landroid/widget/EditText;Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3w1320-7di3DUUffCYxVTPs2xtg(Lorg/telegram/ui/Components/OutlineTextContainerView;Landroid/view/View;Landroid/widget/EditText;Landroid/text/TextWatcher;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->lambda$onFieldError$14(Lorg/telegram/ui/Components/OutlineTextContainerView;Landroid/view/View;Landroid/widget/EditText;Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5bTfPNdyUwRm1QGZsQymNGY3-QU(Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->updateColors()V

    return-void
.end method

.method public static synthetic $r8$lambda$CyY8zxJAZ9Kt2Ws0uHdNOCRjNVU(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/LoginActivity;->lambda$tryResetAccount$30(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fbxxkka0Pys3vtpuSPOwVMLfhm0(Lorg/telegram/ui/LoginActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$showDoneButton$17(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HxLsvH2ZbrVkv2Oc-7dr4_H2KNI(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$createView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IAKTZeAwusbjFMysiO3TJMqi-TM(Lorg/telegram/ui/LoginActivity;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->lambda$createView$4(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$IjhMEDOn15NeXSkFY8B1Id_mAus(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/LoginActivity;->lambda$onRequestPermissionsResultFragment$11(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O-cnXjVwyir3W4XfFkL-xP6Y8KE(Lorg/telegram/ui/LoginActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$showDoneButton$16(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QcL_Ta1UP1CdjIU8yLnN7uPXiCg(Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->lambda$onAuthSuccess$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$UN6Ha5ZBzj5HRLshhdeBRHvqEL4(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/LoginActivity;->lambda$tryResetAccount$31(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xo-wj0mDt4tKPzZq_ft0CxdzdCM(Lorg/telegram/ui/LoginActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->lambda$onDoneButtonPressed$18(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xo9E6Tys-LRD2G28cUs1yD_j0BI(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$createView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z38pqeHsI2NI2dfewA78U_vqyBg(ZLjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LoginActivity;->lambda$needShowInvalidAlert$15(ZLjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z5kLAJUuGm3ecArG2zZU7KA7hT0(Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->lambda$onDialogDismiss$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$av-ofUlnSxMJ7fvyyDg8Et_yZYw(Lorg/telegram/ui/LoginActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$setCustomKeyboardVisible$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cBRf5N8gIDEevYnm_rAKqMNT4BA(Lorg/telegram/ui/LoginActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$setCustomKeyboardVisible$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fXu4enIdbpZVkix59nAPj3ZILZI(ZLjava/lang/Void;)Lorg/telegram/ui/DialogsActivity;
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$needFinishActivity$22(ZLjava/lang/Void;)Lorg/telegram/ui/DialogsActivity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iOYmzRpAAjvTZT400Ilrz765hUA(Lorg/telegram/ui/LoginActivity;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->lambda$showEditDoneProgress$21(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jhRyBR0SJvwMGZZ0VT74B6KnhgM(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->lambda$openTwoStepVerification$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kwdx661NvRlIc1K44IOe-9TV8tQ(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$my_SoSEsBEU1ib7v2g86vwwL8oo(Lorg/telegram/ui/LoginActivity;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->lambda$showEditDoneProgress$19(ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ovbngJncVtYzGWez0eJTBuYxdiA(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$createView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qmIGpSV0XaIlMYhCIPDO-s5srXI(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LoginActivity;->lambda$tryResetAccount$29(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uF0VQdgtBxO9bCWL0d12g9EIRX8(Lorg/telegram/ui/LoginActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->lambda$createView$2(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$v7eyHqjIuIoRXGqlWFM9XrYa2zU(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->lambda$openTwoStepVerification$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vuaE0M03hITA9QiRfo78NVbIB4k(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->lambda$createView$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xQPOPwBukFrhlIZqzzO3SqNubvM(Lorg/telegram/ui/LoginActivity;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->lambda$showEditDoneProgress$20(IZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 350
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

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

    .line 229
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 579
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Lorg/telegram/ui/Components/SlideView;

    .line 435
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 445
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    .line 446
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    .line 448
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    const/4 v1, 0x0

    .line 449
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->testBackend:Z

    .line 451
    iput v1, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/animation/AnimatorSet;

    .line 459
    iput-object v3, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    new-array v3, v2, [Z

    .line 466
    fill-array-data v3, :array_0

    iput-object v3, p0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    .line 485
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->customKeyboardWasVisible:Z

    new-array v1, v2, [Z

    .line 501
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->doneProgressVisible:[Z

    new-array v1, v2, [Ljava/lang/Runnable;

    .line 502
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->editDoneCallback:[Ljava/lang/Runnable;

    new-array v1, v2, [Z

    .line 503
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    .line 580
    iput p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    .line 581
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

    .line 575
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    const/16 p1, 0x10

    new-array p1, p1, [Lorg/telegram/ui/Components/SlideView;

    .line 435
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    .line 443
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;

    .line 444
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 445
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    .line 446
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    .line 448
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    const/4 p1, 0x0

    .line 449
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->testBackend:Z

    .line 451
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/animation/AnimatorSet;

    .line 459
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    new-array v1, v0, [Z

    .line 466
    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    .line 485
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->customKeyboardWasVisible:Z

    new-array p1, v0, [Z

    .line 501
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->doneProgressVisible:[Z

    new-array p1, v0, [Ljava/lang/Runnable;

    .line 502
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->editDoneCallback:[Ljava/lang/Runnable;

    new-array p1, v0, [Z

    .line 503
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/QRCodeBottomSheet;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->loginTokenBottomSheet:Lorg/telegram/ui/Components/QRCodeBottomSheet;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/Components/QRCodeBottomSheet;)Lorg/telegram/ui/Components/QRCodeBottomSheet;
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->loginTokenBottomSheet:Lorg/telegram/ui/Components/QRCodeBottomSheet;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->onAuthSuccess(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/LoginActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$10100(Lorg/telegram/ui/LoginActivity;ZZ)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->needHideProgress(ZZ)V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$11500(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11600(Lorg/telegram/ui/LoginActivity;)Ljava/lang/String;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->cancelDeletionPhone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$11700(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11800(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11900(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/LoginActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->updateAppItem:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$12000(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12100(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12200(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12300(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12400(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12500(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12600(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12700(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12800(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12900(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    return-object p0
.end method

.method static synthetic access$13000(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$13100(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->tryResetAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13200(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$13500(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$13600(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$13700(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$13800(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_account_sentEmailCode;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_account_sentEmailCode;)V

    return-void
.end method

.method static synthetic access$13900(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 206
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardForceDisabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$14000(Lorg/telegram/ui/LoginActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->emailChangeFinishCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$14100(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$14500(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$14600(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$14700(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$14800(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$14900(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->customKeyboardWasVisible:Z

    return p0
.end method

.method static synthetic access$15000(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$15400(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$15700(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$15800(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/LoginActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/LoginActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$16800(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->restoringState:Z

    return p0
.end method

.method static synthetic access$16900(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    return p0
.end method

.method static synthetic access$17000(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;Z)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->onAuthSuccess(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;Z)V

    return-void
.end method

.method static synthetic access$17100(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$17200(Lorg/telegram/ui/LoginActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$17300(Lorg/telegram/ui/LoginActivity;)Landroid/widget/TextView;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/LoginActivity;)[Lorg/telegram/ui/Components/SlideView;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 206
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->openTwoStepVerification()V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/LoginActivity;)[Landroid/animation/AnimatorSet;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->slideViewsContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/TransformableLoginButtonView;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/LoginActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/LoginActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    return p0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/LoginActivity;I)I
    .locals 0

    .line 206
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    return p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/LoginActivity;ZZ)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V

    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 206
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isSearchByTelType()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 206
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->onDoneButtonPressed()V

    return-void
.end method

.method static synthetic access$4800(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->showKeyboard(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    return p0
.end method

.method static synthetic access$5302(Lorg/telegram/ui/LoginActivity;Z)Z
    .locals 0

    .line 206
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    return p1
.end method

.method static synthetic access$5400(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->isRequestingFirebaseSms:Z

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/LoginActivity;Landroid/view/View;Z)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->onFieldError(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5600(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 206
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    return-object p0
.end method

.method static synthetic access$5802(Lorg/telegram/ui/LoginActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardHideCallback:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$5900(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    return-object p0
.end method

.method static synthetic access$5902(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 206
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/LoginActivity;IZ)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->needShowProgress(IZ)V

    return-void
.end method

.method static synthetic access$6100(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6302(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->permissionsDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$6800(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Lorg/telegram/ui/LoginActivity;Z)V
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->needHideProgress(Z)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/LoginActivity;)Landroid/widget/TextView;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->loginPrivacyPolicyView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->testBackend:Z

    return p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->forceDisableSafetyNet:Z

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/LoginActivity;I)V
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->needShowProgress(I)V

    return-void
.end method

.method static synthetic access$7600(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    return p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->isAnimatingIntro:Z

    return p0
.end method

.method static synthetic access$7802(Lorg/telegram/ui/LoginActivity;Z)Z
    .locals 0

    .line 206
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->isAnimatingIntro:Z

    return p1
.end method

.method static synthetic access$7900(Lorg/telegram/ui/LoginActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->animationFinishCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$7902(Lorg/telegram/ui/LoginActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->animationFinishCallback:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->quickLoginButton:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    return p0
.end method

.method static synthetic access$8100()I
    .locals 1

    .line 206
    sget v0, Lorg/telegram/ui/LoginActivity;->SHOW_DELAY:I

    return v0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity;->needRequestPermissions:Z

    return p0
.end method

.method static synthetic access$8202(Lorg/telegram/ui/LoginActivity;Z)Z
    .locals 0

    .line 206
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->needRequestPermissions:Z

    return p1
.end method

.method static synthetic access$8302(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$8400(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->currentTermsOfService:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    return-object p0
.end method

.method static synthetic access$8402(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->currentTermsOfService:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    return-object p1
.end method

.method static synthetic access$8500(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    return-void
.end method

.method static synthetic access$8600(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/LoginActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/LoginActivity;)Lcom/iMe/fork/utils/LoginTokenGenerator;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity;->loginTokenGenerator:Lcom/iMe/fork/utils/LoginTokenGenerator;

    return-object p0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/LoginActivity;Z)V
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->startLoginTokenGenerator(Z)V

    return-void
.end method

.method static synthetic access$9300(Lorg/telegram/ui/LoginActivity;)I
    .locals 0

    .line 206
    iget p0, p0, Lorg/telegram/ui/LoginActivity;->progressRequestId:I

    return p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/LoginActivity;)Z
    .locals 0

    .line 206
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isInCancelAccountDeletionMode()Z

    move-result p0

    return p0
.end method

.method private checkUpdateAppItem(Z)V
    .locals 4

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->updateAppItem:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAppUpdateAvailable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-nez v0, :cond_3

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->updateAppItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateInProgress:Z

    if-eqz v0, :cond_1

    .line 243
    sget p1, Lorg/telegram/ui/ActionBar/MenuDrawable;->TYPE_UDPATE_DOWNLOADING:I

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_1

    .line 246
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->isLoadingHttpFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    sget v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->TYPE_UDPATE_DOWNLOADING:I

    .line 248
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    sget-object v3, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 249
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move v2, v1

    goto :goto_0

    .line 251
    :cond_2
    sget v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->TYPE_UDPATE_AVAILABLE:I

    goto :goto_0

    .line 255
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->updateAppItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    sget v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->TYPE_DEFAULT:I

    :cond_4
    :goto_0
    move v1, p1

    move p1, v0

    .line 259
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 260
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->updateAppItem:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    const/16 v3, 0x40

    .line 261
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_5
    const/16 v3, 0x10

    .line 263
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 265
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->updateAppItemDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setType(IZ)V

    .line 267
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->updateAppItemDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setUpdateDownloadProgress(FZ)V

    return-void
.end method

.method private clearCurrentState()V
    .locals 4

    .line 1241
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

    .line 1242
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1243
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1244
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_account_sentEmailCode;)V
    .locals 2

    .line 1982
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_sentEmailCode;->email_pattern:Ljava/lang/String;

    const-string v1, "emailPattern"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_account_sentEmailCode;->length:I

    const-string v0, "length"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p2, 0xd

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1984
    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V
    .locals 1

    const/4 v0, 0x1

    .line 1988
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/LoginActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Z)V

    return-void
.end method

.method private fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Z)V
    .locals 10

    .line 2092
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->phone_code_hash:Ljava/lang/String;

    const-string v1, "phoneHash"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->next_type:Lorg/telegram/tgnet/TLRPC$auth_CodeType;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeCall;

    const/16 v2, 0xf

    const/16 v3, 0xb

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const-string v7, "nextType"

    if-eqz v1, :cond_0

    .line 2094
    invoke-virtual {p1, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2095
    :cond_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeFlashCall;

    if-eqz v1, :cond_1

    .line 2096
    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2097
    :cond_1
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeSms;

    if-eqz v1, :cond_2

    .line 2098
    invoke-virtual {p1, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2099
    :cond_2
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeMissedCall;

    if-eqz v1, :cond_3

    .line 2100
    invoke-virtual {p1, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2101
    :cond_3
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeFragmentSms;

    if-eqz v0, :cond_4

    .line 2102
    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2104
    :cond_4
    :goto_0
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeApp;

    const-string v1, "length"

    const-string v7, "type"

    const/4 v8, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 2105
    invoke-virtual {p1, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2106
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2107
    invoke-virtual {p0, v0, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto/16 :goto_2

    .line 2109
    :cond_5
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->timeout:I

    if-nez v0, :cond_6

    const/16 v0, 0x3c

    .line 2110
    iput v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->timeout:I

    .line 2112
    :cond_6
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->timeout:I

    mul-int/lit16 v0, v0, 0x3e8

    const-string v9, "timeout"

    invoke-virtual {p1, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2113
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of v9, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeCall;

    if-eqz v9, :cond_7

    .line 2114
    invoke-virtual {p1, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2115
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2116
    invoke-virtual {p0, v6, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto/16 :goto_2

    .line 2117
    :cond_7
    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFlashCall;

    if-eqz v6, :cond_8

    .line 2118
    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2119
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->pattern:Ljava/lang/String;

    const-string v0, "pattern"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    invoke-virtual {p0, v5, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto/16 :goto_2

    .line 2121
    :cond_8
    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeSms;

    if-nez v5, :cond_d

    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFirebaseSms;

    if-eqz v5, :cond_9

    goto/16 :goto_1

    .line 2126
    :cond_9
    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFragmentSms;

    if-eqz v4, :cond_a

    .line 2127
    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2128
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->url:Ljava/lang/String;

    const-string v3, "url"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2130
    invoke-virtual {p0, v2, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto/16 :goto_2

    .line 2131
    :cond_a
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeMissedCall;

    if-eqz v2, :cond_b

    .line 2132
    invoke-virtual {p1, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2133
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2134
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->prefix:Ljava/lang/String;

    const-string v0, "prefix"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    invoke-virtual {p0, v3, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 2136
    :cond_b
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeSetUpEmailRequired;

    const-string v3, "googleSignInAllowed"

    if-eqz v2, :cond_c

    .line 2137
    iget-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->google_signin_allowed:Z

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p2, 0xc

    .line 2138
    invoke-virtual {p0, p2, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 2139
    :cond_c
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeEmailCode;

    if-eqz v2, :cond_e

    .line 2140
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->google_signin_allowed:Z

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2141
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->email_pattern:Ljava/lang/String;

    const-string v2, "emailPattern"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2143
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->next_phone_login_date:I

    const-string v1, "nextPhoneLoginDate"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2144
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->reset_available_period:I

    const-string v1, "resetAvailablePeriod"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2145
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->reset_pending_date:I

    const-string v0, "resetPendingDate"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p2, 0xe

    .line 2146
    invoke-virtual {p0, p2, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 2122
    :cond_d
    :goto_1
    invoke-virtual {p1, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2123
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2124
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFirebaseSms;

    const-string v0, "firebase"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2125
    invoke-virtual {p0, v4, p3, p1, v8}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    :cond_e
    :goto_2
    return-void
.end method

.method private isCustomKeyboardForceDisabled()Z
    .locals 2

    .line 1051
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

    .line 1055
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

    .line 605
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

    .line 271
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->customScreenType:I

    sget v1, Lcom/iMe/common/IdFabric$CustomType;->LOGIN_SEARCH_BY_TEL:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$createView$2(IZ)V
    .locals 1

    const/16 p2, 0x14

    .line 731
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 734
    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    if-gt p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardHideCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 735
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 736
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardHideCallback:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 0

    .line 886
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->onDoneButtonPressed()V

    return-void
.end method

.method private synthetic lambda$createView$4(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 888
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    if-eqz p1, :cond_0

    .line 889
    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$17800(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 0

    .line 896
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity;->onBackPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 897
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;)V
    .locals 0

    .line 911
    new-instance p1, Lorg/telegram/ui/ProxyListActivity;

    invoke-direct {p1}, Lorg/telegram/ui/ProxyListActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/view/View;)V
    .locals 0

    .line 923
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->showAppUpdateDialog()V

    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 944
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->startLoginTokenGenerator(Z)V

    return-void
.end method

.method private static synthetic lambda$needFinishActivity$22(ZLjava/lang/Void;)Lorg/telegram/ui/DialogsActivity;
    .locals 1

    .line 1906
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "afterSignup"

    .line 1907
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1908
    new-instance p0, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private static synthetic lambda$needShowInvalidAlert$15(ZLjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1458
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

    .line 1459
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

    .line 1461
    new-instance p4, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {p4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mailto:"

    .line 1462
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

    .line 1463
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

    .line 1465
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Banned phone number: "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1466
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

    .line 1468
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid phone number: "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1469
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

    .line 1471
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

    .line 1473
    :catch_0
    new-instance p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1474
    sget p1, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1475
    sget p1, Lorg/telegram/messenger/R$string;->NoMailInstalled:I

    const-string p3, "NoMailInstalled"

    invoke-static {p3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1476
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    const-string p3, "OK"

    invoke-static {p3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1477
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :goto_2
    return-void
.end method

.method private synthetic lambda$onAuthSuccess$23()V
    .locals 1

    .line 1971
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->subscribeToBot(I)V

    return-void
.end method

.method private synthetic lambda$onCustomTransitionAnimation$28(IILandroid/view/ViewGroup$MarginLayoutParams;IIILorg/telegram/ui/Components/TransformableLoginButtonView;FIFILandroid/animation/ValueAnimator;)V
    .locals 2

    .line 8524
    invoke-virtual {p12}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p12

    check-cast p12, Ljava/lang/Float;

    invoke-virtual {p12}, Ljava/lang/Float;->floatValue()F

    move-result p12

    .line 8525
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p12}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 8526
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    int-to-float p2, p2

    mul-float/2addr p2, p12

    float-to-int p2, p2

    invoke-static {p1, p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p12

    .line 8529
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->slideViewsContainer:Landroid/widget/FrameLayout;

    const/16 v0, 0x14

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 8530
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardForceDisabled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 8531
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 8532
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 8535
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->introView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p12

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    const p2, 0x3f733333    # 0.95f

    const v0, 0x3d4ccccd    # 0.05f

    mul-float/2addr p1, v0

    add-float/2addr p1, p2

    .line 8537
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->introView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 8538
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->introView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    int-to-float p1, p4

    sub-int p2, p5, p4

    int-to-float p2, p2

    mul-float/2addr p2, p12

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 8540
    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float p1, p6

    sub-int/2addr p5, p6

    int-to-float p2, p5

    mul-float/2addr p2, p12

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 8541
    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 8542
    invoke-virtual {p7}, Landroid/view/View;->requestLayout()V

    .line 8544
    invoke-virtual {p7, p12}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setProgress(F)V

    int-to-float p1, p9

    sub-float/2addr p1, p8

    mul-float/2addr p1, p12

    add-float/2addr p8, p1

    .line 8545
    invoke-virtual {p7, p8}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p1, p11

    sub-float/2addr p1, p10

    mul-float/2addr p1, p12

    add-float/2addr p10, p1

    .line 8546
    invoke-virtual {p7, p10}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$onDialogDismiss$12()V
    .locals 1

    const/4 v0, 0x0

    .line 1285
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->needRequestPermissions:Z

    return-void
.end method

.method private synthetic lambda$onDoneButtonPressed$18(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1600
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget p2, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SlideView;->onCancelPressed()V

    const/4 p1, 0x1

    .line 1601
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity;->needHideProgress(Z)V

    return-void
.end method

.method private static synthetic lambda$onFieldError$13(Landroid/widget/EditText;Landroid/text/TextWatcher;)V
    .locals 0

    .line 1409
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private static synthetic lambda$onFieldError$14(Lorg/telegram/ui/Components/OutlineTextContainerView;Landroid/view/View;Landroid/widget/EditText;Landroid/text/TextWatcher;)V
    .locals 1

    const/4 v0, 0x0

    .line 1406
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateError(F)V

    .line 1407
    sget p0, Lorg/telegram/messenger/R$id;->timeout_callback:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 1409
    new-instance p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda16;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda16;-><init>(Landroid/widget/EditText;Landroid/text/TextWatcher;)V

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onRequestPermissionsResultFragment$11(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V
    .locals 0

    .line 1196
    invoke-static {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$2400(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImageUpdater;->openGallery()V

    return-void
.end method

.method private synthetic lambda$openTwoStepVerification$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->onCancelPressed()V

    const/4 v0, 0x1

    .line 278
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V

    if-nez p1, :cond_1

    .line 280
    check-cast p2, Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 281
    invoke-static {p2, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/TLRPC$account_Password;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 282
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    const-string v1, "UpdateAppAlert"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 285
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 286
    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {p2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 287
    invoke-virtual {p2, v2}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 288
    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    const-string v2, "password"

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x6

    .line 289
    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 291
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p1, p2

    check-cast p1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    invoke-virtual {p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->checkTwoStepVerificationPasswordPreset()V

    goto :goto_0

    .line 292
    :cond_1
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 293
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->slideViewsContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$raw;->error:I

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$openTwoStepVerification$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 276
    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setCustomKeyboardVisible$10(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1100
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1101
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1102
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/16 p1, 0xe6

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$setCustomKeyboardVisible$9(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1073
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1074
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1075
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/16 p1, 0xe6

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$showDoneButton$16(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1507
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1508
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 1509
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

.method private synthetic lambda$showDoneButton$17(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1517
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1518
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 1519
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

.method private synthetic lambda$showEditDoneProgress$19(ZZZ)V
    .locals 0

    .line 1618
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZZ)V

    return-void
.end method

.method private synthetic lambda$showEditDoneProgress$20(IZZ)V
    .locals 1

    .line 1633
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    .line 1634
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    const/4 p1, 0x1

    .line 1635
    invoke-direct {p0, p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZZ)V

    .line 1636
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    return-void
.end method

.method private synthetic lambda$showEditDoneProgress$21(ZLandroid/animation/ValueAnimator;)V
    .locals 4

    .line 1689
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

    .line 1693
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1694
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1695
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    .line 1698
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1699
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1700
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    .line 1703
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1704
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1705
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$tryResetAccount$29(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    .line 8637
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

    .line 8643
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 8644
    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8645
    invoke-virtual {p1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8646
    invoke-virtual {p1, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x5

    .line 8647
    invoke-virtual {p0, p2, v4, p1, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 8640
    invoke-virtual {p0, v0, v4, p1, v4}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void

    .line 8649
    :cond_2
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "2FA_RECENT_CONFIRM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8650
    sget p1, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->ResetAccountCancelledAlert:I

    const-string p3, "ResetAccountCancelledAlert"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8651
    :cond_3
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "2FA_CONFIRM_WAIT_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 8652
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 8653
    invoke-virtual {v5, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8654
    invoke-virtual {v5, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8655
    invoke-virtual {v5, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8656
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p2

    const-string p3, "startTime"

    invoke-virtual {v5, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8657
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

    .line 8658
    invoke-virtual {p0, p1, v4, v5, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_1

    .line 8660
    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$tryResetAccount$30(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 8636
    new-instance p4, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda21;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$tryResetAccount$31(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p4, 0x0

    .line 8633
    invoke-direct {p0, p4}, Lorg/telegram/ui/LoginActivity;->needShowProgress(I)V

    .line 8634
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_account_deleteAccount;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_account_deleteAccount;-><init>()V

    const-string p5, "Forgot password"

    .line 8635
    iput-object p5, p4, Lorg/telegram/tgnet/TLRPC$TL_account_deleteAccount;->reason:Ljava/lang/String;

    .line 8636
    iget p5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p5

    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-virtual {p5, p4, v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public static loadCurrentState(ZI)Landroid/os/Bundle;
    .locals 6

    .line 1203
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1204
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

    .line 1205
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    .line 1206
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

    .line 1207
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1208
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "_\\|_"

    .line 1209
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1210
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 1211
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1212
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1213
    :cond_2
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 1214
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1215
    :cond_3
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 1216
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1218
    :cond_4
    array-length v2, v3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 1219
    aget-object v2, v3, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1221
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1222
    aget-object v4, v3, p1

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1224
    :cond_5
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 1225
    aget-object v3, v3, v5

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1226
    :cond_6
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_7

    .line 1227
    aget-object v3, v3, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1228
    :cond_7
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 1229
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

    .line 1235
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private needFinishActivity(ZZI)V
    .locals 3

    .line 1898
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1899
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 1901
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    .line 1902
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_3

    .line 1903
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    if-eqz v0, :cond_1

    .line 1904
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    .line 1905
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/LaunchActivity;

    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda24;

    invoke-direct {v0, p1}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda24;-><init>(Z)V

    invoke-virtual {p2, p3, v1, v0}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZLorg/telegram/messenger/GenericProvider;)V

    .line 1910
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1914
    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    const/4 p2, 0x6

    const/4 v2, 0x0

    invoke-direct {p1, p2, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(ILorg/telegram/tgnet/TLRPC$account_Password;)V

    .line 1915
    invoke-virtual {p1, p3}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setBlockingAlert(I)V

    .line 1916
    invoke-virtual {p1, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setFromRegistration(Z)V

    .line 1917
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0

    .line 1919
    :cond_2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "afterSignup"

    .line 1920
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1921
    new-instance p1, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1922
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 1925
    :goto_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1926
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/LocaleController;->loadRemoteLanguages(I)V

    .line 1927
    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->checkRestrictedLanguages(Z)V

    goto :goto_1

    .line 1929
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/ExternalActionActivity;

    if-eqz p1, :cond_4

    .line 1930
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

    .line 1772
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity;->needHideProgress(ZZ)V

    return-void
.end method

.method private needHideProgress(ZZ)V
    .locals 3

    .line 1776
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->progressRequestId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1778
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/LoginActivity;->progressRequestId:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1780
    :cond_0
    iput v1, p0, Lorg/telegram/ui/LoginActivity;->progressRequestId:I

    .line 1783
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isInCancelAccountDeletionMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_2

    .line 1784
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 1785
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1788
    :cond_2
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZ)V

    return-void
.end method

.method private needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1363
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1366
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1367
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1368
    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1369
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    const-string p2, "OK"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1370
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

    .line 1428
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1431
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_1

    .line 1433
    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1434
    sget p2, Lorg/telegram/messenger/R$string;->BannedPhoneNumber:I

    const-string v1, "BannedPhoneNumber"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_1
    if-eqz p2, :cond_5

    .line 1436
    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$2600(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$2600(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$2700(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Lorg/telegram/ui/CountrySelectActivity$Country;

    move-result-object v1

    if-eqz v1, :cond_5

    const v1, 0x7fffffff

    .line 1438
    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$2600(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Ljava/util/List;

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

    .line 1439
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_2

    move v1, v3

    goto :goto_0

    .line 1444
    :cond_3
    invoke-static {p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$2700(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Lorg/telegram/ui/CountrySelectActivity$Country;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v2, v1, :cond_4

    .line 1445
    sget v1, Lorg/telegram/messenger/R$string;->WrongNumberFormat:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1446
    sget v1, Lorg/telegram/messenger/R$string;->ShortNumberInfo:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$2700(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Lorg/telegram/ui/CountrySelectActivity$Country;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneInputData;->access$2800(Lorg/telegram/ui/LoginActivity$PhoneInputData;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    const-string p2, "ShortNumberInfo"

    invoke-static {p2, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 1448
    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1449
    sget p2, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 1452
    :cond_5
    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1453
    sget p2, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1456
    :goto_1
    sget p2, Lorg/telegram/messenger/R$string;->BotHelp:I

    const-string v1, "BotHelp"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p3, p1, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda8;-><init>(ZLjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1480
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    const-string p2, "OK"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1481
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

    .line 1424
    invoke-static {p0, p1, v0, p2}, Lorg/telegram/ui/LoginActivity;->needShowInvalidAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneInputData;Z)V

    return-void
.end method

.method private needShowProgress(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1752
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity;->needShowProgress(IZ)V

    return-void
.end method

.method private needShowProgress(IZ)V
    .locals 1

    .line 1756
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isInCancelAccountDeletionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 1757
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

    .line 1761
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 p2, 0x0

    .line 1762
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 1763
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void

    .line 1767
    :cond_2
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->progressRequestId:I

    const/4 p1, 0x1

    .line 1768
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZ)V

    return-void
.end method

.method private onAuthSuccess(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V
    .locals 1

    const/4 v0, 0x0

    .line 1935
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity;->onAuthSuccess(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;Z)V

    return-void
.end method

.method private onAuthSuccess(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;Z)V
    .locals 4

    .line 1939
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->cleanup()V

    .line 1940
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setUserId(J)V

    .line 1941
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->clearConfig()V

    .line 1942
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->cleanup()V

    .line 1943
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    .line 1944
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1945
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1946
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->cleanup(Z)V

    .line 1947
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1948
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1949
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 1950
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1951
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->checkAppAccount()V

    .line 1952
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->checkPromoInfo(Z)V

    .line 1953
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->updateDcSettings()V

    .line 1954
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->loadAppConfig()V

    .line 1956
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->future_auth_token:[B

    if-eqz v0, :cond_0

    .line 1957
    invoke-static {p1}, Lorg/telegram/messenger/AuthTokensHelper;->saveLogInToken(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    goto :goto_0

    :cond_0
    const-string v0, "onAuthSuccess future_auth_token is empty"

    .line 1959
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 1963
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->putDialogsEndReachedAfterRegistration()V

    .line 1965
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const-string v2, "tg_placeholders_android"

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/MediaDataController;->loadStickersByEmojiOrName(Ljava/lang/String;ZZ)V

    .line 1968
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_2

    .line 1970
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    new-instance v1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->getAuthDelegate(Lcom/iMe/fork/utils/Callbacks$Callback;)Lcom/iMe/utils/helper/AuthHelper$Delegate;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    .line 1969
    invoke-static {v0, v3, v1}, Lcom/iMe/utils/helper/AuthHelper;->auth(Lcom/iMe/utils/helper/AuthHelper$Delegate;ZI)V

    .line 1978
    :cond_2
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->setup_password_required:Z

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->otherwise_relogin_days:I

    invoke-direct {p0, p2, v0, p1}, Lorg/telegram/ui/LoginActivity;->needFinishActivity(ZZI)V

    return-void
.end method

.method private onDoneButtonPressed()V
    .locals 4

    .line 1588
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 1591
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1592
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1595
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1596
    sget v2, Lorg/telegram/messenger/R$string;->StopLoadingTitle:I

    const-string v3, "StopLoadingTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1597
    sget v2, Lorg/telegram/messenger/R$string;->StopLoading:I

    const-string v3, "StopLoading"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1598
    sget v2, Lorg/telegram/messenger/R$string;->WaitMore:I

    const-string v3, "WaitMore"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1599
    sget v1, Lorg/telegram/messenger/R$string;->Stop:I

    const-string v2, "Stop"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1603
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 1605
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

    .line 1374
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    const/high16 v0, 0x40600000    # 3.5f

    .line 1375
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    if-eqz p2, :cond_1

    .line 1378
    instance-of p2, p1, Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-eqz p2, :cond_1

    .line 1379
    sget p2, Lorg/telegram/messenger/R$id;->timeout_callback:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1381
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1384
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/OutlineTextContainerView;

    .line 1385
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1386
    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;->getAttachedEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 1387
    new-instance v3, Lorg/telegram/ui/LoginActivity$11;

    invoke-direct {v3, p0, v2, v1}, Lorg/telegram/ui/LoginActivity$11;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/widget/EditText;Ljava/util/concurrent/atomic/AtomicReference;)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1404
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateError(F)V

    .line 1405
    new-instance v4, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda17;

    invoke-direct {v4, v0, p1, v2, v3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/OutlineTextContainerView;Landroid/view/View;Landroid/widget/EditText;Landroid/text/TextWatcher;)V

    .line 1412
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const-wide/16 v0, 0x7d0

    .line 1413
    invoke-virtual {p1, v4, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1414
    invoke-virtual {p1, p2, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v2, :cond_1

    .line 1417
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method

.method private openTwoStepVerification()V
    .locals 4

    .line 275
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 276
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/LoginActivity;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private putBundleToEditor(Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 5

    .line 1248
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1249
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

    .line 1250
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1251
    instance-of v3, v2, Ljava/lang/String;

    const-string v4, "_|_"

    if-eqz v3, :cond_2

    if-eqz p3, :cond_1

    .line 1253
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

    .line 1255
    :cond_1
    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1257
    :cond_2
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    if-eqz p3, :cond_3

    .line 1259
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

    .line 1261
    :cond_3
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1263
    :cond_4
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_6

    if-eqz p3, :cond_5

    .line 1265
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

    .line 1267
    :cond_5
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 1269
    :cond_6
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 1270
    check-cast v2, Landroid/os/Bundle;

    invoke-direct {p0, v2, p2, v1}, Lorg/telegram/ui/LoginActivity;->putBundleToEditor(Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private setCustomKeyboardVisible(ZZ)V
    .locals 5

    .line 1059
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->customKeyboardWasVisible:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 1060
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity;->customKeyboardWasVisible:Z

    .line 1062
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardForceDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move p1, v1

    :cond_1
    const-wide/16 v2, 0x12c

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    .line 1067
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1068
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {p1, v4}, Lorg/telegram/messenger/AndroidUtilities;->requestAltFocusable(Landroid/app/Activity;I)V

    if-eqz p2, :cond_2

    new-array p1, v0, [F

    .line 1070
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    .line 1071
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1072
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1077
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/LoginActivity$9;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$9;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1090
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1092
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1095
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAltFocusable(Landroid/app/Activity;I)V

    if-eqz p2, :cond_4

    new-array p1, v0, [F

    .line 1097
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    .line 1098
    sget-object p2, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1099
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1104
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/LoginActivity$10;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$10;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1114
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->keyboardAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1116
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

    .line 1485
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1486
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    aget-boolean v4, v4, v0

    if-ne v4, p1, :cond_1

    return-void

    .line 1490
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    aget-object v5, v4, v0

    if-eqz v5, :cond_3

    if-eqz p2, :cond_2

    .line 1492
    aget-object v0, v4, v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 1494
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v4, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1496
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    iget v4, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aput-boolean p1, v0, v4

    const/4 v0, 0x0

    const/high16 v5, 0x428c0000    # 70.0f

    if-eqz p2, :cond_9

    .line 1498
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v6, p2, v4

    const/4 p2, 0x2

    if-eqz p1, :cond_5

    if-eqz v3, :cond_6

    .line 1501
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    .line 1502
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 1503
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    new-array p2, p2, [F

    .line 1505
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->getOffsetY()F

    move-result v4

    aput v4, p2, v2

    aput v0, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1506
    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1511
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    new-array p2, p2, [F

    .line 1515
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->getOffsetY()F

    move-result v0

    aput v0, p2, v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    aput v0, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1516
    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1521
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1524
    :cond_6
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object p2, p2, v0

    new-instance v0, Lorg/telegram/ui/LoginActivity$12;

    invoke-direct {v0, p0, v3, p1}, Lorg/telegram/ui/LoginActivity$12;-><init>(Lorg/telegram/ui/LoginActivity;ZZ)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/16 p2, 0x96

    if-eqz v3, :cond_8

    if-eqz p1, :cond_7

    const/16 p2, 0xc8

    .line 1560
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    goto :goto_2

    .line 1563
    :cond_7
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    .line 1569
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object v0, v0, v1

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1570
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1571
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->showDoneAnimation:[Landroid/animation/AnimatorSet;

    iget p2, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_9
    if-eqz p1, :cond_a

    if-eqz v3, :cond_b

    .line 1575
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1576
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    goto :goto_3

    :cond_a
    if-eqz v3, :cond_b

    .line 1580
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1581
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

    .line 1610
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZZ)V

    return-void
.end method

.method private showEditDoneProgress(ZZZ)V
    .locals 6

    if-eqz p2, :cond_0

    .line 1614
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->doneProgressVisible:[Z

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aget-boolean v0, v0, v1

    if-ne v0, p1, :cond_0

    if-nez p3, :cond_0

    return-void

    .line 1617
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1618
    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/LoginActivity;ZZZ)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 1621
    :cond_1
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-nez p3, :cond_4

    if-nez v3, :cond_4

    .line 1624
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->doneProgressVisible:[Z

    aput-boolean p1, p3, v0

    if-eqz p2, :cond_5

    .line 1627
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    aget-boolean p3, p3, v0

    if-eqz p3, :cond_3

    .line 1628
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->editDoneCallback:[Ljava/lang/Runnable;

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1629
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    iget p2, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aput-boolean v2, p1, p2

    return-void

    :cond_3
    if-eqz p1, :cond_5

    .line 1632
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->editDoneCallback:[Ljava/lang/Runnable;

    new-instance v2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/LoginActivity;IZZ)V

    aput-object v2, p3, v0

    const-wide/16 p1, 0x7d0

    invoke-static {v2, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1638
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    iget p2, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    aput-boolean v1, p1, p2

    return-void

    .line 1643
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->postedEditDoneCallback:[Z

    aput-boolean v2, p3, v0

    .line 1644
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->doneProgressVisible:[Z

    aput-boolean p1, p3, v0

    .line 1647
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_6

    .line 1648
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_6
    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_9

    .line 1652
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const/4 p2, 0x2

    new-array p2, p2, [F

    if-eqz p1, :cond_7

    move v4, p3

    goto :goto_1

    :cond_7
    move v4, v0

    :goto_1
    aput v4, p2, v2

    if-eqz p1, :cond_8

    move p3, v0

    :cond_8
    aput p3, p2, v1

    .line 1653
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1654
    new-instance p3, Lorg/telegram/ui/LoginActivity$13;

    invoke-direct {p3, p0, p1, v3}, Lorg/telegram/ui/LoginActivity$13;-><init>(Lorg/telegram/ui/LoginActivity;ZZ)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1688
    new-instance p1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LoginActivity;Z)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1708
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-array p3, v1, [Landroid/animation/Animator;

    aput-object p2, p3, v2

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1709
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 p2, 0x96

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1710
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    :cond_9
    const/4 p2, 0x4

    const v4, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_b

    if-eqz v3, :cond_a

    .line 1714
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1715
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1716
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1717
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1718
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 1719
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 1720
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1721
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1722
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    goto :goto_2

    .line 1724
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1725
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1726
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1727
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    goto :goto_2

    .line 1730
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz v3, :cond_c

    .line 1732
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1733
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1734
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1735
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1736
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 1737
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 1738
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1739
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1740
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 1742
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1743
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1744
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 1745
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    :goto_2
    return-void
.end method

.method private showKeyboard(Landroid/view/View;)Z
    .locals 1

    .line 8448
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8449
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private startLoginTokenGenerator(Z)V
    .locals 2

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->loginTokenGenerator:Lcom/iMe/fork/utils/LoginTokenGenerator;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/iMe/fork/utils/LoginTokenGenerator;->destroy()V

    .line 302
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->loginTokenGenerator:Lcom/iMe/fork/utils/LoginTokenGenerator;

    if-nez v0, :cond_1

    .line 303
    new-instance v0, Lcom/iMe/fork/utils/LoginTokenGenerator;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {v0, v1}, Lcom/iMe/fork/utils/LoginTokenGenerator;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->loginTokenGenerator:Lcom/iMe/fork/utils/LoginTokenGenerator;

    .line 304
    new-instance v1, Lorg/telegram/ui/LoginActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$1;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/iMe/fork/utils/LoginTokenGenerator;->setDelegate(Lcom/iMe/fork/utils/LoginTokenGenerator$Delegate;)V

    .line 342
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->loginTokenGenerator:Lcom/iMe/fork/utils/LoginTokenGenerator;

    invoke-virtual {v0, p1}, Lcom/iMe/fork/utils/LoginTokenGenerator;->start(Z)V

    return-void
.end method

.method private tryResetAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 8626
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 8629
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8630
    sget v1, Lorg/telegram/messenger/R$string;->ResetMyAccountWarningText:I

    const-string v2, "ResetMyAccountWarningText"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8631
    sget v1, Lorg/telegram/messenger/R$string;->ResetMyAccountWarning:I

    const-string v2, "ResetMyAccountWarning"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8632
    sget v1, Lorg/telegram/messenger/R$string;->ResetMyAccountWarningReset:I

    const-string v2, "ResetMyAccountWarningReset"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8665
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p2, "Cancel"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8666
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private updateColors()V
    .locals 11

    .line 8560
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8562
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v2, 0x38

    .line 8563
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-static {v3, v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 8564
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v7, 0x0

    const/16 v8, 0x15

    if-ge v5, v8, :cond_0

    .line 8565
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 8566
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v8, -0x1000000

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 8567
    new-instance v5, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v5, v0, v3, v7, v7}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 8568
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v5, v0, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v3, v5

    .line 8571
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8573
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 8574
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8576
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->quickLoginButtonIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 8577
    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 8578
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->quickLoginButtonIcon:Landroid/widget/ImageView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-static {v2, v8, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8580
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->loginPrivacyPolicyView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 8581
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8582
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->loginPrivacyPolicyView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 8584
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->updateAppItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 8585
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8587
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->updateAppItemDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    if-eqz v0, :cond_4

    .line 8588
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setIconColor(I)V

    .line 8589
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->updateAppItemDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setBackColor(I)V

    .line 8593
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->proxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ProxyDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 8594
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->proxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ProxyDrawable;->setColorKey(I)V

    .line 8595
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8597
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 8599
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setColor(I)V

    .line 8600
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setBackgroundColor(I)V

    .line 8602
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 8604
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v1, v0

    :goto_0
    if-ge v7, v1, :cond_5

    aget-object v2, v0, v7

    .line 8605
    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->updateColors()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 8608
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->updateColors()V

    .line 8609
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    if-eqz v0, :cond_6

    .line 8610
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$17400(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    :cond_6
    return-void
.end method

.method private updateProxyButton(ZZ)V
    .locals 6

    .line 8932
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->proxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

    if-nez v0, :cond_0

    return-void

    .line 8935
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v0

    .line 8936
    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentConnectionState:I

    if-ne v1, v0, :cond_1

    if-nez p2, :cond_1

    return-void

    .line 8939
    :cond_1
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentConnectionState:I

    .line 8940
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "mainconfig"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "proxy_ip"

    const-string v2, ""

    .line 8941
    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "proxy_enabled"

    .line 8942
    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    move p2, v2

    goto :goto_0

    :cond_2
    move p2, v1

    .line 8943
    :goto_0
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentConnectionState:I

    const/4 v3, 0x5

    const/4 v4, 0x3

    .line 8946
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    iget v5, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    if-nez v5, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isSearchByTelType()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v1

    goto :goto_1

    :cond_3
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8947
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->proxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

    iget v5, p0, Lorg/telegram/ui/LoginActivity;->currentConnectionState:I

    if-eq v5, v4, :cond_4

    if-ne v5, v3, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    invoke-virtual {v0, p2, v1, p1}, Lorg/telegram/ui/Components/ProxyDrawable;->setConnected(ZZZ)V

    return-void
.end method


# virtual methods
.method public cancelAccountDeletion(Ljava/lang/String;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;)Lorg/telegram/ui/LoginActivity;
    .locals 0

    .line 592
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeletionPhone:Ljava/lang/String;

    .line 593
    iput-object p2, p0, Lorg/telegram/ui/LoginActivity;->cancelDeletionParams:Landroid/os/Bundle;

    .line 594
    iput-object p3, p0, Lorg/telegram/ui/LoginActivity;->cancelDeletionCode:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    const/4 p1, 0x1

    .line 595
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    return-object p0
.end method

.method public changeEmail(Ljava/lang/Runnable;)Lorg/telegram/ui/LoginActivity;
    .locals 1

    const/4 v0, 0x3

    .line 585
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    const/16 v0, 0xc

    .line 586
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 587
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->emailChangeFinishCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public changePhoneNumber()Lorg/telegram/ui/LoginActivity;
    .locals 1

    const/4 v0, 0x2

    .line 600
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    return-object p0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 663
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 664
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/LoginActivity$2;

    invoke-direct {v4, v0}, Lorg/telegram/ui/LoginActivity$2;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 677
    iput v3, v0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    .line 678
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 679
    aput-boolean v3, v2, v4

    .line 681
    new-instance v2, Lorg/telegram/ui/LoginActivity$3;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/LoginActivity$3;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 730
    new-instance v5, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda28;

    invoke-direct {v5, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 739
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 741
    new-instance v2, Lorg/telegram/ui/LoginActivity$4;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/LoginActivity$4;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    .line 750
    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 751
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v6, -0x1

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    .line 754
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 755
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    const/4 v7, -0x2

    const/16 v8, 0x33

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 757
    new-instance v2, Landroid/widget/Space;

    invoke-direct {v2, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 758
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/Space;->setMinimumHeight(I)V

    .line 759
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 760
    new-instance v2, Lorg/telegram/ui/LoginActivity$5;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/LoginActivity$5;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->slideViewsContainer:Landroid/widget/FrameLayout;

    .line 789
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v3, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 790
    new-instance v2, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    .line 791
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->slideViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setViewToFindFocus(Landroid/view/View;)V

    .line 792
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->keyboardLinearLayout:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    const/16 v8, 0xe6

    invoke-static {v6, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    aput-object v5, v2, v3

    .line 795
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-direct {v5, v0, v1, v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v5, v2, v4

    .line 796
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/4 v8, 0x2

    invoke-direct {v5, v0, v1, v8}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v5, v2, v8

    .line 797
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/4 v9, 0x3

    invoke-direct {v5, v0, v1, v9}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v5, v2, v9

    .line 798
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/4 v10, 0x4

    invoke-direct {v5, v0, v1, v10}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v5, v2, v10

    .line 799
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    const/4 v11, 0x5

    aput-object v5, v2, v11

    .line 800
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    const/4 v12, 0x6

    aput-object v5, v2, v12

    .line 801
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    const/4 v13, 0x7

    aput-object v5, v2, v13

    .line 802
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    const/16 v14, 0x8

    aput-object v5, v2, v14

    .line 803
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityNewPasswordView;

    invoke-direct {v5, v0, v1, v3}, Lorg/telegram/ui/LoginActivity$LoginActivityNewPasswordView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    const/16 v15, 0x9

    aput-object v5, v2, v15

    .line 804
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityNewPasswordView;

    invoke-direct {v5, v0, v1, v4}, Lorg/telegram/ui/LoginActivity$LoginActivityNewPasswordView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    const/16 v9, 0xa

    aput-object v5, v2, v9

    .line 805
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/16 v9, 0xb

    invoke-direct {v5, v0, v1, v9}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v5, v2, v9

    .line 806
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    const/16 v9, 0xc

    aput-object v5, v2, v9

    .line 807
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/16 v5, 0xd

    new-instance v9, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;

    invoke-direct {v9, v0, v1, v4}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;Z)V

    aput-object v9, v2, v5

    .line 808
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/16 v5, 0xe

    new-instance v9, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;

    invoke-direct {v9, v0, v1, v3}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;Z)V

    aput-object v9, v2, v5

    .line 809
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/16 v5, 0xf

    new-instance v9, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/16 v11, 0xf

    invoke-direct {v9, v0, v1, v11}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v9, v2, v5

    move v2, v3

    .line 811
    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v9, v5

    if-ge v2, v9, :cond_4

    .line 812
    aget-object v5, v5, v2

    if-nez v2, :cond_1

    move v9, v3

    goto :goto_2

    :cond_1
    move v9, v14

    :goto_2
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 813
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->slideViewsContainer:Landroid/widget/FrameLayout;

    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v9, v9, v2

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x11

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x1a

    goto :goto_3

    :cond_2
    const/16 v11, 0x12

    :goto_3
    move/from16 v19, v11

    const/16 v20, 0x1e

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x1a

    goto :goto_4

    :cond_3
    const/16 v11, 0x12

    :goto_4
    move/from16 v21, v11

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v5, v9, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 816
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

    .line 818
    invoke-virtual {v2, v9, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    const-string v9, "syncContacts"

    .line 819
    invoke-virtual {v2, v9, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v4, :cond_6

    move v9, v4

    goto :goto_6

    :cond_6
    move v9, v3

    :goto_6
    iput-boolean v9, v0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    .line 820
    iget v9, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-lt v9, v4, :cond_7

    if-gt v9, v10, :cond_7

    const-string v9, "open"

    .line 821
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_9

    .line 822
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    int-to-long v5, v9

    sub-long v16, v16, v5

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/32 v16, 0x15180

    cmp-long v5, v5, v16

    if-ltz v5, :cond_9

    .line 823
    iput v3, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 825
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    goto :goto_7

    :cond_7
    if-ne v9, v12, :cond_8

    .line 828
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v5, v5, v12

    check-cast v5, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    .line 829
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$1900(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v5

    if-nez v5, :cond_9

    .line 830
    iput v3, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 832
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    goto :goto_7

    :cond_8
    if-ne v9, v13, :cond_9

    .line 835
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v5, v5, v13

    check-cast v5, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    .line 836
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->access$2000(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    .line 837
    iput v3, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 839
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    :goto_7
    const/4 v5, 0x0

    goto :goto_8

    :cond_9
    move-object v5, v2

    .line 846
    :goto_8
    new-instance v2, Lorg/telegram/ui/LoginActivity$6;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/LoginActivity$6;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    .line 870
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->doneButtonVisible:[Z

    aget-boolean v6, v6, v3

    if-eqz v6, :cond_a

    move v6, v3

    goto :goto_9

    :cond_a
    move v6, v14

    :goto_9
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 871
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v11, 0xc8

    const-string v13, "translationZ"

    const/16 v6, 0x15

    if-lt v2, v6, :cond_b

    .line 872
    new-instance v9, Landroid/animation/StateListAnimator;

    invoke-direct {v9}, Landroid/animation/StateListAnimator;-><init>()V

    new-array v7, v4, [I

    const v19, 0x10100a7

    aput v19, v7, v3

    .line 873
    iget-object v15, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    new-array v14, v8, [F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v14, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v14, v4

    invoke-static {v15, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v9, v7, v6}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v6, v3, [I

    .line 874
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    new-array v14, v8, [F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    aput v15, v14, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    aput v15, v14, v4

    invoke-static {v7, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 875
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 876
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v7, Lorg/telegram/ui/LoginActivity$7;

    invoke-direct {v7, v0}, Lorg/telegram/ui/LoginActivity$7;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 884
    :cond_b
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 885
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/16 v15, 0x15

    if-lt v2, v15, :cond_c

    const/16 v22, 0x38

    goto :goto_a

    :cond_c
    const/16 v22, 0x3c

    :goto_a
    if-lt v2, v15, :cond_d

    const/16 v23, 0x38

    goto :goto_b

    :cond_d
    const/16 v23, 0x3c

    :goto_b
    const/16 v24, 0x55

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x18

    const/16 v28, 0x10

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v6, v7, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v7, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda11;

    invoke-direct {v7, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 887
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    new-instance v7, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda14;

    invoke-direct {v7, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 893
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    .line 894
    sget v7, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 895
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    new-instance v7, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda9;

    invoke-direct {v7, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 900
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    sget v7, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 901
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    .line 902
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    invoke-virtual {v7, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 903
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v15, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    const/16 v22, 0x20

    const/16 v23, 0x20

    const/16 v24, 0x33

    const/16 v25, 0x10

    const/16 v26, 0x10

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v15, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 905
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    .line 906
    new-instance v9, Lorg/telegram/ui/Components/ProxyDrawable;

    invoke-direct {v9, v1}, Lorg/telegram/ui/Components/ProxyDrawable;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/LoginActivity;->proxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 908
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->proxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

    const/16 v9, 0x8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-virtual {v7, v15}, Lorg/telegram/ui/Components/ProxyDrawable;->setVerticalOffset(I)V

    .line 909
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->proxyDrawable:Lorg/telegram/ui/Components/ProxyDrawable;

    const/16 v15, 0x9

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v7, v14}, Lorg/telegram/ui/Components/ProxyDrawable;->setHorizontalOffset(I)V

    .line 911
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    new-instance v14, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda12;

    invoke-direct {v14, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 913
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 914
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->proxyButtonView:Landroid/widget/ImageView;

    const/16 v29, 0x20

    const/16 v30, 0x20

    const/16 v31, 0x35

    const/16 v32, 0x10

    const/16 v33, 0x10

    const/16 v34, 0x10

    const/16 v35, 0x10

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v7, v9, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 915
    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/LoginActivity;->updateProxyButton(ZZ)V

    .line 917
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->isSearchByTelType()Z

    move-result v7

    if-nez v7, :cond_11

    iget v7, v0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    if-nez v7, :cond_11

    .line 918
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/LoginActivity;->updateAppItem:Landroid/widget/ImageView;

    .line 919
    new-instance v7, Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-direct {v7}, Lorg/telegram/ui/ActionBar/MenuDrawable;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/LoginActivity;->updateAppItemDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    .line 920
    invoke-virtual {v7, v1, v4}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setUpdateAppItem(Landroid/content/Context;Z)V

    .line 921
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->updateAppItem:Landroid/widget/ImageView;

    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->updateAppItemDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 922
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->updateAppItem:Landroid/widget/ImageView;

    invoke-virtual {v7, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 923
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->updateAppItem:Landroid/widget/ImageView;

    new-instance v7, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda13;

    invoke-direct {v7, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 924
    invoke-direct {v0, v3}, Lorg/telegram/ui/LoginActivity;->checkUpdateAppItem(Z)V

    .line 925
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->updateAppItem:Landroid/widget/ImageView;

    const/16 v29, 0x20

    const/16 v30, 0x20

    const/16 v31, 0x35

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x10

    const/16 v35, 0x10

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 926
    sget-object v6, Lcom/iMe/fork/enums/ExternalApp;->QUICK_LOGIN:Lcom/iMe/fork/enums/ExternalApp;

    invoke-virtual {v6}, Lcom/iMe/fork/enums/ExternalApp;->isInstalled()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 927
    new-instance v6, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity;->quickLoginButtonIcon:Landroid/widget/ImageView;

    .line 928
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 929
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->quickLoginButtonIcon:Landroid/widget/ImageView;

    sget v7, Lorg/telegram/messenger/R$drawable;->flash_on:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 931
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity;->quickLoginButton:Landroid/widget/FrameLayout;

    .line 932
    new-instance v6, Landroid/animation/StateListAnimator;

    invoke-direct {v6}, Landroid/animation/StateListAnimator;-><init>()V

    new-array v7, v4, [I

    const v9, 0x10100a7

    aput v9, v7, v3

    .line 933
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->quickLoginButtonIcon:Landroid/widget/ImageView;

    new-array v14, v8, [F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    aput v15, v14, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    aput v15, v14, v4

    invoke-static {v9, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v7, v3, [I

    .line 934
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity;->quickLoginButtonIcon:Landroid/widget/ImageView;

    new-array v14, v8, [F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    aput v15, v14, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    aput v15, v14, v4

    invoke-static {v9, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 935
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->quickLoginButton:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 936
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->quickLoginButton:Landroid/widget/FrameLayout;

    new-instance v7, Lorg/telegram/ui/LoginActivity$8;

    invoke-direct {v7, v0}, Lorg/telegram/ui/LoginActivity$8;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 943
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->quickLoginButton:Landroid/widget/FrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->quickLoginButtonIcon:Landroid/widget/ImageView;

    const/16 v9, 0x38

    invoke-static {v9, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 944
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->quickLoginButton:Landroid/widget/FrameLayout;

    new-instance v7, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda10;

    invoke-direct {v7, v0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 945
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->quickLoginButton:Landroid/widget/FrameLayout;

    const/16 v22, 0x38

    const/16 v23, 0x38

    const/16 v24, 0x55

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x68

    const/16 v28, 0xe

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    :cond_e
    const/16 v9, 0x38

    .line 947
    :goto_c
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity;->loginPrivacyPolicyView:Landroid/widget/TextView;

    .line 948
    new-instance v7, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v7}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 949
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->loginPrivacyPolicyView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v7

    if-eqz v7, :cond_f

    const/high16 v7, 0x41500000    # 13.0f

    goto :goto_d

    :cond_f
    const/high16 v7, 0x41600000    # 14.0f

    :goto_d
    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 950
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->loginPrivacyPolicyView:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 951
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->loginPrivacyPolicyView:Landroid/widget/TextView;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 952
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/LoginActivity;->loginPrivacyPolicyView:Landroid/widget/TextView;

    const/16 v22, -0x2

    const/16 v23, 0x38

    const/16 v24, 0x53

    const/16 v25, 0x18

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0xe

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 954
    sget v6, Lorg/telegram/messenger/R$string;->auth_login_terms_of_service:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    .line 955
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v11, "*"

    .line 956
    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const-string v11, "*"

    .line 957
    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v11, -0x1

    if-eq v12, v11, :cond_10

    if-eq v6, v11, :cond_10

    if-eq v12, v6, :cond_10

    add-int/lit8 v13, v6, 0x1

    const-string v14, ""

    .line 959
    invoke-virtual {v7, v6, v13, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v13, v12, 0x1

    const-string v14, ""

    .line 960
    invoke-virtual {v7, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 961
    new-instance v13, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    sget v14, Lorg/telegram/messenger/R$string;->PrivacyPolicyUrl:I

    const-string v15, "PrivacyPolicyUrl"

    .line 962
    invoke-static {v15, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    sub-int/2addr v6, v4

    const/16 v14, 0x21

    .line 961
    invoke-virtual {v7, v13, v12, v6, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 968
    :cond_10
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->loginPrivacyPolicyView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    :cond_11
    const/16 v9, 0x38

    .line 972
    :goto_e
    new-instance v6, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v7, 0x14

    .line 973
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 974
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 975
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v7, 0x3dcccccd    # 0.1f

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleX(F)V

    .line 976
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleY(F)V

    .line 977
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/LoginActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v22, 0x20

    const/16 v23, 0x20

    const/16 v24, 0x35

    const/16 v25, 0x0

    const/16 v26, 0x10

    const/16 v27, 0x10

    const/16 v28, 0x0

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 979
    new-instance v6, Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/TransformableLoginButtonView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    .line 980
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->isSearchByTelType()Z

    move-result v12

    if-eqz v12, :cond_12

    sget v12, Lcom/iMe/common/IdFabric$CustomType;->TRANSFORMABLE_LOGIN_BUTTON_SEARCH:I

    goto :goto_f

    :cond_12
    move v12, v3

    :goto_f
    invoke-virtual {v6, v12}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setTransformType(I)V

    .line 981
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setProgress(F)V

    .line 982
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setDrawBackground(Z)V

    .line 983
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget v12, Lorg/telegram/messenger/R$string;->Done:I

    const-string v13, "Done"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 984
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    const/16 v13, 0x15

    if-lt v2, v13, :cond_13

    move v14, v9

    goto :goto_10

    :cond_13
    const/16 v14, 0x3c

    :goto_10
    if-lt v2, v13, :cond_14

    goto :goto_11

    :cond_14
    const/16 v9, 0x3c

    :goto_11
    invoke-static {v14, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v12, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 986
    new-instance v2, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v1, 0x16

    .line 987
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 988
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 989
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 990
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 991
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 992
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v6, -0x1

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v5, :cond_15

    .line 995
    iput-boolean v4, v0, Lorg/telegram/ui/LoginActivity;->restoringState:Z

    :cond_15
    move v1, v3

    .line 997
    :goto_12
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v6, v2

    if-ge v1, v6, :cond_28

    .line 998
    aget-object v2, v2, v1

    if-eqz v5, :cond_17

    if-lt v1, v4, :cond_16

    if-gt v1, v10, :cond_16

    .line 1001
    iget v6, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-ne v1, v6, :cond_17

    .line 1002
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/SlideView;->restoreStateParams(Landroid/os/Bundle;)V

    goto :goto_13

    .line 1005
    :cond_16
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/SlideView;->restoreStateParams(Landroid/os/Bundle;)V

    .line 1008
    :cond_17
    :goto_13
    iget v6, v0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-ne v6, v1, :cond_26

    .line 1009
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->needBackButton()Z

    move-result v7

    if-nez v7, :cond_19

    iget-boolean v7, v0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    if-nez v7, :cond_19

    iget v7, v0, Lorg/telegram/ui/LoginActivity;->activityMode:I

    if-ne v7, v8, :cond_18

    goto :goto_14

    :cond_18
    const/16 v9, 0x8

    goto :goto_15

    :cond_19
    :goto_14
    move v9, v3

    :goto_15
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1011
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->quickLoginButton:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_1b

    if-nez v1, :cond_1a

    move v9, v3

    goto :goto_16

    :cond_1a
    const/16 v9, 0x8

    .line 1012
    :goto_16
    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1014
    :cond_1b
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity;->loginPrivacyPolicyView:Landroid/widget/TextView;

    if-eqz v6, :cond_1d

    if-nez v1, :cond_1c

    move v9, v3

    goto :goto_17

    :cond_1c
    const/16 v9, 0x8

    .line 1015
    :goto_17
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1017
    :cond_1d
    invoke-direct {v0, v3}, Lorg/telegram/ui/LoginActivity;->checkUpdateAppItem(Z)V

    .line 1019
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1020
    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 1022
    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->hasCustomKeyboard()Z

    move-result v2

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/LoginActivity;->setCustomKeyboardVisible(ZZ)V

    .line 1024
    iput v3, v0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    const/4 v6, 0x5

    const/4 v7, 0x6

    if-eqz v1, :cond_1f

    if-eq v1, v6, :cond_1f

    const/16 v9, 0x9

    if-eq v1, v7, :cond_20

    const/16 v11, 0xa

    if-eq v1, v9, :cond_21

    const/16 v12, 0xc

    if-eq v1, v11, :cond_22

    if-ne v1, v12, :cond_1e

    goto :goto_18

    :cond_1e
    move v2, v3

    goto :goto_19

    :cond_1f
    const/16 v9, 0x9

    :cond_20
    const/16 v11, 0xa

    :cond_21
    const/16 v12, 0xc

    :cond_22
    :goto_18
    move v2, v4

    .line 1028
    :goto_19
    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V

    if-eq v1, v4, :cond_23

    if-eq v1, v8, :cond_23

    const/4 v13, 0x3

    if-eq v1, v13, :cond_24

    if-ne v1, v10, :cond_25

    goto :goto_1a

    :cond_23
    const/4 v13, 0x3

    .line 1030
    :cond_24
    :goto_1a
    iput v4, v0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    :cond_25
    const/16 v15, 0x8

    goto :goto_1b

    :cond_26
    const/4 v6, 0x5

    const/4 v7, 0x6

    const/16 v9, 0x9

    const/16 v11, 0xa

    const/16 v12, 0xc

    const/4 v13, 0x3

    .line 1033
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_27

    .line 1034
    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1035
    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->onHide()V

    :cond_27
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_12

    .line 1039
    :cond_28
    iput-boolean v3, v0, Lorg/telegram/ui/LoginActivity;->restoringState:Z

    .line 1041
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->updateColors()V

    .line 1043
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->isInCancelAccountDeletionMode()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1044
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->cancelDeletionParams:Landroid/os/Bundle;

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->cancelDeletionCode:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/LoginActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Z)V

    .line 1047
    :cond_29
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 9006
    sget p2, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p2, :cond_2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    if-eq p1, p2, :cond_2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 9011
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->appUpdateAvailable:I

    if-ne p1, p2, :cond_1

    .line 9012
    invoke-direct {p0, v1}, Lorg/telegram/ui/LoginActivity;->checkUpdateAppItem(Z)V

    goto :goto_1

    .line 9014
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    if-ne p1, p2, :cond_3

    .line 9015
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/LoginActivity;->updateProxyButton(ZZ)V

    goto :goto_1

    .line 9007
    :cond_2
    :goto_0
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    .line 9008
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAppUpdateAvailable()Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->url:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9009
    invoke-direct {p0, v1}, Lorg/telegram/ui/LoginActivity;->checkUpdateAppItem(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    .line 8616
    new-instance v0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/LoginActivity;)V

    const/16 v1, 0x17

    new-array v1, v1, [I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    const/4 v3, 0x1

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    const/4 v3, 0x2

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/4 v3, 0x3

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    const/4 v3, 0x4

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    const/4 v3, 0x5

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    const/4 v3, 0x6

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    const/4 v3, 0x7

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    const/16 v3, 0x8

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    const/16 v3, 0x9

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/16 v3, 0xa

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    const/16 v3, 0xb

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    const/16 v3, 0xc

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_changephoneinfo_image2:I

    const/16 v3, 0xd

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    const/16 v3, 0xe

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    const/16 v3, 0xf

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    const/16 v3, 0x10

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareUnchecked:I

    const/16 v3, 0x11

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareBackground:I

    const/16 v3, 0x12

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareCheck:I

    const/16 v3, 0x13

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    const/16 v3, 0x14

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    const/16 v3, 0x15

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    const/16 v3, 0x16

    aput v2, v1, v3

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SimpleThemeDescription;->createThemeDescriptions(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;[I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isLightStatusBar()Z
    .locals 5

    .line 8925
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I[ZZ)I

    move-result v0

    .line 8926
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v3, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v0, v3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 2

    .line 1337
    sget v0, Lcom/iMe/common/IdFabric$RequestCode;->QUICK_LOGIN_AUTHORIZE:I

    if-ne p1, v0, :cond_5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    if-eqz p3, :cond_5

    const-string p1, "twoStepVerificationPassword"

    .line 1338
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1339
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v0, 0x6

    aget-object p2, p2, v0

    check-cast p2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    .line 1340
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->twoStepVerificationPasswordPreset:Ljava/lang/String;

    .line 1341
    invoke-virtual {p2}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->checkTwoStepVerificationPasswordPreset()V

    goto :goto_1

    :cond_0
    const-string p1, "error"

    .line 1342
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1343
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1345
    sget p1, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    const-string p2, "ErrorOccurred"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p2, "AUTH_TOKEN_EXCEPTION"

    .line 1346
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1347
    sget p1, Lorg/telegram/messenger/R$string;->AccountAlreadyLoggedIn:I

    const-string p2, "AccountAlreadyLoggedIn"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p2, "AUTH_TOKEN_EXPIRED"

    .line 1348
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1349
    sget p1, Lorg/telegram/messenger/R$string;->CodeExpired:I

    const-string p2, "CodeExpired"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1351
    :cond_3
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->slideViewsContainer:Landroid/widget/FrameLayout;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$raw;->info:I

    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_4
    :goto_1
    return-void

    .line 1356
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    check-cast v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    if-eqz v0, :cond_6

    .line 1358
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$2400(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ImageUpdater;->onActivityResult(IILandroid/content/Intent;)V

    :cond_6
    return-void
.end method

.method public onBackPressed()Z
    .locals 8

    .line 1297
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

    .line 1306
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v3, v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 1307
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

    .line 1316
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v2, v0

    check-cast v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$2500(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->callOnClick()Z

    goto :goto_2

    :cond_5
    const/16 v3, 0x9

    if-ne v0, v3, :cond_6

    .line 1318
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v3, v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 1319
    invoke-virtual {p0, v6, v2, v4, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    :cond_6
    const/16 v6, 0xa

    if-ne v0, v6, :cond_7

    .line 1321
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v5, v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 1322
    invoke-virtual {p0, v3, v2, v4, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    :cond_7
    const/16 v3, 0xd

    if-ne v0, v3, :cond_8

    .line 1324
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v3, v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 1325
    invoke-virtual {p0, v5, v2, v4, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 1327
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v3, v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1328
    invoke-virtual {p0, v1, v2, v4, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 1312
    :cond_9
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v3, v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1313
    invoke-virtual {p0, v1, v2, v4, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 1309
    :cond_a
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v5, v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 1310
    invoke-virtual {p0, v3, v2, v4, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    :cond_b
    :goto_2
    return v1

    .line 1298
    :cond_c
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v3, v0

    if-ge v1, v3, :cond_e

    .line 1299
    aget-object v3, v0, v1

    if-eqz v3, :cond_d

    .line 1300
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1303
    :cond_e
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    return v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1166
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SlideView;->hasCustomKeyboard()Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity;->setCustomKeyboardVisible(ZZ)V

    .line 1167
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->phoneNumberConfirmView:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    if-eqz p1, :cond_0

    .line 1168
    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$2200(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    :cond_0
    return-void
.end method

.method public onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
    .locals 17

    move-object/from16 v13, p0

    if-eqz p1, :cond_2

    .line 8463
    iget-object v0, v13, Lorg/telegram/ui/LoginActivity;->introView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 8464
    iget-object v0, v13, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 8465
    iget-object v0, v13, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 8468
    :cond_0
    new-instance v8, Lorg/telegram/ui/Components/TransformableLoginButtonView;

    iget-object v0, v13, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/TransformableLoginButtonView;-><init>(Landroid/content/Context;)V

    .line 8469
    iget-object v0, v13, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, v13, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setButtonText(Landroid/text/TextPaint;Ljava/lang/String;)V

    .line 8471
    iget-object v0, v13, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget-object v0, v13, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    .line 8472
    iget-object v0, v13, Lorg/telegram/ui/LoginActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8473
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 8474
    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 8477
    iget-object v2, v13, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v14, 0x0

    .line 8478
    aget v2, v1, v14

    const/4 v15, 0x1

    aget v3, v1, v15

    .line 8480
    iget-object v9, v13, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 8481
    aget v9, v1, v14

    sub-int/2addr v9, v2

    int-to-float v9, v9

    aget v1, v1, v15

    sub-int/2addr v1, v3

    int-to-float v11, v1

    .line 8482
    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 8483
    invoke-virtual {v8, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 8485
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

    .line 8486
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

    .line 8487
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xe6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v14

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

    .line 8489
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 8490
    new-instance v0, Lorg/telegram/ui/LoginActivity$15;

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v8, v1}, Lorg/telegram/ui/LoginActivity$15;-><init>(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/Components/TransformableLoginButtonView;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8521
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 8522
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v16

    .line 8523
    new-instance v1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda4;

    move-object v0, v1

    move-object v14, v1

    move-object/from16 v1, p0

    move-object v15, v3

    move/from16 v3, v16

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LoginActivity;IILandroid/view/ViewGroup$MarginLayoutParams;IIILorg/telegram/ui/Components/TransformableLoginButtonView;FIFI)V

    invoke-virtual {v15, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8548
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8550
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x12c

    .line 8551
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v15, v1, v2

    .line 8552
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 8553
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

    .line 1277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 1278
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

    .line 1280
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

    .line 1284
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

    .line 1285
    new-instance p1, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda19;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/LoginActivity;)V

    const-wide/16 v2, 0xc8

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1287
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

    .line 643
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 645
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isStandaloneBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appUpdateAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 647
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 648
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 649
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 651
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const-string v2, "custom_screen_type"

    .line 652
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/LoginActivity;->customScreenType:I

    .line 653
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isSearchByTelType()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 654
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    .line 658
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 4

    .line 610
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 612
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->loginTokenGenerator:Lcom/iMe/fork/utils/LoginTokenGenerator;

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {v0}, Lcom/iMe/fork/utils/LoginTokenGenerator;->destroy()V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 616
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 617
    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 618
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 621
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v1, :cond_3

    .line 622
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    .line 623
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->cancelDeleteProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 625
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->editDoneCallback:[Ljava/lang/Runnable;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_5

    aget-object v3, v1, v0

    if-eqz v3, :cond_4

    .line 627
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 630
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 632
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isStandaloneBuild()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 633
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appUpdateAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 634
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 635
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 636
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_6
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1123
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 1124
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    if-eqz v0, :cond_0

    .line 1125
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 1127
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAltFocusable(Landroid/app/Activity;I)V

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1174
    array-length p2, p2

    if-eqz p2, :cond_5

    array-length p2, p3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    .line 1176
    aget p3, p3, p2

    const/4 v0, 0x1

    if-nez p3, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    move p3, p2

    :goto_0
    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    .line 1178
    iput-boolean p2, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    .line 1179
    iget p1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-nez p1, :cond_5

    .line 1180
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p2, p1

    check-cast p1, Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$2302(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z

    .line 1181
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget p2, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object p1, p1, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SlideView;->onNextPressed(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    .line 1184
    iput-boolean p2, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    .line 1185
    iget p1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-nez p1, :cond_5

    .line 1186
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

    .line 1190
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p1, v0

    check-cast p1, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    .line 1191
    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$2400(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ImageUpdater;->openCamera()V

    goto :goto_1

    :cond_4
    const/16 p2, 0x97

    if-ne p1, p2, :cond_5

    if-eqz p3, :cond_5

    .line 1195
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p1, p1, v0

    check-cast p1, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    .line 1196
    new-instance p2, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda18;

    invoke-direct {p2, p1}, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 1132
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1133
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1134
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 1136
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 1137
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1138
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1141
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

    .line 1142
    aget-object v0, v3, v0

    check-cast v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1143
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

    .line 1144
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v3, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    const/4 v0, 0x0

    .line 1145
    invoke-virtual {p0, v1, v1, v0, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1149
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1151
    :cond_2
    :goto_0
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-nez v0, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->needRequestPermissions:Z

    if-nez v1, :cond_3

    .line 1152
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v1, v0

    if-eqz v0, :cond_3

    .line 1154
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 1158
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1159
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1160
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAltFocusable(Landroid/app/Activity;I)V

    :cond_4
    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 5

    .line 1878
    :try_start_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "currentViewNum"

    .line 1879
    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "syncContacts"

    .line 1880
    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->syncContacts:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v2

    .line 1881
    :goto_1
    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-gt v0, v1, :cond_2

    .line 1882
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 1884
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/SlideView;->saveStateParams(Landroid/os/Bundle;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1887
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

    .line 1888
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1889
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    .line 1890
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/LoginActivity;->putBundleToEditor(Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 1891
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1893
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public setIntroView(Landroid/view/View;Landroid/widget/TextView;)Lorg/telegram/ui/LoginActivity;
    .locals 0

    .line 8455
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->introView:Landroid/view/View;

    .line 8456
    iput-object p2, p0, Lorg/telegram/ui/LoginActivity;->startMessagingButton:Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 8457
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
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    .line 1794
    :goto_1
    iget v3, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-ne p1, v3, :cond_2

    move p2, v1

    :cond_2
    const/16 v3, 0x8

    if-eqz v2, :cond_4

    if-nez p1, :cond_3

    .line 1800
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    .line 1801
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    .line 1803
    :cond_3
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    .line 1804
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V

    .line 1806
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZ)V

    .line 1807
    iput v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    .line 1808
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZ)V

    if-nez p2, :cond_5

    .line 1810
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V

    goto :goto_2

    .line 1813
    :cond_4
    iput v1, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    .line 1814
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V

    .line 1815
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/LoginActivity;->showEditDoneProgress(ZZ)V

    if-eq p1, v3, :cond_5

    .line 1817
    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentDoneType:I

    :cond_5
    :goto_2
    if-eqz p2, :cond_a

    .line 1821
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v4, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v4, p2, v4

    .line 1822
    aget-object p2, p2, p1

    .line 1823
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 1824
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->needBackButton()Z

    move-result v6

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    move v6, v3

    goto :goto_4

    :cond_7
    :goto_3
    move v6, v1

    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1826
    invoke-virtual {p2, p3, v1}, Lorg/telegram/ui/Components/SlideView;->setParams(Landroid/os/Bundle;Z)V

    .line 1827
    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->getHeaderName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentActivityTitle(Ljava/lang/CharSequence;)V

    .line 1828
    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 1829
    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    if-eqz p4, :cond_8

    neg-int p3, p3

    :cond_8
    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setX(F)V

    .line 1830
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1832
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1833
    new-instance v5, Lorg/telegram/ui/LoginActivity$14;

    invoke-direct {v5, p0, v2, v4}, Lorg/telegram/ui/LoginActivity$14;-><init>(Lorg/telegram/ui/LoginActivity;ZLorg/telegram/ui/Components/SlideView;)V

    invoke-virtual {p3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    .line 1844
    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v0, [F

    if-eqz p4, :cond_9

    .line 1845
    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->x:I

    goto :goto_5

    :cond_9
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

    .line 1846
    invoke-static {p2, p4, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    aput-object p4, v2, v0

    .line 1844
    invoke-virtual {p3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x12c

    .line 1847
    invoke-virtual {p3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1848
    new-instance p4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1849
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    .line 1851
    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->hasCustomKeyboard()Z

    move-result p2

    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/LoginActivity;->setCustomKeyboardVisible(ZZ)V

    goto :goto_8

    .line 1853
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->backButtonView:Landroid/widget/ImageView;

    iget-object p4, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p4, p4, p1

    invoke-virtual {p4}, Lorg/telegram/ui/Components/SlideView;->needBackButton()Z

    move-result p4

    if-nez p4, :cond_c

    iget-boolean p4, p0, Lorg/telegram/ui/LoginActivity;->newAccount:Z

    if-eqz p4, :cond_b

    goto :goto_6

    :cond_b
    move p4, v3

    goto :goto_7

    :cond_c
    :goto_6
    move p4, v1

    :goto_7
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1854
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget p4, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object p2, p2, p4

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1855
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget p4, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object p2, p2, p4

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->onHide()V

    .line 1856
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 1857
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p2, p2, p1

    invoke-virtual {p2, p3, v1}, Lorg/telegram/ui/Components/SlideView;->setParams(Landroid/os/Bundle;Z)V

    .line 1858
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p2, p2, p1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1859
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->getHeaderName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentActivityTitle(Ljava/lang/CharSequence;)V

    .line 1860
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 1862
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SlideView;->hasCustomKeyboard()Z

    move-result p2

    invoke-direct {p0, p2, v1}, Lorg/telegram/ui/LoginActivity;->setCustomKeyboardVisible(ZZ)V

    .line 1865
    :goto_8
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->quickLoginButton:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_e

    if-nez p1, :cond_d

    move p3, v1

    goto :goto_9

    :cond_d
    move p3, v3

    .line 1866
    :goto_9
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1868
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity;->loginPrivacyPolicyView:Landroid/widget/TextView;

    if-eqz p2, :cond_10

    if-nez p1, :cond_f

    move v3, v1

    .line 1869
    :cond_f
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1871
    :cond_10
    invoke-direct {p0, v1}, Lorg/telegram/ui/LoginActivity;->checkUpdateAppItem(Z)V

    return-void
.end method
