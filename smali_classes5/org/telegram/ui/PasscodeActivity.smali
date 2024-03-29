.class public Lorg/telegram/ui/PasscodeActivity;
.super Lcom/iMe/ui/base/wallet_creation/JavaWalletCreationBaseFragment;
.source "PasscodeActivity.java"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;
.implements Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordView;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PasscodeActivity$RLottieImageHolderView;,
        Lorg/telegram/ui/PasscodeActivity$ListAdapter;
    }
.end annotation


# static fields
.field private static walletPinScreenArgs:Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;


# instance fields
.field private autoLockDetailRow:I

.field private autoLockRow:I

.field private captureDetailRow:I

.field private captureHeaderRow:I

.field private captureRow:I

.field private changePasscodeRow:I

.field private final checkRunnable:Ljava/lang/Runnable;

.field private codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

.field private currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

.field private currentPasswordType:I

.field private descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

.field private disablePasscodeRow:I

.field private fingerprintRow:I

.field private firstPassword:Ljava/lang/String;

.field private floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

.field private floatingButtonAnimator:Landroid/animation/Animator;

.field private floatingButtonContainer:Landroid/widget/FrameLayout;

.field private floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

.field private hidePasscodesDoNotMatch:Ljava/lang/Runnable;

.field private hintRow:I

.field private keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

.field private listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private lockImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private onShowKeyboardCallback:Ljava/lang/Runnable;

.field private otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field private passcodeSetStep:I

.field private passcodesDoNotMatchTextView:Landroid/widget/TextView;

.field private passwordButton:Landroid/widget/ImageView;

.field private passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private final pinCodeCoordinator:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private postedHidePasscodesDoNotMatch:Z

.field private rowCount:I

.field private screenType:I

.field private sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

.field private titleTextView:Landroid/widget/TextView;

.field private type:I

.field private utyanRow:I

.field public walletCreatePinPresenter:Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;
    .annotation runtime Lmoxy/presenter/InjectPresenter;
    .end annotation
.end field

.field public walletEnterPasswordPresenter:Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;
    .annotation runtime Lmoxy/presenter/InjectPresenter;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1LvUIjcqbzGwLvD8tv9zx8DZwew(Lorg/telegram/ui/PasscodeActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$23(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$28GFdh4wdQvvQi39I5GBZeADGS0(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$processDone$29()V

    return-void
.end method

.method public static synthetic $r8$lambda$2kBHGS-fOK_S3c5GuoC1zMQdaU4(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$onPasscodeError$32()V

    return-void
.end method

.method public static synthetic $r8$lambda$67Q3kUjghv5WOEBgiNHj9ZqKKZE(Lorg/telegram/ui/PasscodeActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6lbUoFIWjY64tz6t-y_a3kFeWnI(Lorg/telegram/ui/PasscodeActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$12(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8_gDnHvLX7Ba7UC7-jOzuPd6ijk(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$onWalletPinCodeChangeSuccess$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$9UBvSKNqzoWYuC78BJSGaoq2oP0(Lorg/telegram/ui/PasscodeActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PasscodeActivity;->lambda$processDone$30(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$C2yoldpL8bHi9FrrsIqf9xUizAg(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$new$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$CbU4On3ok_TUZVtGSbiDTXwrF1Y(Lorg/telegram/ui/PasscodeActivity;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->lambda$updateFields$28(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cd9_hrxDU5f_OUyfP64Y_sO4o7k(Lorg/telegram/ui/PasscodeActivity;Lorg/telegram/ui/Components/NumberPicker;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$14(Lorg/telegram/ui/Components/NumberPicker;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DMLTAWNUK3sUb3tEyRaTaElhq_c(Lorg/telegram/ui/CodeNumberField;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$animateSuccessAnimation$26(Lorg/telegram/ui/CodeNumberField;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ExEVW04zhxebKTVcJFhvFq1JWe0(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$onWalletImportSuccess$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$GoeLy4COlJ3cGFoVP43PrLKr1Cg()Lorg/koin/core/parameter/ParametersHolder;
    .locals 1

    invoke-static {}, Lorg/telegram/ui/PasscodeActivity;->lambda$provideWalletPinPresenter$0()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$HnPsnbaDlFkzEL1fRwu71j_Fcdc(Lorg/telegram/ui/PasscodeActivity;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$20(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lh4ODNrIOiyNw9g5HTN5tp2-KiI(Lorg/telegram/ui/PasscodeActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$11(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ORH3h46oArBRo-encudfTqM8BBM(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$processDone$31()V

    return-void
.end method

.method public static synthetic $r8$lambda$PLLrfWhE0UXxEx3yiO330lFBMGw(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->showKeyboard()V

    return-void
.end method

.method public static synthetic $r8$lambda$Rl78-io9TQWO5_u8UiXxpT3AYWo(Lorg/telegram/ui/PasscodeActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$21(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RsELBTDUzIDmAdQi0GtwHl_LWDU(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$onWalletImportSuccess$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$SVxqnAdYwXOcmq8I1_zpfjuVc_s(Lorg/telegram/ui/PasscodeActivity;Lorg/telegram/ui/CodeNumberField;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$22(Lorg/telegram/ui/CodeNumberField;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$UdfJM2boSME8twBKuQJLTcKz0SE(Lorg/telegram/ui/PasscodeActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PasscodeActivity;->lambda$showForgotPasswordOptionsDialog$9(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V7u9vG6AYbunCHe-RHfoP_XpkAs(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$onWalletPinCodeChangeSuccess$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$a_lrtQnEYqPMW_VWSK3px7JK3oQ(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$18(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$awfRmLHQ7tWKW7VWHx4f1PPhO7g(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$onPasscodeError$33()V

    return-void
.end method

.method public static synthetic $r8$lambda$b968fPC0QGKKagfGwsYjqAvwJLE(Lorg/telegram/ui/PasscodeActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PasscodeActivity;->lambda$setCustomKeyboardVisible$24(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bnUZTCkoHYaGSm04fu3wnK5BuoE(Lorg/telegram/ui/PasscodeActivity;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PasscodeActivity;->lambda$animateSuccessAnimation$27(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dH_CfSIslQATz-G9eeFEe7NUwgE(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$onSuccessDeleteWallet$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$dtRokkHMa_jBQPFP8KxjTAwAZIk(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$16(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eJL3jc8PvtbVmaPRs0oBUJsL3dg(Lorg/telegram/ui/PasscodeActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$15(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hABIOGZnSgoKBZ2b7QYN_ZCtvTs(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->lambda$onWalletCreateSuccess$1(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lOLVybg7tYidEziRnlbg1yU-rXo(Lorg/telegram/ui/PasscodeActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->lambda$showForgotPasswordOptionsDialog$8(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ntgniw0ElQL3i3ike2wEwFz1rJA(Lorg/telegram/ui/PasscodeActivity;Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PasscodeActivity;->lambda$onWalletCreateSuccess$2(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r88w0KeycYw5VcoWzO8FCFlCYCA(Lorg/telegram/ui/PasscodeActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PasscodeActivity;->lambda$setFloatingButtonVisible$25(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rCsmUvhZpircPzNuPvZY8VCRN7U(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$13(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vbxcqidDCz6w1qO6ciQLawaawQI(Lorg/telegram/ui/PasscodeActivity;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$19(Landroid/view/View;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 161
    new-instance v0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

    invoke-direct {v0}, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;-><init>()V

    sput-object v0, Lorg/telegram/ui/PasscodeActivity;->walletPinScreenArgs:Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILcom/iMe/fork/enums/LockedSection;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(ILcom/iMe/fork/enums/LockedSection;)V
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILcom/iMe/fork/enums/LockedSection;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(ILcom/iMe/fork/enums/LockedSection;Landroid/os/Bundle;)V
    .locals 1

    .line 438
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_creation/JavaWalletCreationBaseFragment;-><init>()V

    .line 141
    const-class v0, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->inject(Ljava/lang/Class;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->pinCodeCoordinator:Lkotlin/Lazy;

    .line 164
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$1;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->checkRunnable:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 173
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    const/4 v0, 0x0

    .line 406
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    .line 408
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    .line 430
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->hidePasscodesDoNotMatch:Ljava/lang/Runnable;

    .line 439
    iput p1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    .line 441
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    .line 442
    invoke-direct {p0, p2}, Lorg/telegram/ui/PasscodeActivity;->setCurrentLockedSection(Lcom/iMe/fork/enums/LockedSection;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateRetryTime()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/PasscodeActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 136
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->checkRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 136
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 136
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 136
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PasscodeActivity;)Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lorg/telegram/ui/PasscodeActivity;->postedHidePasscodesDoNotMatch:Z

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PasscodeActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 136
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->hidePasscodesDoNotMatch:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 136
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processDone()V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processNext()V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 136
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PasscodeActivity;)Landroid/animation/Animator;
    .locals 0

    .line 136
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/PasscodeActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;
    .locals 0

    .line 136
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 136
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 136
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 136
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->captureRow:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 136
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 136
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->disablePasscodeRow:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 136
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;
    .locals 0

    .line 136
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 136
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->captureHeaderRow:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PasscodeActivity;)Z
    .locals 0

    .line 136
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 136
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->hintRow:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 136
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 136
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->captureDetailRow:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 136
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->utyanRow:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 136
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/PasscodeActivity;I)I
    .locals 0

    .line 136
    iput p1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 136
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/CodeFieldContainer;
    .locals 0

    .line 136
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateFields()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->showKeyboard()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/PasscodeActivity;)Z
    .locals 0

    .line 136
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result p0

    return p0
.end method

.method private animateSuccessAnimation(Ljava/lang/Runnable;)V
    .locals 8

    .line 1164
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1165
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1168
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v2

    const-wide/16 v4, 0x4b

    if-ge v0, v3, :cond_1

    .line 1169
    aget-object v1, v2, v0

    .line 1170
    new-instance v2, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2, v1}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/CodeNumberField;)V

    int-to-long v6, v0

    mul-long/2addr v6, v4

    invoke-virtual {v1, v2, v6, v7}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1172
    :cond_1
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/PasscodeActivity;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length p1, p1

    int-to-long v2, p1

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x15e

    add-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static determineOpenFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->determineOpenFragment(Lcom/iMe/fork/enums/LockedSection;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public static determineOpenFragment(Lcom/iMe/fork/enums/LockedSection;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 9

    .line 1157
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/LockedSectionsController;->getInstance(I)Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iMe/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lcom/iMe/fork/enums/LockedSection;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1158
    :cond_1
    new-instance v0, Lorg/telegram/ui/PasscodeActivity;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILcom/iMe/fork/enums/LockedSection;)V

    return-object v0

    .line 1160
    :cond_2
    new-instance v0, Lorg/telegram/ui/ActionIntroActivity;

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/ActionIntroActivity;-><init>(ILcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;Lcom/iMe/model/wallet/home/BannerSlide;Lcom/iMe/fork/enums/LockedSection;)V

    return-object v0
.end method

.method private isCustomKeyboardVisible()Z
    .locals 2

    .line 1336
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ge v1, v0, :cond_0

    .line 1337
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPassword()Z
    .locals 4

    .line 1388
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 1392
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v0, v2, :cond_1

    iget v3, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-eq v3, v2, :cond_4

    :cond_1
    if-ne v0, v1, :cond_3

    sget v0, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_3

    .line 1393
    invoke-virtual {v0}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeType()I

    move-result v0

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_0
    return v2
.end method

.method private isPinCode()Z
    .locals 3

    .line 1378
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1382
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v0, v1, :cond_1

    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-eqz v2, :cond_4

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    sget v0, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_3

    .line 1383
    invoke-virtual {v0}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeType()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method

.method private isWalletScreen()Z
    .locals 2

    .line 363
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$animateSuccessAnimation$26(Lorg/telegram/ui/CodeNumberField;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1170
    invoke-virtual {p0, v0}, Lorg/telegram/ui/CodeNumberField;->animateSuccessProgress(F)V

    return-void
.end method

.method private synthetic lambda$animateSuccessAnimation$27(Ljava/lang/Runnable;)V
    .locals 5

    .line 1173
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 1174
    invoke-virtual {v3, v4}, Lorg/telegram/ui/CodeNumberField;->animateSuccessProgress(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1176
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createView$11(IZ)V
    .locals 0

    const/16 p2, 0x14

    .line 529
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->onShowKeyboardCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 530
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 531
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->onShowKeyboardCallback:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$12(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 575
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    const-string p2, ""

    if-eqz p1, :cond_0

    .line 576
    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeHash(Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :cond_0
    sput-object p2, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    .line 580
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 581
    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setSectionLocked(Z)V

    goto :goto_1

    .line 583
    :cond_1
    sput-boolean p2, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    .line 585
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz p1, :cond_2

    .line 586
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/LockedSectionsController;->saveConfig()V

    goto :goto_2

    .line 588
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 590
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-nez p1, :cond_3

    .line 591
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->buildShortcuts()V

    .line 592
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v0, p2

    :goto_3
    if-ge v0, p1, :cond_5

    .line 594
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 595
    instance-of v2, v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v2, :cond_4

    .line 596
    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 597
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText7:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 601
    :cond_5
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 602
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private static synthetic lambda$createView$13(I)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    .line 645
    sget p0, Lorg/telegram/messenger/R$string;->AutoLockDisabled:I

    const-string v0, "AutoLockDisabled"

    invoke-static {v0, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "Minutes"

    const-string v1, "AutoLockInTime"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, v2, :cond_1

    .line 647
    sget p0, Lorg/telegram/messenger/R$string;->AutoLockInTime:I

    new-array v4, v2, [Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v1, p0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v4, 0x2

    const/4 v5, 0x5

    if-ne p0, v4, :cond_2

    .line 649
    sget p0, Lorg/telegram/messenger/R$string;->AutoLockInTime:I

    new-array v2, v2, [Ljava/lang/Object;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v5, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, p0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x3

    const-string v4, "Hours"

    if-ne p0, v0, :cond_3

    .line 651
    sget p0, Lorg/telegram/messenger/R$string;->AutoLockInTime:I

    new-array v0, v2, [Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 653
    sget p0, Lorg/telegram/messenger/R$string;->AutoLockInTime:I

    new-array v0, v2, [Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, ""

    return-object p0
.end method

.method private synthetic lambda$createView$14(Lorg/telegram/ui/Components/NumberPicker;ILandroid/content/DialogInterface;I)V
    .locals 1

    .line 659
    invoke-virtual {p1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result p1

    .line 660
    sget p3, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    const/4 p4, 0x0

    if-nez p1, :cond_0

    .line 662
    sput p4, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x3c

    .line 664
    sput p1, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/16 p1, 0x12c

    .line 666
    sput p1, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const/16 p1, 0xe10

    .line 668
    sput p1, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const/16 p1, 0x4650

    .line 670
    sput p1, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    .line 672
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 674
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz p1, :cond_5

    .line 675
    sget p2, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setTimeout(I)V

    .line 676
    sput p3, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    .line 677
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/LockedSectionsController;->saveConfig()V

    goto :goto_1

    .line 679
    :cond_5
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$createView$15(Landroid/view/View;I)V
    .locals 5

    .line 565
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 568
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->disablePasscodeRow:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 569
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/messenger/R$string;->DisablePasscode:I

    .line 570
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->DisablePasscodeConfirmMessage:I

    .line 571
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 572
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->DisablePasscodeTurnOff:I

    .line 573
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 603
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 604
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 p2, -0x1

    .line 605
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 606
    :cond_1
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I

    const/4 v2, 0x1

    if-ne p2, v0, :cond_3

    .line 608
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne p1, v2, :cond_2

    .line 609
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->pinCodeCoordinator:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    new-instance v0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

    sget-object v2, Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Change;->INSTANCE:Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Change;

    const-string v3, ""

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;)V

    .line 611
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->newInstanceForWalletPin(Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;)Lorg/telegram/ui/PasscodeActivity;

    move-result-object v0

    .line 609
    invoke-virtual {p1, p2, v0}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;->start(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;)V

    goto/16 :goto_3

    .line 621
    :cond_2
    new-instance p1, Lorg/telegram/ui/PasscodeActivity;

    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    invoke-direct {p1, v2, p2}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILcom/iMe/fork/enums/LockedSection;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    .line 622
    :cond_3
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_b

    .line 623
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 626
    :cond_4
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 627
    sget v0, Lorg/telegram/messenger/R$string;->AutoLock:I

    const-string v3, "AutoLock"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 628
    new-instance v0, Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 629
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    const/4 v3, 0x4

    .line 630
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 631
    iget-object v4, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getTimeout()I

    move-result v4

    goto :goto_0

    :cond_5
    sget v4, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    :goto_0
    if-nez v4, :cond_6

    .line 633
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_1

    :cond_6
    const/16 v1, 0x3c

    if-ne v4, v1, :cond_7

    .line 635
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_1

    :cond_7
    const/16 v1, 0x12c

    if-ne v4, v1, :cond_8

    const/4 v1, 0x2

    .line 637
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_1

    :cond_8
    const/16 v1, 0xe10

    if-ne v4, v1, :cond_9

    const/4 v1, 0x3

    .line 639
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_1

    :cond_9
    const/16 v1, 0x4650

    if-ne v4, v1, :cond_a

    .line 641
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 643
    :cond_a
    :goto_1
    sget-object v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda34;->INSTANCE:Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda34;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setFormatter(Lorg/telegram/ui/Components/NumberPicker$Formatter;)V

    .line 657
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 658
    sget v1, Lorg/telegram/messenger/R$string;->Done:I

    const-string v2, "Done"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p2}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/PasscodeActivity;Lorg/telegram/ui/Components/NumberPicker;I)V

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 681
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 682
    :cond_b
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I

    if-ne p2, v0, :cond_10

    .line 684
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz p2, :cond_c

    .line 685
    invoke-virtual {p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->isUseFingerprint()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setUseFingerprint(Z)V

    .line 686
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/LockedSectionsController;->saveConfig()V

    goto :goto_2

    .line 687
    :cond_c
    iget p2, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne p2, v2, :cond_d

    .line 688
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getWalletFingerprintController()Lcom/iMe/fork/controller/WalletFingerprintController;

    move-result-object p2

    .line 689
    invoke-virtual {p2}, Lcom/iMe/fork/controller/WalletFingerprintController;->isWalletFingerprintUnlockEnabled()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lcom/iMe/fork/controller/WalletFingerprintController;->setWalletFingerprintUnlockEnabled(Z)V

    .line 690
    invoke-virtual {p2}, Lcom/iMe/fork/controller/WalletFingerprintController;->saveConfig()V

    goto :goto_2

    .line 692
    :cond_d
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->useFingerprint:Z

    xor-int/2addr p2, v2

    sput-boolean p2, Lorg/telegram/messenger/SharedConfig;->useFingerprint:Z

    .line 693
    :goto_2
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 695
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz p2, :cond_e

    .line 696
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->isUseFingerprint()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_3

    .line 697
    :cond_e
    iget p2, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne p2, v2, :cond_f

    .line 698
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getWalletFingerprintController()Lcom/iMe/fork/controller/WalletFingerprintController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/WalletFingerprintController;->isWalletFingerprintUnlockEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_3

    .line 700
    :cond_f
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->useFingerprint:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_3

    .line 701
    :cond_10
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureRow:I

    if-ne p2, v0, :cond_11

    .line 702
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    xor-int/2addr p2, v2

    sput-boolean p2, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    .line 703
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 704
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 705
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 706
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    if-nez p1, :cond_11

    .line 707
    sget p1, Lorg/telegram/messenger/R$string;->ScreenCaptureAlert:I

    const-string p2, "ScreenCaptureAlert"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    :cond_11
    :goto_3
    return-void
.end method

.method private static synthetic lambda$createView$16(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 795
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 796
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x1

    .line 797
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x2

    .line 798
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 799
    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private synthetic lambda$createView$17(Landroid/view/View;)V
    .locals 0

    .line 814
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->showForgotPasswordOptionsDialog()V

    return-void
.end method

.method private static synthetic lambda$createView$18(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 816
    invoke-static {p0}, Lorg/telegram/ui/Components/AlertsCreator;->createForgotPasscodeDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic lambda$createView$19(Landroid/view/View;Z)V
    .locals 0

    .line 859
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(F)V

    return-void
.end method

.method private synthetic lambda$createView$20(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/View;)V
    .locals 3

    .line 896
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 898
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 899
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x90

    goto :goto_0

    :cond_0
    const/16 v2, 0x80

    :goto_0
    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 900
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    .line 902
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    goto :goto_1

    :cond_1
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    :goto_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method private synthetic lambda$createView$21(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 910
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 911
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processNext()V

    return p2

    :cond_0
    if-ne p1, p2, :cond_1

    .line 914
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processDone()V

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$22(Lorg/telegram/ui/CodeNumberField;Landroid/view/View;Z)V
    .locals 0

    .line 987
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setEditText(Landroid/widget/EditText;)V

    .line 988
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setDispatchBackWhenEmpty(Z)V

    return-void
.end method

.method private synthetic lambda$createView$23(Landroid/view/View;)V
    .locals 1

    .line 1016
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1017
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    if-nez p1, :cond_0

    .line 1018
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processNext()V

    goto :goto_0

    .line 1020
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processDone()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1023
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processDone()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$10()V
    .locals 2

    const/4 v0, 0x0

    .line 431
    iput-boolean v0, p0, Lorg/telegram/ui/PasscodeActivity;->postedHidePasscodesDoNotMatch:Z

    .line 432
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    return-void
.end method

.method private synthetic lambda$onPasscodeError$32()V
    .locals 5

    .line 1545
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1546
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 1547
    invoke-virtual {v4, v1}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1550
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateError(F)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onPasscodeError$33()V
    .locals 3

    .line 1544
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    .line 1552
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x96

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x3e8

    .line 1544
    :goto_0
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$onSuccessDeleteWallet$7()V
    .locals 3

    .line 274
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 278
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 279
    instance-of v2, v2, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 283
    invoke-static {}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->newInstance()Lcom/iMe/ui/wallet/common/WalletRootFragment;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_1

    .line 286
    :cond_3
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment(Z)Z

    :goto_1
    return-void
.end method

.method private static synthetic lambda$onWalletCreateSuccess$1(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 228
    new-instance v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;-><init>(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->newInstance(Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onWalletCreateSuccess$2(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 221
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    .line 225
    new-instance v0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletIntro;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda32;

    invoke-direct {v1, p1, p2, p3}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda32;-><init>(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletIntro;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 226
    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->newInstance(Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;)Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    move-result-object p1

    const/4 p2, 0x1

    .line 225
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method private synthetic lambda$onWalletImportSuccess$3()V
    .locals 2

    .line 241
    sget-object v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Ready;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Ready;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->newInstance(Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method private synthetic lambda$onWalletImportSuccess$4()V
    .locals 1

    .line 241
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/PasscodeActivity;->animateSuccessAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onWalletPinCodeChangeSuccess$5()V
    .locals 1

    .line 249
    sget v0, Lorg/telegram/messenger/R$string;->wallet_pin_code_change_success:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iMe/ui/base/mvp/MvpFragment;->showToast(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment(Z)Z

    return-void
.end method

.method private synthetic lambda$onWalletPinCodeChangeSuccess$6()V
    .locals 1

    .line 248
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/PasscodeActivity;->animateSuccessAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processDone$29()V
    .locals 4

    .line 1416
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->hidePasscodesDoNotMatch:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 1417
    iput-boolean v0, p0, Lorg/telegram/ui/PasscodeActivity;->postedHidePasscodesDoNotMatch:Z

    return-void
.end method

.method private synthetic lambda$processDone$30(Z)V
    .locals 2

    .line 1471
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->buildShortcuts()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1473
    new-instance p1, Lorg/telegram/ui/PasscodeActivity;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILcom/iMe/fork/enums/LockedSection;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0

    .line 1475
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 1477
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$processDone$31()V
    .locals 3

    .line 1527
    new-instance v0, Lorg/telegram/ui/PasscodeActivity;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILcom/iMe/fork/enums/LockedSection;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method private static synthetic lambda$provideWalletPinPresenter$0()Lorg/koin/core/parameter/ParametersHolder;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 149
    sget-object v1, Lorg/telegram/ui/PasscodeActivity;->walletPinScreenArgs:Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/koin/core/parameter/ParametersHolderKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$setCustomKeyboardVisible$24(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1083
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1084
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1085
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/16 p1, 0xe6

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    const/high16 p1, 0x3f400000    # 0.75f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1086
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$setFloatingButtonVisible$25(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1126
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1127
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    const/16 v1, 0x46

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 1128
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$showForgotPasswordOptionsDialog$8(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 355
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->walletEnterPasswordPresenter:Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    invoke-virtual {p1, p2}, Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->onForgotPasscodeOptionSelected(I)V

    return-void
.end method

.method private synthetic lambda$showForgotPasswordOptionsDialog$9(Landroid/content/DialogInterface;)V
    .locals 0

    .line 359
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->showKeyboard()V

    return-void
.end method

.method private synthetic lambda$updateFields$28(ZZ)V
    .locals 0

    .line 1321
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->setFloatingButtonVisible(ZZ)V

    .line 1322
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->onShowKeyboardCallback:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static newInstanceForWalletPin(Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;)Lorg/telegram/ui/PasscodeActivity;
    .locals 3

    .line 196
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "screen_type"

    const/4 v2, 0x0

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    sput-object p0, Lorg/telegram/ui/PasscodeActivity;->walletPinScreenArgs:Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

    .line 199
    new-instance p0, Lorg/telegram/ui/PasscodeActivity;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILandroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstanceForWalletPinRestore()Lorg/telegram/ui/PasscodeActivity;
    .locals 3

    .line 209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "screen_type"

    const/4 v2, 0x2

    .line 210
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    new-instance v1, Lorg/telegram/ui/PasscodeActivity;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILandroid/os/Bundle;)V

    return-object v1
.end method

.method public static newInstanceForWalletPinSettings()Lorg/telegram/ui/PasscodeActivity;
    .locals 3

    .line 203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "screen_type"

    const/4 v2, 0x1

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    new-instance v1, Lorg/telegram/ui/PasscodeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILandroid/os/Bundle;)V

    return-object v1
.end method

.method private onPasscodeError()V
    .locals 5

    .line 1533
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1535
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1537
    :catch_0
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 1538
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 1539
    invoke-virtual {v4, v1}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1542
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateError(F)V

    .line 1544
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v1, 0x41200000    # 10.0f

    goto :goto_2

    :cond_4
    const/high16 v1, 0x40800000    # 4.0f

    :goto_2
    new-instance v2, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;FLjava/lang/Runnable;)V

    return-void
.end method

.method private processDone()V
    .locals 10

    .line 1397
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1398
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    return-void

    .line 1401
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1402
    :goto_0
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v4, :cond_12

    .line 1403
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->firstPassword:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1404
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    .line 1405
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, v0

    move v2, v5

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    .line 1406
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1408
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1409
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1411
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1412
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    .line 1414
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->hidePasscodesDoNotMatch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1415
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1422
    :cond_4
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    move v0, v4

    goto :goto_2

    :cond_7
    move v0, v5

    .line 1425
    :goto_2
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    const/16 v3, 0x10

    if-eqz v1, :cond_8

    new-array v6, v3, [B

    .line 1426
    invoke-virtual {v1, v6}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeSalt([B)V

    goto :goto_3

    :cond_8
    new-array v1, v3, [B

    .line 1428
    sput-object v1, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    .line 1429
    :goto_3
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v6, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeSalt()[B

    move-result-object v6

    goto :goto_4

    :cond_9
    sget-object v6, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    :goto_4
    invoke-virtual {v1, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1430
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->firstPassword:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1431
    array-length v6, v1

    add-int/lit8 v6, v6, 0x20

    new-array v7, v6, [B

    .line 1432
    iget-object v8, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeSalt()[B

    move-result-object v8

    goto :goto_5

    :cond_a
    sget-object v8, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    :goto_5
    invoke-static {v8, v5, v7, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1433
    array-length v8, v1

    invoke-static {v1, v5, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1434
    iget-object v8, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeSalt()[B

    move-result-object v8

    goto :goto_6

    :cond_b
    sget-object v8, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    :goto_6
    array-length v1, v1

    add-int/2addr v1, v3

    invoke-static {v8, v5, v7, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1436
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v1, :cond_c

    int-to-long v8, v6

    .line 1437
    invoke-static {v7, v5, v8, v9}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeHash(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    int-to-long v8, v6

    .line 1439
    invoke-static {v7, v5, v8, v9}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    .line 1441
    :goto_7
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v1, :cond_d

    .line 1442
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    invoke-virtual {v1, v3}, Lcom/iMe/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lcom/iMe/fork/enums/LockedSection;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v1

    .line 1446
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1449
    :cond_d
    :goto_8
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-nez v1, :cond_e

    .line 1450
    sput-boolean v4, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    :cond_e
    if-eqz v1, :cond_f

    .line 1453
    iget v3, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    invoke-virtual {v1, v3}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeType(I)V

    goto :goto_9

    .line 1455
    :cond_f
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    sput v1, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    .line 1457
    :goto_9
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v1, :cond_10

    .line 1458
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/LockedSectionsController;->saveConfig()V

    goto :goto_a

    .line 1460
    :cond_10
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 1462
    :goto_a
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1463
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1464
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v1

    :goto_b
    if-ge v5, v3, :cond_11

    aget-object v4, v1, v5

    .line 1465
    invoke-virtual {v4}, Landroid/widget/EditText;->clearFocus()V

    .line 1466
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 1468
    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setEditText(Landroid/widget/EditText;)V

    .line 1470
    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/PasscodeActivity;Z)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/PasscodeActivity;->animateSuccessAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_12
    const/4 v6, 0x2

    if-ne v1, v6, :cond_1f

    .line 1480
    sget-wide v6, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_13

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v1, :cond_14

    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeRetryInMs()J

    move-result-wide v6

    cmp-long v1, v6, v8

    if-lez v1, :cond_18

    .line 1481
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeRetryInMs()J

    move-result-wide v0

    goto :goto_c

    :cond_15
    sget-wide v0, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    :goto_c
    long-to-double v0, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1482
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->TooManyTries:I

    new-array v4, v4, [Ljava/lang/Object;

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "Seconds"

    invoke-static {v7, v0, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "TooManyTries"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1483
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateRetryTime()V

    .line 1485
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, v0

    move v2, v5

    :goto_d
    if-ge v2, v1, :cond_16

    aget-object v4, v0, v2

    .line 1486
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1488
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1489
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1490
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1492
    :cond_17
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    return-void

    .line 1495
    :cond_18
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v4, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/SharedConfig;->checkPasscode(Ljava/lang/String;ILcom/iMe/fork/enums/LockedSection;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1496
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    invoke-static {v0, v1}, Lorg/telegram/messenger/SharedConfig;->increaseBadPasscodeTries(ILcom/iMe/fork/enums/LockedSection;)V

    .line 1497
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1498
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, v0

    move v2, v5

    :goto_e
    if-ge v2, v1, :cond_19

    aget-object v4, v0, v2

    .line 1499
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1501
    :cond_19
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1502
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1504
    :cond_1a
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    return-void

    .line 1508
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_1c

    .line 1509
    invoke-virtual {v0, v5}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setBadPasscodeTries(I)V

    goto :goto_f

    .line 1511
    :cond_1c
    sput v5, Lorg/telegram/messenger/SharedConfig;->badPasscodeTries:I

    .line 1513
    :goto_f
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_1d

    .line 1514
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/LockedSectionsController;->saveConfig()V

    goto :goto_10

    .line 1516
    :cond_1d
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 1518
    :goto_10
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1519
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1520
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, v0

    :goto_11
    if-ge v5, v1, :cond_1e

    aget-object v3, v0, v5

    .line 1521
    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 1522
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 1524
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setEditText(Landroid/widget/EditText;)V

    .line 1526
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/PasscodeActivity;->animateSuccessAnimation(Ljava/lang/Runnable;)V

    :cond_1f
    :goto_12
    return-void
.end method

.method private processNext()V
    .locals 6

    .line 1342
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1343
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletCreatePinPresenter:Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    iget-object v2, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->onPinChanged(Ljava/lang/String;)V

    .line 1344
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletCreatePinPresenter:Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    sget-object v2, Lcom/iMe/model/common/ScreenStep;->CONFIRM_STEP:Lcom/iMe/model/common/ScreenStep;

    invoke-virtual {v0, v2}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->setCurrentScreenStep(Lcom/iMe/model/common/ScreenStep;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1346
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletEnterPasswordPresenter:Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->validatePassword(Ljava/lang/String;)V

    return-void

    .line 1349
    :cond_1
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    .line 1350
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    return-void

    .line 1354
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_5

    const/16 v2, 0x8

    .line 1355
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1359
    :cond_5
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-nez v0, :cond_6

    .line 1360
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_confirm_eth_pin_code_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1362
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ConfirmCreatePasscode:I

    const-string v3, "ConfirmCreatePasscode"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1364
    :goto_1
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-nez v0, :cond_7

    .line 1365
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_confirm_eth_pin_code_description:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1367
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    sget v2, Lorg/telegram/messenger/R$string;->PasscodeReinstallNotice:I

    const-string v3, "PasscodeReinstallNotice"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 1368
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->firstPassword:Ljava/lang/String;

    .line 1369
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1370
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v3, 0x80081

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 1371
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_9

    aget-object v5, v0, v4

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1372
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->showKeyboard()V

    .line 1373
    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    return-void
.end method

.method private setCurrentLockedSection(Lcom/iMe/fork/enums/LockedSection;)V
    .locals 1

    .line 344
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    .line 345
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    invoke-virtual {p1, v0}, Lcom/iMe/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lcom/iMe/fork/enums/LockedSection;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    return-void
.end method

.method private setCustomKeyboardVisible(ZZ)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1066
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1067
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAltFocusable(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1069
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAltFocusable(Landroid/app/Activity;I)V

    :goto_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez p2, :cond_4

    .line 1073
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1074
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1075
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/16 p1, 0xe6

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float v2, p1

    :goto_3
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1077
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 1078
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_7

    :cond_4
    const/4 p2, 0x2

    new-array p2, p2, [F

    if-eqz p1, :cond_5

    move v3, v2

    goto :goto_4

    :cond_5
    move v3, v1

    :goto_4
    aput v3, p2, v0

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    aput v1, p2, v0

    .line 1080
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x96

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    if-eqz p1, :cond_7

    .line 1081
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    goto :goto_6

    :cond_7
    sget-object v0, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    :goto_6
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1082
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1088
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$12;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PasscodeActivity$12;-><init>(Lorg/telegram/ui/PasscodeActivity;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1103
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    :goto_7
    return-void
.end method

.method private setFloatingButtonVisible(ZZ)V
    .locals 4

    .line 1114
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1115
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 1116
    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonAnimator:Landroid/animation/Animator;

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez p2, :cond_4

    .line 1119
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/16 v3, 0x46

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    :goto_0
    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 1120
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1121
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_6

    :cond_4
    const/4 p2, 0x2

    new-array p2, p2, [F

    if-eqz p1, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    aput v3, p2, v0

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    aput v1, p2, v0

    .line 1123
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x96

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    if-eqz p1, :cond_7

    .line 1124
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    goto :goto_5

    :cond_7
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    :goto_5
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1125
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1130
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$13;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PasscodeActivity$13;-><init>(Lorg/telegram/ui/PasscodeActivity;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1148
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 1149
    iput-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonAnimator:Landroid/animation/Animator;

    :goto_6
    return-void
.end method

.method private showForgotPasswordOptionsDialog()V
    .locals 2

    .line 353
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-static {p0, v0}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createForgotPinOptionsBottomSheetDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    .line 357
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 358
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 359
    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showKeyboard()V
    .locals 2

    .line 1276
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1278
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1279
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    goto :goto_0

    .line 1281
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPassword()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1282
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1283
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateFields()V
    .locals 6

    .line 1289
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1290
    sget v0, Lorg/telegram/messenger/R$string;->EnterYourPasscodeInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1291
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    if-nez v0, :cond_4

    .line 1293
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-nez v0, :cond_1

    .line 1294
    sget v0, Lorg/telegram/messenger/R$string;->wallet_create_eth_pin_code_description:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    .line 1296
    sget v0, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_description:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1298
    :cond_2
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-nez v0, :cond_3

    sget v0, Lorg/telegram/messenger/R$string;->CreatePasscodeInfoPIN:I

    goto :goto_0

    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->CreatePasscodeInfoPassword:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1299
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1301
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_2

    :cond_5
    move v2, v4

    .line 1302
    :goto_2
    iget v5, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v5, v1, :cond_6

    .line 1303
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$string;->EnterYourPasscodeInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_4

    .line 1304
    :cond_6
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    if-nez v1, :cond_9

    .line 1306
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isWalletScreen()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1307
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_4

    .line 1309
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-nez v1, :cond_8

    sget v1, Lorg/telegram/messenger/R$string;->CreatePasscodeInfoPIN:I

    goto :goto_3

    :cond_8
    sget v1, Lorg/telegram/messenger/R$string;->CreatePasscodeInfoPassword:I

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    .line 1311
    :cond_9
    :goto_4
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_a

    .line 1312
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-static {v0, v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1313
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-static {v0, v4, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    goto :goto_5

    .line 1314
    :cond_a
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPassword()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1315
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-static {v0, v4, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1316
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-static {v0, v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1318
    :cond_b
    :goto_5
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPassword()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1320
    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, v0, v2}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/PasscodeActivity;ZZ)V

    iput-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->onShowKeyboardCallback:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    .line 1324
    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_6

    .line 1326
    :cond_c
    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/PasscodeActivity;->setFloatingButtonVisible(ZZ)V

    .line 1328
    :goto_6
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result v0

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/PasscodeActivity;->setCustomKeyboardVisible(ZZ)V

    .line 1329
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->showKeyboard()V

    return-void
.end method

.method private updateRetryTime()V
    .locals 5

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->checkRunnable:Ljava/lang/Runnable;

    const/4 v4, 0x0

    invoke-static {v4, v0, v1, v2, v3}, Lorg/telegram/ui/Components/PasscodeView;->checkRetryTextViewPublic(Lorg/telegram/ui/Components/PasscodeView;Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;Lcom/iMe/fork/enums/LockedSection;ILjava/lang/Runnable;)V

    return-void
.end method

.method private updateRows()V
    .locals 4

    const/4 v0, 0x0

    .line 1231
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1232
    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->utyanRow:I

    add-int/lit8 v0, v1, 0x1

    .line 1233
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->hintRow:I

    add-int/lit8 v1, v0, 0x1

    .line 1234
    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I

    const/4 v0, -0x1

    .line 1236
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_1

    .line 1237
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;

    move-result-object v1

    .line 1238
    invoke-virtual {v1}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1239
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I

    goto :goto_0

    .line 1241
    :cond_0
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I

    goto :goto_0

    .line 1243
    :cond_1
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1245
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1248
    :goto_0
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne v1, v2, :cond_2

    .line 1249
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->disablePasscodeRow:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureDetailRow:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureRow:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I

    return-void

    .line 1253
    :cond_2
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I

    add-int/lit8 v1, v2, 0x1

    .line 1254
    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I

    .line 1256
    iget-object v2, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    if-eqz v2, :cond_3

    .line 1257
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureDetailRow:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureRow:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureHeaderRow:I

    add-int/lit8 v0, v1, 0x1

    .line 1258
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->disablePasscodeRow:I

    return-void

    :cond_3
    add-int/lit8 v0, v1, 0x1

    .line 1262
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->captureHeaderRow:I

    add-int/lit8 v1, v0, 0x1

    .line 1263
    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureRow:I

    add-int/lit8 v0, v1, 0x1

    .line 1264
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->captureDetailRow:I

    add-int/lit8 v1, v0, 0x1

    .line 1265
    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->disablePasscodeRow:I

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 473
    invoke-super/range {p0 .. p1}, Lcom/iMe/ui/base/mvp/MvpFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 474
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 475
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 476
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/PasscodeActivity$2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/PasscodeActivity$2;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 486
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 487
    iget v5, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-nez v5, :cond_0

    move-object v5, v2

    goto :goto_0

    .line 490
    :cond_0
    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 491
    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v2, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    invoke-virtual {v5, v8}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 495
    :goto_0
    new-instance v9, Lorg/telegram/ui/PasscodeActivity$3;

    invoke-direct {v9, v0, v1, v5}, Lorg/telegram/ui/PasscodeActivity$3;-><init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;Landroid/view/View;)V

    .line 528
    new-instance v10, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda36;

    invoke-direct {v10, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 534
    iput-object v9, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/high16 v10, 0x3f800000    # 1.0f

    .line 535
    invoke-static {v7, v4, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v5, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    new-instance v5, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    .line 538
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result v11

    if-eqz v11, :cond_1

    move v11, v4

    goto :goto_1

    :cond_1
    const/16 v11, 0x8

    :goto_1
    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 539
    iget-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    const/16 v11, 0xe6

    invoke-static {v7, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v5, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    iget v5, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v9, 0x0

    if-eqz v5, :cond_1c

    const/4 v11, 0x2

    if-eq v5, v8, :cond_2

    if-eq v5, v11, :cond_2

    goto/16 :goto_13

    .line 715
    :cond_2
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v5, :cond_4

    .line 716
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v5, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 718
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 719
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 720
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 721
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 722
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    .line 725
    iget v5, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v5, v8, :cond_3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PasscodeActivity;->isWalletScreen()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    if-nez v5, :cond_3

    .line 726
    sget v5, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 727
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_permissions:I

    sget v13, Lorg/telegram/messenger/R$string;->PasscodeSwitchToPassword:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v8, v5, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v9

    .line 730
    :goto_2
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v13, Lorg/telegram/ui/PasscodeActivity$5;

    invoke-direct {v13, v0, v3}, Lorg/telegram/ui/PasscodeActivity$5;-><init>(Lorg/telegram/ui/PasscodeActivity;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    invoke-virtual {v5, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 756
    :cond_4
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 758
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 759
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 760
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 761
    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v2, v5, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 763
    new-instance v13, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v13, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lorg/telegram/ui/PasscodeActivity;->lockImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 764
    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 765
    iget-object v13, v0, Lorg/telegram/ui/PasscodeActivity;->lockImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v14, Lorg/telegram/messenger/R$raw;->tsv_setup_intro:I

    const/16 v15, 0x78

    invoke-virtual {v13, v14, v15, v15}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 766
    iget-object v13, v0, Lorg/telegram/ui/PasscodeActivity;->lockImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v13, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 767
    iget-object v13, v0, Lorg/telegram/ui/PasscodeActivity;->lockImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 768
    iget-object v13, v0, Lorg/telegram/ui/PasscodeActivity;->lockImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v14

    if-nez v14, :cond_5

    sget-object v14, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v12, v14, Landroid/graphics/Point;->x:I

    iget v14, v14, Landroid/graphics/Point;->y:I

    if-ge v12, v14, :cond_5

    move v12, v4

    goto :goto_3

    :cond_5
    const/16 v12, 0x8

    :goto_3
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 769
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->lockImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v15, v15, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 771
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    .line 772
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 773
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const-string v14, "fonts/rmedium.ttf"

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 774
    iget v12, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v12, v8, :cond_b

    .line 776
    iget v12, v0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-nez v12, :cond_6

    .line 777
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v14, Lorg/telegram/messenger/R$string;->wallet_create_eth_pin_code_title:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    if-ne v12, v11, :cond_7

    .line 779
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v14, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_title:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 781
    :cond_7
    sget-object v12, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v12, :cond_9

    :cond_8
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v12, :cond_a

    invoke-virtual {v12}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_a

    .line 782
    :cond_9
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v14, Lorg/telegram/messenger/R$string;->EnterNewPasscode:I

    const-string v15, "EnterNewPasscode"

    invoke-static {v15, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 784
    :cond_a
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v14, Lorg/telegram/messenger/R$string;->CreatePasscode:I

    const-string v15, "CreatePasscode"

    invoke-static {v15, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 787
    :cond_b
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v14, Lorg/telegram/messenger/R$string;->EnterYourPasscode:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    :goto_4
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v14, 0x41900000    # 18.0f

    invoke-virtual {v12, v8, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 790
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 791
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x10

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v5, v12, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    new-instance v12, Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-direct {v12, v1}, Lorg/telegram/ui/Components/TextViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    .line 794
    new-instance v15, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda13;

    invoke-direct {v15, v1}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda13;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v15}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 802
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    sget v15, Lorg/telegram/messenger/R$anim;->alpha_in:I

    invoke-virtual {v12, v1, v15}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 803
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    sget v15, Lorg/telegram/messenger/R$anim;->alpha_out:I

    invoke-virtual {v12, v1, v15}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    .line 804
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    const/16 v20, 0x14

    const/16 v21, 0x8

    const/16 v22, 0x14

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v5, v12, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 806
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v15, 0x41600000    # 14.0f

    .line 807
    invoke-virtual {v12, v8, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 808
    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v7, 0x20

    .line 809
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v12, v6, v4, v7, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 810
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PasscodeActivity;->isPassword()Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x3

    goto :goto_5

    :cond_c
    move v6, v8

    :goto_5
    const/16 v7, 0x10

    or-int/2addr v6, v7

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 813
    iget v6, v0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne v6, v11, :cond_d

    .line 814
    new-instance v6, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda8;

    invoke-direct {v6, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 816
    :cond_d
    new-instance v6, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda6;

    invoke-direct {v6, v1}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 817
    :goto_6
    iget v6, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-eq v6, v11, :cond_f

    iget v6, v0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne v6, v11, :cond_e

    goto :goto_7

    :cond_e
    const/16 v6, 0x8

    goto :goto_8

    :cond_f
    :goto_7
    move v6, v4

    :goto_8
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 818
    sget v6, Lorg/telegram/messenger/R$string;->ForgotPasscode:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v20, -0x1

    .line 819
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x3c

    const/16 v11, 0x15

    const/16 v27, 0x38

    if-lt v6, v11, :cond_10

    move/from16 v21, v27

    goto :goto_9

    :cond_10
    move/from16 v21, v16

    :goto_9
    const/16 v22, 0x51

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x10

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v12, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 820
    invoke-static {v12}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 822
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    .line 823
    invoke-virtual {v6, v8, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 824
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 825
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->PasscodesDoNotMatchTryAgain:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    const/16 v12, 0xc

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v6, v4, v15, v4, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 827
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    invoke-static {v6, v4, v10, v4}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 828
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    const/16 v20, -0x2

    const/16 v21, -0x2

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v2, v6, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 830
    new-instance v6, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    .line 831
    sget v12, Lorg/telegram/messenger/R$string;->EnterPassword:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 833
    new-instance v6, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v12, 0x80081

    .line 834
    invoke-virtual {v6, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 835
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v8, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 836
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v6, v13}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 837
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 838
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 839
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setLines(I)V

    .line 840
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v13, 0x5

    if-eqz v9, :cond_11

    move v9, v13

    goto :goto_a

    :cond_11
    const/4 v9, 0x3

    :goto_a
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setGravity(I)V

    .line 841
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 842
    iget v6, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v6, v8, :cond_12

    .line 843
    iput v4, v0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    .line 844
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_b

    .line 846
    :cond_12
    iput v8, v0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    .line 847
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v9, 0x6

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 849
    :goto_b
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 850
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 851
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 852
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v9, 0x14

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 853
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v9, 0x3fc00000    # 1.5f

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 854
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 856
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    .line 857
    iget-object v9, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v9, v6, v6, v6, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 859
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v9, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda10;

    invoke-direct {v9, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 861
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 862
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 863
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 864
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v9, -0x2

    invoke-static {v4, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    .line 867
    sget v9, Lorg/telegram/messenger/R$drawable;->msg_message:I

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 868
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 869
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v9

    invoke-static {v9, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 870
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    iget v9, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v9, v8, :cond_13

    iget v9, v0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    if-nez v9, :cond_13

    move v9, v8

    goto :goto_c

    :cond_13
    move v9, v4

    :goto_c
    const v10, 0x3dcccccd    # 0.1f

    invoke-static {v7, v9, v10, v4}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 872
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 873
    iget-object v9, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v10, Lorg/telegram/ui/PasscodeActivity$6;

    invoke-direct {v10, v0, v7}, Lorg/telegram/ui/PasscodeActivity$6;-><init>(Lorg/telegram/ui/PasscodeActivity;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 895
    iget-object v9, v0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    new-instance v10, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda9;

    invoke-direct {v10, v0, v7}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/PasscodeActivity;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 904
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    const/high16 v19, 0x41c00000    # 24.0f

    const/high16 v20, 0x41c00000    # 24.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v24, 0x41600000    # 14.0f

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinearRelatively(FFIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 906
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v9, -0x2

    const/4 v10, -0x1

    invoke-static {v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 907
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x1

    const/16 v20, 0x20

    const/16 v22, 0x20

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 909
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v7, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda12;

    invoke-direct {v7, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 919
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v7, Lorg/telegram/ui/PasscodeActivity$7;

    invoke-direct {v7, v0}, Lorg/telegram/ui/PasscodeActivity$7;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 935
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v7, Lorg/telegram/ui/PasscodeActivity$8;

    invoke-direct {v7, v0}, Lorg/telegram/ui/PasscodeActivity$8;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 952
    new-instance v6, Lorg/telegram/ui/PasscodeActivity$9;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/PasscodeActivity$9;-><init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/16 v7, 0xa

    const/4 v9, 0x4

    .line 966
    invoke-virtual {v6, v9, v7}, Lorg/telegram/ui/CodeFieldContainer;->setNumbersCount(II)V

    .line 967
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v6, v6, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v7, v6

    move v10, v4

    :goto_d
    if-ge v10, v7, :cond_14

    aget-object v12, v6, v10

    .line 968
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result v13

    xor-int/2addr v13, v8

    invoke-virtual {v12, v13}, Lorg/telegram/ui/CodeNumberField;->setShowSoftInputOnFocusCompat(Z)V

    .line 969
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/high16 v13, 0x41c00000    # 24.0f

    .line 970
    invoke-virtual {v12, v8, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 971
    new-instance v13, Lorg/telegram/ui/PasscodeActivity$10;

    invoke-direct {v13, v0}, Lorg/telegram/ui/PasscodeActivity$10;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 986
    new-instance v13, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda11;

    invoke-direct {v13, v0, v12}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/PasscodeActivity;Lorg/telegram/ui/CodeNumberField;)V

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 991
    :cond_14
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v19, 0x1

    const/16 v20, 0x28

    const/16 v21, 0xa

    const/16 v22, 0x28

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v17, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x20

    const/16 v22, 0x0

    const/16 v23, 0x48

    .line 993
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 995
    iget v3, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v3, v8, :cond_15

    .line 996
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 999
    :cond_15
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    .line 1000
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v11, :cond_16

    .line 1001
    new-instance v5, Landroid/animation/StateListAnimator;

    invoke-direct {v5}, Landroid/animation/StateListAnimator;-><init>()V

    new-array v6, v8, [I

    const v7, 0x10100a7

    aput v7, v6, v4

    .line 1002
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    const/4 v10, 0x2

    new-array v12, v10, [F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v10, v13

    aput v10, v12, v4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    aput v10, v12, v8

    const-string v10, "translationZ"

    invoke-static {v7, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v12, 0xc8

    invoke-virtual {v7, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v6, v4, [I

    .line 1003
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    const/4 v12, 0x2

    new-array v13, v12, [F

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    aput v9, v13, v4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    aput v9, v13, v8

    invoke-static {v7, v10, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v9, 0xc8

    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 1004
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 1005
    iget-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/ui/PasscodeActivity$11;

    invoke-direct {v6, v0}, Lorg/telegram/ui/PasscodeActivity$11;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1013
    :cond_16
    iget-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 1014
    iget-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-lt v3, v11, :cond_17

    move/from16 v17, v27

    goto :goto_e

    :cond_17
    move/from16 v17, v16

    :goto_e
    if-lt v3, v11, :cond_18

    move/from16 v18, v27

    goto :goto_f

    :cond_18
    move/from16 v18, v16

    :goto_f
    const/16 v19, 0x55

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x18

    const/16 v23, 0x10

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1015
    iget-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v5, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda7;

    invoke-direct {v5, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1027
    new-instance v2, Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/TransformableLoginButtonView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    .line 1028
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setTransformType(I)V

    .line 1029
    iget-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setProgress(F)V

    .line 1030
    iget-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setColor(I)V

    .line 1031
    iget-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setDrawBackground(Z)V

    .line 1032
    iget-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget v5, Lorg/telegram/messenger/R$string;->Next:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1033
    iget-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    if-lt v3, v11, :cond_19

    move/from16 v6, v27

    goto :goto_10

    :cond_19
    move/from16 v6, v16

    :goto_10
    if-lt v3, v11, :cond_1a

    move/from16 v7, v27

    goto :goto_11

    :cond_1a
    move/from16 v7, v16

    :goto_11
    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1035
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-static {v2, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ge v3, v11, :cond_1b

    .line 1037
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1038
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v5, -0x1000000

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1039
    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v3, v1, v2, v4, v4}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 1040
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v2, v3

    .line 1043
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1045
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PasscodeActivity;->updateFields()V

    goto/16 :goto_13

    .line 544
    :cond_1c
    iget v3, v0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne v3, v8, :cond_1d

    .line 545
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_settings_pin_code_title:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 546
    :cond_1d
    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    if-eqz v3, :cond_1e

    .line 547
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lcom/iMe/fork/enums/LockedSection;->getNameResId()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 549
    :cond_1e
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->Passcode:I

    const-string v6, "Passcode"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 550
    :goto_12
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 551
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 552
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 553
    new-instance v5, Lorg/telegram/ui/PasscodeActivity$4;

    invoke-direct {v5, v0, v1, v8, v4}, Lorg/telegram/ui/PasscodeActivity$4;-><init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;IZ)V

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 559
    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 560
    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 561
    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 562
    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    iget-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PasscodeActivity$ListAdapter;-><init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 564
    iget-object v1, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda35;

    invoke-direct {v2, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1050
    :goto_13
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 1220
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    if-ne p1, p2, :cond_1

    array-length p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1221
    :cond_0
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-nez p1, :cond_1

    .line 1222
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateRows()V

    .line 1223
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    if-eqz p1, :cond_1

    .line 1224
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1712
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1714
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v11, 0x0

    aput-object v2, v5, v11

    const-class v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v12, 0x1

    aput-object v2, v5, v12

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    move/from16 v9, v20

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1715
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v3, v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1716
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v5, v3

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1718
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    move-object v13, v2

    move/from16 v20, v10

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1720
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1721
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1722
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1723
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1724
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1725
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int/2addr v5, v3

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1727
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1729
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v6, v11

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1731
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1732
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    move/from16 v10, v22

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1733
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1734
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v5, v3

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1736
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v4, v3, v11

    const-string v4, "textView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x0

    const/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v21, v22

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1737
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v5, v11

    const-string v6, "checkBox"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1738
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1740
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v21, v22

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1741
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v6, v5, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText7:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1742
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v11

    const-string v5, "valueTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    const/4 v15, 0x0

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1744
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v5, v11

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1745
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public hasForceLightStatusBar()Z
    .locals 1

    .line 1055
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1182
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1184
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/PasscodeActivity;->setCustomKeyboardVisible(ZZ)V

    .line 1185
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->lockImageView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p1, :cond_1

    .line 1186
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v2, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1188
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    if-eqz p1, :cond_2

    .line 1189
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 1190
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/CodeNumberField;->setShowSoftInputOnFocusCompat(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 4

    .line 448
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 450
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    const-string v3, "screen_type"

    .line 451
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 452
    :goto_0
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    .line 455
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateRows()V

    .line 456
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-nez v0, :cond_2

    .line 457
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_2
    return v1
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 464
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 465
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-nez v0, :cond_0

    .line 466
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 468
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1214
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    .line 1215
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAltFocusable(Landroid/app/Activity;I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1197
    invoke-super {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->onResume()V

    .line 1198
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 1199
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1201
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1202
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isWalletScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0xc8

    :goto_0
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1204
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 1206
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1207
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1208
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAltFocusable(Landroid/app/Activity;I)V

    :cond_3
    return-void
.end method

.method public onSuccessDeleteWallet()V
    .locals 3

    .line 271
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v1, v2, v0}, Lcom/iMe/ui/base/mvp/MvpFragment;->postViewActionDelayed(JLcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public onSuccessUnlockWallet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 294
    new-instance p2, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

    new-instance v0, Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Creation;

    sget-object v1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;

    invoke-direct {v0, v1}, Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Creation;-><init>(Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p2, p1, v1, v2, v0}, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;)V

    .line 295
    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->newInstanceForWalletPin(Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;)Lorg/telegram/ui/PasscodeActivity;

    move-result-object p1

    .line 294
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1270
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-eqz p1, :cond_0

    .line 1271
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->showKeyboard()V

    :cond_0
    return-void
.end method

.method public onViewReady()V
    .locals 2

    .line 310
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletEnterPasswordPresenter:Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->subscribeOnRxEvents(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onWalletCreateSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;)V
    .locals 1

    .line 220
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/PasscodeActivity;Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/PasscodeActivity;->animateSuccessAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWalletImportSuccess()V
    .locals 1

    .line 240
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWalletPinCodeChangeSuccess()V
    .locals 1

    .line 247
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWalletPinCodeError()V
    .locals 6

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    const-string v5, ""

    .line 258
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 261
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    return-void
.end method

.method provideWalletEnterPasswordPresenter()Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;
    .locals 1
    .annotation runtime Lmoxy/presenter/ProvidePresenter;
    .end annotation

    .line 154
    const-class v0, Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    return-object v0
.end method

.method provideWalletPinPresenter()Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;
    .locals 3
    .annotation runtime Lmoxy/presenter/ProvidePresenter;
    .end annotation

    .line 149
    const-class v0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    sget-object v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda33;->INSTANCE:Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda33;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    return-object v0
.end method

.method public shouldAskPinCode()Z
    .locals 2

    .line 266
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showDeleteWalletDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 3

    .line 330
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->walletEnterPasswordPresenter:Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    .line 332
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda14;

    invoke-direct {v2, v1}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda14;-><init>(Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;)V

    const/4 v1, 0x0

    .line 329
    invoke-static {v0, p1, v2, v1}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 335
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 336
    invoke-static {p1}, Lcom/iMe/utils/dialogs/DialogExtKt;->makeRedPositiveButton(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public showRestoreWalletScreen(Ljava/lang/String;)V
    .locals 2

    .line 317
    new-instance v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->newInstance(Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object p1

    .line 317
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method
