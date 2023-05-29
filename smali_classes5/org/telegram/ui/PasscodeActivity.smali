.class public Lorg/telegram/ui/PasscodeActivity;
.super Lcom/iMe/ui/base/JavaWalletAuthFragment;
.source "PasscodeActivity.java"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/create/password/CreateWalletPasswordView;
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

.field private postedHidePasscodesDoNotMatch:Z

.field private rowCount:I

.field private screenType:I

.field private sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

.field private titleTextView:Landroid/widget/TextView;

.field private type:I

.field private utyanRow:I

.field public walletCreatePasscodePresenter:Lcom/iMe/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;
    .annotation runtime Lmoxy/presenter/InjectPresenter;
    .end annotation
.end field

.field public walletCreatePinPresenter:Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;
    .annotation runtime Lmoxy/presenter/InjectPresenter;
    .end annotation
.end field

.field public walletEnterPasswordPresenter:Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;
    .annotation runtime Lmoxy/presenter/InjectPresenter;
    .end annotation
.end field

.field private walletPinScreenArgs:Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

.field private walletSeed:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$-AEq1b2wiWV9NW0X7lPOdGksG04(Lorg/telegram/ui/PasscodeActivity;Lorg/telegram/ui/Components/NumberPicker;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$10(Lorg/telegram/ui/Components/NumberPicker;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3er7x9aCk5-okJI8eS_KoyoDDcs(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$onPasscodeError$28()V

    return-void
.end method

.method public static synthetic $r8$lambda$5ek89rhBjY69VBeENR-94yYFG6c(Lorg/telegram/ui/PasscodeActivity;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$15(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$8K2ECds2z8rPpi4ehP2efjiXuz0(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$new$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$AiwrRXTxmMJawrMAell0tmo4Uo8(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$9(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BVXjnoVxkywLzgFBW3z3HBRNWms(Lorg/telegram/ui/PasscodeActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$11(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$E9sKpQCK5EDieEl0t53QZc5Fnzc(Lorg/telegram/ui/PasscodeActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PasscodeActivity;->lambda$setFloatingButtonVisible$21(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ew_XvB2QpY6adg2bEXJ5BqkNHLM(Lorg/telegram/ui/PasscodeActivity;Lorg/telegram/ui/CodeNumberField;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$18(Lorg/telegram/ui/CodeNumberField;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$FAwNoFzHTjq9HnVPVez6vt9O7gA(Lorg/telegram/ui/PasscodeActivity;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->lambda$updateFields$24(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$GW23SD0fvb-gWIXh3SHI7SbMs-A(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$processDone$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$IK7rhgoV5QlORrz9TzI8dLstyMM(Lorg/telegram/ui/PasscodeActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jk_Ffl8N2rTQTmn4pXhkKUdF9p0(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->lambda$goToBackUpTutorial$1(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LyTFMNU-s4XwRHNPHmjGawvVLRs(Lorg/telegram/ui/PasscodeActivity;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$16(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MxWfmpbiDJ1vsovD4tAvyf9HgGk(Lorg/telegram/ui/PasscodeActivity;Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PasscodeActivity;->lambda$onSuccessCreateWallet$2(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nj3Tahor62RWfOfpTdWDutgdv6A(Lorg/telegram/ui/PasscodeActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PasscodeActivity;->lambda$processDone$26(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$PLLrfWhE0UXxEx3yiO330lFBMGw(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->showKeyboard()V

    return-void
.end method

.method public static synthetic $r8$lambda$Qho4k5DhQDS-myQdbiJMwikeQek(Lorg/telegram/ui/CodeNumberField;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$animateSuccessAnimation$22(Lorg/telegram/ui/CodeNumberField;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WBsZCNMSdDzTLIQN-AXx_XLVoS0(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$onPasscodeError$29()V

    return-void
.end method

.method public static synthetic $r8$lambda$WiVFlxjV_IkdlskTarKTYLC31T4(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$onSuccessDeleteWallet$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$YiXaYs_OkDSw5_w1wl95Nai_J0M(Lorg/telegram/ui/PasscodeActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$8(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$beBf8qJg6ccwHbyHpuGPHVsSsA0(Lorg/telegram/ui/PasscodeActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PasscodeActivity;->lambda$setCustomKeyboardVisible$20(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dDuAFdbGzbKHDqJAzsCNFA6RYjI(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$14(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eXjuj3-EJIuRXp7pWpilYCY2Flg(Lorg/telegram/ui/PasscodeActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$17(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$edhJfZAmM7mA8h1tOTWWP3QJv34(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$processDone$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$ftlPOsJNfn9HOyGTq-b_jhZ27gE(Lorg/telegram/ui/PasscodeActivity;)Lorg/koin/core/parameter/ParametersHolder;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$provideWalletPinPresenter$0()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hC5TIURdwh1gRtc3GcPYn4JqapE(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$12(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mNblxw6VWk3rB1_1Sfu_7olJfnA(Lorg/telegram/ui/PasscodeActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PasscodeActivity;->lambda$showForgotPasswordOptionsDialog$5(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pCrtE6vwu5SY324bbiu78jIlTws(Lorg/telegram/ui/PasscodeActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->lambda$showForgotPasswordOptionsDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$q2ZQbV69jEccZCRm5URK11TfvlU(Lorg/telegram/ui/PasscodeActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$7(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$qSngLTAHffomJ41V57-px1xhkCw(Lorg/telegram/ui/PasscodeActivity;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PasscodeActivity;->lambda$animateSuccessAnimation$23(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rz_kUsKap30hfmXpkiVvwbC8CR4(Lorg/telegram/ui/PasscodeActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PasscodeActivity;->lambda$createView$19(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILcom/iMe/fork/enums/LockedSection;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(ILcom/iMe/fork/enums/LockedSection;)V
    .locals 1

    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILcom/iMe/fork/enums/LockedSection;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(ILcom/iMe/fork/enums/LockedSection;Landroid/os/Bundle;)V
    .locals 1

    .line 453
    invoke-direct {p0}, Lcom/iMe/ui/base/JavaWalletAuthFragment;-><init>()V

    .line 167
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$1;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->checkRunnable:Ljava/lang/Runnable;

    const-string v0, ""

    .line 176
    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletSeed:Ljava/lang/String;

    .line 177
    new-instance v0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

    invoke-direct {v0}, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletPinScreenArgs:Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

    const/4 v0, -0x1

    .line 178
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    const/4 v0, 0x0

    .line 421
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    .line 423
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    .line 445
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->hidePasscodesDoNotMatch:Ljava/lang/Runnable;

    .line 454
    iput p1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    .line 456
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    .line 457
    invoke-direct {p0, p2}, Lorg/telegram/ui/PasscodeActivity;->setCurrentLockedSection(Lcom/iMe/fork/enums/LockedSection;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateRetryTime()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/PasscodeActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 133
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->checkRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 133
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 133
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 133
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 133
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 133
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PasscodeActivity;ZZ)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->setFloatingButtonVisible(ZZ)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PasscodeActivity;)Z
    .locals 0

    .line 133
    iget-boolean p0, p0, Lorg/telegram/ui/PasscodeActivity;->postedHidePasscodesDoNotMatch:Z

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PasscodeActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 133
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->hidePasscodesDoNotMatch:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processDone()V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processNext()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;
    .locals 0

    .line 133
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PasscodeActivity;)Landroid/animation/Animator;
    .locals 0

    .line 133
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/PasscodeActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 133
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 133
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 133
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 133
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->captureRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 133
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 133
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->disablePasscodeRow:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 133
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;
    .locals 0

    .line 133
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 133
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->captureHeaderRow:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PasscodeActivity;)Z
    .locals 0

    .line 133
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 133
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->hintRow:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 133
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 133
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->captureDetailRow:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 133
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->utyanRow:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 133
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/PasscodeActivity;I)I
    .locals 0

    .line 133
    iput p1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 133
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/CodeFieldContainer;
    .locals 0

    .line 133
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateFields()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->showKeyboard()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/PasscodeActivity;)Z
    .locals 0

    .line 133
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result p0

    return p0
.end method

.method private animateSuccessAnimation(Ljava/lang/Runnable;)V
    .locals 8

    .line 1196
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1197
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1200
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v2

    const-wide/16 v4, 0x4b

    if-ge v0, v3, :cond_1

    .line 1201
    aget-object v1, v2, v0

    .line 1202
    new-instance v2, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2, v1}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/CodeNumberField;)V

    int-to-long v6, v0

    mul-long/2addr v6, v4

    invoke-virtual {v1, v2, v6, v7}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1204
    :cond_1
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/PasscodeActivity;Ljava/lang/Runnable;)V

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

    .line 199
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->determineOpenFragment(Lcom/iMe/fork/enums/LockedSection;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public static determineOpenFragment(Lcom/iMe/fork/enums/LockedSection;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 9

    .line 1189
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

    .line 1190
    :cond_1
    new-instance v0, Lorg/telegram/ui/PasscodeActivity;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILcom/iMe/fork/enums/LockedSection;)V

    return-object v0

    .line 1192
    :cond_2
    new-instance v0, Lorg/telegram/ui/ActionIntroActivity;

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/ActionIntroActivity;-><init>(ILcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/model/wallet/home/BannerSlide;Lcom/iMe/fork/enums/LockedSection;)V

    return-object v0
.end method

.method private isCustomKeyboardVisible()Z
    .locals 2

    .line 1370
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

    .line 1371
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
    .locals 3

    .line 1425
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-eq v2, v1, :cond_3

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    sget v0, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    if-eq v0, v1, :cond_3

    :cond_1
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-eq v0, v1, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method private isPinCode()Z
    .locals 3

    .line 1420
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-eqz v2, :cond_3

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    sget v0, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method private isWalletScreen()Z
    .locals 2

    .line 378
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

.method private static synthetic lambda$animateSuccessAnimation$22(Lorg/telegram/ui/CodeNumberField;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1202
    invoke-virtual {p0, v0}, Lorg/telegram/ui/CodeNumberField;->animateSuccessProgress(F)V

    return-void
.end method

.method private synthetic lambda$animateSuccessAnimation$23(Ljava/lang/Runnable;)V
    .locals 5

    .line 1205
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 1206
    invoke-virtual {v3, v4}, Lorg/telegram/ui/CodeNumberField;->animateSuccessProgress(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1208
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createView$10(Lorg/telegram/ui/Components/NumberPicker;ILandroid/content/DialogInterface;I)V
    .locals 1

    .line 669
    invoke-virtual {p1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result p1

    .line 670
    sget p3, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    const/4 p4, 0x0

    if-nez p1, :cond_0

    .line 672
    sput p4, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x3c

    .line 674
    sput p1, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/16 p1, 0x12c

    .line 676
    sput p1, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const/16 p1, 0xe10

    .line 678
    sput p1, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const/16 p1, 0x4650

    .line 680
    sput p1, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    .line 682
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 684
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz p1, :cond_5

    .line 685
    sget p2, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setTimeout(I)V

    .line 686
    sput p3, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    .line 687
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/LockedSectionsController;->saveConfig()V

    goto :goto_1

    .line 689
    :cond_5
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$createView$11(Landroid/view/View;I)V
    .locals 6

    .line 585
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 588
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->disablePasscodeRow:I

    if-ne p2, v0, :cond_1

    .line 589
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/messenger/R$string;->DisablePasscode:I

    .line 590
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->DisablePasscodeConfirmMessage:I

    .line 591
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 592
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->DisablePasscodeTurnOff:I

    .line 593
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 623
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 624
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 p2, -0x1

    .line 625
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 626
    :cond_1
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p2, v0, :cond_3

    .line 628
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne p1, v1, :cond_2

    .line 629
    invoke-static {}, Lorg/telegram/ui/PasscodeActivity;->newInstanceForWalletPinRestore()Lorg/telegram/ui/PasscodeActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    .line 631
    :cond_2
    new-instance p1, Lorg/telegram/ui/PasscodeActivity;

    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    invoke-direct {p1, v2, p2}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILcom/iMe/fork/enums/LockedSection;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    .line 632
    :cond_3
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I

    const/4 v3, 0x0

    if-ne p2, v0, :cond_b

    .line 633
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 636
    :cond_4
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 637
    sget v0, Lorg/telegram/messenger/R$string;->AutoLock:I

    const-string v4, "AutoLock"

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 638
    new-instance v0, Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 639
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    const/4 v4, 0x4

    .line 640
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 641
    iget-object v5, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getTimeout()I

    move-result v5

    goto :goto_0

    :cond_5
    sget v5, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    :goto_0
    if-nez v5, :cond_6

    .line 643
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_1

    :cond_6
    const/16 v3, 0x3c

    if-ne v5, v3, :cond_7

    .line 645
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_1

    :cond_7
    const/16 v2, 0x12c

    if-ne v5, v2, :cond_8

    .line 647
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_1

    :cond_8
    const/16 v1, 0xe10

    if-ne v5, v1, :cond_9

    const/4 v1, 0x3

    .line 649
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_1

    :cond_9
    const/16 v1, 0x4650

    if-ne v5, v1, :cond_a

    .line 651
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 653
    :cond_a
    :goto_1
    sget-object v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda30;->INSTANCE:Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda30;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setFormatter(Lorg/telegram/ui/Components/NumberPicker$Formatter;)V

    .line 667
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 668
    sget v1, Lorg/telegram/messenger/R$string;->Done:I

    const-string v2, "Done"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p2}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/PasscodeActivity;Lorg/telegram/ui/Components/NumberPicker;I)V

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 691
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 692
    :cond_b
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I

    if-ne p2, v0, :cond_10

    .line 694
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz p2, :cond_c

    .line 695
    invoke-virtual {p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->isUseFingerprint()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setUseFingerprint(Z)V

    .line 696
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/LockedSectionsController;->saveConfig()V

    goto :goto_2

    .line 697
    :cond_c
    iget p2, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne p2, v1, :cond_d

    .line 698
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getWalletFingerprintController()Lcom/iMe/fork/controller/WalletFingerprintController;

    move-result-object p2

    .line 699
    invoke-virtual {p2}, Lcom/iMe/fork/controller/WalletFingerprintController;->isWalletFingerprintUnlockEnabled()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lcom/iMe/fork/controller/WalletFingerprintController;->setWalletFingerprintUnlockEnabled(Z)V

    .line 700
    invoke-virtual {p2}, Lcom/iMe/fork/controller/WalletFingerprintController;->saveConfig()V

    goto :goto_2

    .line 702
    :cond_d
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->useFingerprint:Z

    xor-int/2addr p2, v2

    sput-boolean p2, Lorg/telegram/messenger/SharedConfig;->useFingerprint:Z

    .line 703
    :goto_2
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 705
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz p2, :cond_e

    .line 706
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->isUseFingerprint()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_3

    .line 707
    :cond_e
    iget p2, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne p2, v1, :cond_f

    .line 708
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getWalletFingerprintController()Lcom/iMe/fork/controller/WalletFingerprintController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/WalletFingerprintController;->isWalletFingerprintUnlockEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_3

    .line 710
    :cond_f
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->useFingerprint:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_3

    .line 711
    :cond_10
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureRow:I

    if-ne p2, v0, :cond_11

    .line 712
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    xor-int/2addr p2, v2

    sput-boolean p2, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    .line 713
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 714
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 715
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array v0, v2, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v3

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 716
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    if-nez p1, :cond_11

    .line 717
    sget p1, Lorg/telegram/messenger/R$string;->ScreenCaptureAlert:I

    const-string p2, "ScreenCaptureAlert"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    :cond_11
    :goto_3
    return-void
.end method

.method private static synthetic lambda$createView$12(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 807
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 808
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x1

    .line 809
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x2

    .line 810
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 811
    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private synthetic lambda$createView$13(Landroid/view/View;)V
    .locals 0

    .line 826
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->showForgotPasswordOptionsDialog()V

    return-void
.end method

.method private static synthetic lambda$createView$14(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 828
    invoke-static {p0}, Lorg/telegram/ui/Components/AlertsCreator;->createForgotPasscodeDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic lambda$createView$15(Landroid/view/View;Z)V
    .locals 0

    .line 875
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

.method private synthetic lambda$createView$16(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/View;)V
    .locals 3

    .line 920
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 922
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 923
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

    .line 924
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    .line 926
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

.method private synthetic lambda$createView$17(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 934
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 935
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processNext()V

    return p2

    :cond_0
    if-ne p1, p2, :cond_2

    .line 939
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne p1, p2, :cond_1

    .line 940
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->walletCreatePasscodePresenter:Lcom/iMe/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;

    iget-object p3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/iMe/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;->checkPasswordMatch(Ljava/lang/String;)V

    goto :goto_0

    .line 942
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processDone()V

    :goto_0
    return p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$18(Lorg/telegram/ui/CodeNumberField;Landroid/view/View;Z)V
    .locals 0

    .line 1015
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setEditText(Landroid/widget/EditText;)V

    .line 1016
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setDispatchBackWhenEmpty(Z)V

    return-void
.end method

.method private synthetic lambda$createView$19(Landroid/view/View;)V
    .locals 1

    .line 1044
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1045
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    if-nez p1, :cond_0

    .line 1046
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processNext()V

    goto :goto_0

    .line 1049
    :cond_0
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne p1, v0, :cond_1

    .line 1050
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->walletCreatePasscodePresenter:Lcom/iMe/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iMe/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;->checkPasswordMatch(Ljava/lang/String;)V

    goto :goto_0

    .line 1052
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processDone()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1055
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processDone()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$7(IZ)V
    .locals 0

    const/16 p2, 0x14

    .line 549
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->onShowKeyboardCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 550
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 551
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->onShowKeyboardCallback:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 595
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    const-string p2, ""

    if-eqz p1, :cond_0

    .line 596
    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeHash(Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_0
    sput-object p2, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    .line 600
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 601
    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setSectionLocked(Z)V

    goto :goto_1

    .line 603
    :cond_1
    sput-boolean p2, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    .line 605
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz p1, :cond_2

    .line 606
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/LockedSectionsController;->saveConfig()V

    goto :goto_2

    .line 608
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 610
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-nez p1, :cond_3

    .line 611
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->buildShortcuts()V

    .line 612
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v0, p2

    :goto_3
    if-ge v0, p1, :cond_5

    .line 614
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 615
    instance-of v2, v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v2, :cond_4

    .line 616
    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 617
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText7:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 621
    :cond_5
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 622
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private static synthetic lambda$createView$9(I)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    .line 655
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

    .line 657
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

    .line 659
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

    .line 661
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

    .line 663
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

.method private static synthetic lambda$goToBackUpTutorial$1(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 238
    new-instance v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;)V

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->newInstance(Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$6()V
    .locals 2

    const/4 v0, 0x0

    .line 446
    iput-boolean v0, p0, Lorg/telegram/ui/PasscodeActivity;->postedHidePasscodesDoNotMatch:Z

    .line 447
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    return-void
.end method

.method private synthetic lambda$onPasscodeError$28()V
    .locals 5

    .line 1578
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1579
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 1580
    invoke-virtual {v4, v1}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1583
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateError(F)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onPasscodeError$29()V
    .locals 3

    .line 1577
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    .line 1585
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x96

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x3e8

    .line 1577
    :goto_0
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$onSuccessCreateWallet$2(Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 3

    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment(Z)Z

    .line 252
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    .line 253
    instance-of v2, v1, Lorg/telegram/ui/PasscodeActivity;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/ui/PasscodeActivity;

    iget v1, v1, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 254
    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->closeLastFragment(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSuccessDeleteWallet$3()V
    .locals 3

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 290
    instance-of v2, v2, Lcom/iMe/ui/base/WalletAuthFragment;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 294
    invoke-static {}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->newInstance()Lcom/iMe/ui/wallet/common/WalletRootFragment;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_1

    .line 297
    :cond_2
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment(Z)Z

    :goto_1
    return-void
.end method

.method private synthetic lambda$processDone$25()V
    .locals 4

    .line 1449
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->hidePasscodesDoNotMatch:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 1450
    iput-boolean v0, p0, Lorg/telegram/ui/PasscodeActivity;->postedHidePasscodesDoNotMatch:Z

    return-void
.end method

.method private synthetic lambda$processDone$26(Z)V
    .locals 2

    .line 1504
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->buildShortcuts()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1506
    new-instance p1, Lorg/telegram/ui/PasscodeActivity;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILcom/iMe/fork/enums/LockedSection;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0

    .line 1508
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 1510
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$processDone$27()V
    .locals 3

    .line 1560
    new-instance v0, Lorg/telegram/ui/PasscodeActivity;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILcom/iMe/fork/enums/LockedSection;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method private synthetic lambda$provideWalletPinPresenter$0()Lorg/koin/core/parameter/ParametersHolder;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->walletPinScreenArgs:Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/koin/core/parameter/ParametersHolderKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$setCustomKeyboardVisible$20(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1115
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1116
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1117
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

    .line 1118
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$setFloatingButtonVisible$21(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1158
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1159
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    const/16 v1, 0x46

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 1160
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$showForgotPasswordOptionsDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 369
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->walletEnterPasswordPresenter:Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    invoke-virtual {p1, p2}, Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->onForgotPasscodeOptionSelected(I)V

    return-void
.end method

.method private synthetic lambda$showForgotPasswordOptionsDialog$5(Landroid/content/DialogInterface;)V
    .locals 0

    .line 374
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->showKeyboard()V

    return-void
.end method

.method private synthetic lambda$updateFields$24(ZZ)V
    .locals 0

    .line 1355
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->setFloatingButtonVisible(ZZ)V

    .line 1356
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->onShowKeyboardCallback:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static newInstanceForWalletPasscode(Ljava/lang/String;)Lorg/telegram/ui/PasscodeActivity;
    .locals 3

    .line 210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "screen_type"

    const/4 v2, 0x1

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "wallet_seed"

    .line 212
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance p0, Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILandroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstanceForWalletPin(Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;)Lorg/telegram/ui/PasscodeActivity;
    .locals 3

    .line 203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "screen_type"

    const/4 v2, 0x0

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "wallet_pin_args"

    .line 205
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 206
    new-instance p0, Lorg/telegram/ui/PasscodeActivity;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILandroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstanceForWalletPinRestore()Lorg/telegram/ui/PasscodeActivity;
    .locals 3

    .line 223
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "screen_type"

    const/4 v2, 0x3

    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    new-instance v1, Lorg/telegram/ui/PasscodeActivity;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILandroid/os/Bundle;)V

    return-object v1
.end method

.method public static newInstanceForWalletPinSettings()Lorg/telegram/ui/PasscodeActivity;
    .locals 3

    .line 217
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "screen_type"

    const/4 v2, 0x2

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    new-instance v1, Lorg/telegram/ui/PasscodeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILandroid/os/Bundle;)V

    return-object v1
.end method

.method private onPasscodeError()V
    .locals 5

    .line 1566
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1568
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1570
    :catch_0
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 1571
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 1572
    invoke-virtual {v4, v1}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1575
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateError(F)V

    .line 1577
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
    new-instance v2, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;FLjava/lang/Runnable;)V

    return-void
.end method

.method private processDone()V
    .locals 10

    .line 1430
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1431
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    return-void

    .line 1434
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

    .line 1435
    :goto_0
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v4, :cond_12

    .line 1436
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->firstPassword:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1437
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    .line 1438
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, v0

    move v2, v5

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    .line 1439
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1441
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1442
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1444
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1445
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    .line 1447
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->hidePasscodesDoNotMatch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1448
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1455
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

    .line 1458
    :goto_2
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    const/16 v3, 0x10

    if-eqz v1, :cond_8

    new-array v6, v3, [B

    .line 1459
    invoke-virtual {v1, v6}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeSalt([B)V

    goto :goto_3

    :cond_8
    new-array v1, v3, [B

    .line 1461
    sput-object v1, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    .line 1462
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

    .line 1463
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->firstPassword:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1464
    array-length v6, v1

    add-int/lit8 v6, v6, 0x20

    new-array v7, v6, [B

    .line 1465
    iget-object v8, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeSalt()[B

    move-result-object v8

    goto :goto_5

    :cond_a
    sget-object v8, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    :goto_5
    invoke-static {v8, v5, v7, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1466
    array-length v8, v1

    invoke-static {v1, v5, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1467
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

    .line 1469
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v1, :cond_c

    int-to-long v8, v6

    .line 1470
    invoke-static {v7, v5, v8, v9}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeHash(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    int-to-long v8, v6

    .line 1472
    invoke-static {v7, v5, v8, v9}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    .line 1474
    :goto_7
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v1, :cond_d

    .line 1475
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

    .line 1479
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1482
    :cond_d
    :goto_8
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-nez v1, :cond_e

    .line 1483
    sput-boolean v4, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    :cond_e
    if-eqz v1, :cond_f

    .line 1486
    iget v3, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    invoke-virtual {v1, v3}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeType(I)V

    goto :goto_9

    .line 1488
    :cond_f
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    sput v1, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    .line 1490
    :goto_9
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v1, :cond_10

    .line 1491
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/LockedSectionsController;->saveConfig()V

    goto :goto_a

    .line 1493
    :cond_10
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 1495
    :goto_a
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1496
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1497
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v1

    :goto_b
    if-ge v5, v3, :cond_11

    aget-object v4, v1, v5

    .line 1498
    invoke-virtual {v4}, Landroid/widget/EditText;->clearFocus()V

    .line 1499
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 1501
    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setEditText(Landroid/widget/EditText;)V

    .line 1503
    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/PasscodeActivity;Z)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/PasscodeActivity;->animateSuccessAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_12
    const/4 v6, 0x2

    if-ne v1, v6, :cond_1f

    .line 1513
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

    .line 1514
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

    .line 1515
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

    .line 1516
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateRetryTime()V

    .line 1518
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, v0

    move v2, v5

    :goto_d
    if-ge v2, v1, :cond_16

    aget-object v4, v0, v2

    .line 1519
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1521
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1522
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1523
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1525
    :cond_17
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    return-void

    .line 1528
    :cond_18
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v4, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/SharedConfig;->checkPasscode(Ljava/lang/String;ILcom/iMe/fork/enums/LockedSection;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1529
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    invoke-static {v0, v1}, Lorg/telegram/messenger/SharedConfig;->increaseBadPasscodeTries(ILcom/iMe/fork/enums/LockedSection;)V

    .line 1530
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1531
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, v0

    move v2, v5

    :goto_e
    if-ge v2, v1, :cond_19

    aget-object v4, v0, v2

    .line 1532
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1534
    :cond_19
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1535
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1537
    :cond_1a
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    return-void

    .line 1541
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_1c

    .line 1542
    invoke-virtual {v0, v5}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setBadPasscodeTries(I)V

    goto :goto_f

    .line 1544
    :cond_1c
    sput v5, Lorg/telegram/messenger/SharedConfig;->badPasscodeTries:I

    .line 1546
    :goto_f
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_1d

    .line 1547
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/LockedSectionsController;->saveConfig()V

    goto :goto_10

    .line 1549
    :cond_1d
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 1551
    :goto_10
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1552
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1553
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, v0

    :goto_11
    if-ge v5, v1, :cond_1e

    aget-object v3, v0, v5

    .line 1554
    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 1555
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 1557
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setEditText(Landroid/widget/EditText;)V

    .line 1559
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/PasscodeActivity;->animateSuccessAnimation(Ljava/lang/Runnable;)V

    :cond_1f
    :goto_12
    return-void
.end method

.method private processNext()V
    .locals 6

    .line 1376
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1377
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletCreatePinPresenter:Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    iget-object v2, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->onPinChanged(Ljava/lang/String;)V

    .line 1378
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletCreatePinPresenter:Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    sget-object v2, Lcom/iMe/model/common/ScreenStep;->CONFIRM_STEP:Lcom/iMe/model/common/ScreenStep;

    invoke-virtual {v0, v2}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->setCurrentScreenStep(Lcom/iMe/model/common/ScreenStep;)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 1380
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletCreatePasscodePresenter:Lcom/iMe/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;

    iget-object v2, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;->validatePassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1381
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    return-void

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 1385
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletEnterPasswordPresenter:Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->validatePassword(Ljava/lang/String;)V

    return-void

    .line 1388
    :cond_2
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    .line 1389
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    return-void

    .line 1393
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_6

    const/16 v2, 0x8

    .line 1394
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1398
    :cond_6
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne v0, v1, :cond_7

    .line 1399
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_confirm_eth_password_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    if-nez v0, :cond_8

    .line 1401
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_confirm_eth_pin_code_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1403
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ConfirmCreatePasscode:I

    const-string v3, "ConfirmCreatePasscode"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1405
    :goto_1
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne v0, v1, :cond_9

    .line 1406
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_confirm_eth_password_description:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    if-nez v0, :cond_a

    .line 1408
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_confirm_eth_pin_code_description:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1410
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    sget v2, Lorg/telegram/messenger/R$string;->PasscodeReinstallNotice:I

    const-string v3, "PasscodeReinstallNotice"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 1411
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->firstPassword:Ljava/lang/String;

    .line 1412
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v3, 0x80081

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 1414
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_c

    aget-object v5, v0, v4

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1415
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->showKeyboard()V

    .line 1416
    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    return-void
.end method

.method private setCurrentLockedSection(Lcom/iMe/fork/enums/LockedSection;)V
    .locals 1

    .line 350
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    .line 351
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

    .line 1098
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1099
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAltFocusable(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1101
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

    .line 1105
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1106
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1107
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

    .line 1109
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 1110
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

    .line 1112
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x96

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    if-eqz p1, :cond_7

    .line 1113
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    goto :goto_6

    :cond_7
    sget-object v0, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    :goto_6
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1114
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1120
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$12;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PasscodeActivity$12;-><init>(Lorg/telegram/ui/PasscodeActivity;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1135
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    :goto_7
    return-void
.end method

.method private setFloatingButtonVisible(ZZ)V
    .locals 4

    .line 1146
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1147
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 1148
    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonAnimator:Landroid/animation/Animator;

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez p2, :cond_4

    .line 1151
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

    .line 1152
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1153
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

    .line 1155
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x96

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    if-eqz p1, :cond_7

    .line 1156
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    goto :goto_5

    :cond_7
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    :goto_5
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1157
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1162
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$13;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PasscodeActivity$13;-><init>(Lorg/telegram/ui/PasscodeActivity;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1180
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 1181
    iput-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonAnimator:Landroid/animation/Animator;

    :goto_6
    return-void
.end method

.method private showForgotPasswordOptionsDialog()V
    .locals 6

    .line 359
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/CharSequence;

    .line 360
    sget v3, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_forgot_option_restore:I

    .line 362
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget v3, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_forgot_option_delete:I

    .line 363
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [I

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_wallet_restore:I

    aput v3, v1, v4

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    aput v3, v1, v5

    new-instance v3, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    .line 360
    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 371
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    .line 372
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 373
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 374
    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showKeyboard()V
    .locals 2

    .line 1308
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1310
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1311
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    goto :goto_0

    .line 1313
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPassword()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1314
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1315
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateFields()V
    .locals 6

    .line 1321
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1322
    sget v0, Lorg/telegram/messenger/R$string;->EnterYourPasscodeInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1323
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    if-nez v0, :cond_5

    .line 1325
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne v0, v2, :cond_1

    .line 1326
    sget v0, Lorg/telegram/messenger/R$string;->wallet_create_eth_password_description:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 1328
    sget v0, Lorg/telegram/messenger/R$string;->wallet_create_eth_pin_code_description:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 1330
    sget v0, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_description:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1332
    :cond_3
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-nez v0, :cond_4

    sget v0, Lorg/telegram/messenger/R$string;->CreatePasscodeInfoPIN:I

    goto :goto_0

    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->CreatePasscodeInfoPassword:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1333
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1335
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_2

    :cond_6
    move v3, v4

    .line 1336
    :goto_2
    iget v5, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v5, v1, :cond_7

    .line 1337
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$string;->EnterYourPasscodeInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_4

    .line 1338
    :cond_7
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    if-nez v1, :cond_a

    .line 1340
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isWalletScreen()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1341
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_4

    .line 1343
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-nez v1, :cond_9

    sget v1, Lorg/telegram/messenger/R$string;->CreatePasscodeInfoPIN:I

    goto :goto_3

    :cond_9
    sget v1, Lorg/telegram/messenger/R$string;->CreatePasscodeInfoPassword:I

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    .line 1345
    :cond_a
    :goto_4
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_b

    .line 1346
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-static {v0, v2, v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1347
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-static {v0, v4, v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    goto :goto_5

    .line 1348
    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPassword()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1349
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-static {v0, v4, v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1350
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-static {v0, v2, v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1352
    :cond_c
    :goto_5
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPassword()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-eq v0, v2, :cond_d

    goto :goto_6

    :cond_d
    move v2, v4

    :goto_6
    if-eqz v2, :cond_e

    .line 1354
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, v2, v3}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/PasscodeActivity;ZZ)V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->onShowKeyboardCallback:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    .line 1358
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_7

    .line 1360
    :cond_e
    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/PasscodeActivity;->setFloatingButtonVisible(ZZ)V

    .line 1362
    :goto_7
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result v0

    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/PasscodeActivity;->setCustomKeyboardVisible(ZZ)V

    .line 1363
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->showKeyboard()V

    return-void
.end method

.method private updateRetryTime()V
    .locals 5

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->checkRunnable:Ljava/lang/Runnable;

    const/4 v4, 0x0

    invoke-static {v4, v0, v1, v2, v3}, Lorg/telegram/ui/Components/PasscodeView;->checkRetryTextViewPublic(Lorg/telegram/ui/Components/PasscodeView;Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;Lcom/iMe/fork/enums/LockedSection;ILjava/lang/Runnable;)V

    return-void
.end method

.method private updateRows()V
    .locals 3

    const/4 v0, 0x0

    .line 1263
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 1264
    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->utyanRow:I

    add-int/lit8 v0, v1, 0x1

    .line 1265
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->hintRow:I

    add-int/lit8 v1, v0, 0x1

    .line 1266
    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I

    const/4 v0, -0x1

    .line 1268
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 1269
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;

    move-result-object v1

    .line 1270
    invoke-virtual {v1}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1271
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I

    goto :goto_0

    .line 1273
    :cond_0
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I

    goto :goto_0

    .line 1275
    :cond_1
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1277
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1280
    :goto_0
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1281
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->disablePasscodeRow:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureDetailRow:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureRow:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I

    return-void

    .line 1285
    :cond_2
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I

    add-int/lit8 v1, v2, 0x1

    .line 1286
    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I

    .line 1288
    iget-object v2, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    if-eqz v2, :cond_3

    .line 1289
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureDetailRow:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureRow:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureHeaderRow:I

    add-int/lit8 v0, v1, 0x1

    .line 1290
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->disablePasscodeRow:I

    return-void

    :cond_3
    add-int/lit8 v0, v1, 0x1

    .line 1294
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->captureHeaderRow:I

    add-int/lit8 v1, v0, 0x1

    .line 1295
    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureRow:I

    add-int/lit8 v0, v1, 0x1

    .line 1296
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->captureDetailRow:I

    add-int/lit8 v1, v0, 0x1

    .line 1297
    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->disablePasscodeRow:I

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 493
    invoke-super/range {p0 .. p1}, Lcom/iMe/ui/base/mvp/MvpFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 494
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 495
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 496
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/PasscodeActivity$2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/PasscodeActivity$2;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 506
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 507
    iget v5, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-nez v5, :cond_0

    move-object v5, v2

    goto :goto_0

    .line 510
    :cond_0
    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 511
    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v2, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    invoke-virtual {v5, v8}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 515
    :goto_0
    new-instance v9, Lorg/telegram/ui/PasscodeActivity$3;

    invoke-direct {v9, v0, v1, v5}, Lorg/telegram/ui/PasscodeActivity$3;-><init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;Landroid/view/View;)V

    .line 548
    new-instance v10, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda32;

    invoke-direct {v10, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 554
    iput-object v9, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/high16 v10, 0x3f800000    # 1.0f

    .line 555
    invoke-static {v7, v4, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v5, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    new-instance v5, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    .line 558
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result v11

    if-eqz v11, :cond_1

    move v11, v4

    goto :goto_1

    :cond_1
    const/16 v11, 0x8

    :goto_1
    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 559
    iget-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    const/16 v11, 0xe6

    invoke-static {v7, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v5, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    iget v5, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v11, 0x2

    if-eqz v5, :cond_1e

    if-eq v5, v8, :cond_2

    if-eq v5, v11, :cond_2

    goto/16 :goto_14

    .line 725
    :cond_2
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v5, :cond_4

    .line 726
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v5, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 728
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 729
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 730
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 731
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 732
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    .line 735
    iget v5, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v5, v8, :cond_3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PasscodeActivity;->isWalletScreen()Z

    move-result v5

    if-nez v5, :cond_3

    .line 736
    sget v5, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 737
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_permissions:I

    sget v13, Lorg/telegram/messenger/R$string;->PasscodeSwitchToPassword:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v8, v5, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 740
    :goto_2
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v13, Lorg/telegram/ui/PasscodeActivity$5;

    invoke-direct {v13, v0, v3}, Lorg/telegram/ui/PasscodeActivity$5;-><init>(Lorg/telegram/ui/PasscodeActivity;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    invoke-virtual {v5, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 766
    :cond_4
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 768
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 769
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 770
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 771
    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v2, v5, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    new-instance v13, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v13, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lorg/telegram/ui/PasscodeActivity;->lockImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 774
    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 775
    iget-object v13, v0, Lorg/telegram/ui/PasscodeActivity;->lockImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v14, Lorg/telegram/messenger/R$raw;->tsv_setup_intro:I

    const/16 v15, 0x78

    invoke-virtual {v13, v14, v15, v15}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 776
    iget-object v13, v0, Lorg/telegram/ui/PasscodeActivity;->lockImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v13, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 777
    iget-object v13, v0, Lorg/telegram/ui/PasscodeActivity;->lockImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 778
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

    .line 779
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->lockImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v15, v15, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 781
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    .line 782
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 783
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const-string v14, "fonts/rmedium.ttf"

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 784
    iget v12, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v14, 0x3

    if-ne v12, v8, :cond_c

    .line 786
    iget v12, v0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne v12, v8, :cond_6

    .line 787
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v15, Lorg/telegram/messenger/R$string;->wallet_create_eth_password_title:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    if-nez v12, :cond_7

    .line 789
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v15, Lorg/telegram/messenger/R$string;->wallet_create_eth_pin_code_title:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    if-ne v12, v14, :cond_8

    .line 791
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v15, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_title:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 793
    :cond_8
    sget-object v12, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_9

    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v12, :cond_a

    :cond_9
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_b

    .line 794
    :cond_a
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v15, Lorg/telegram/messenger/R$string;->EnterNewPasscode:I

    const-string v7, "EnterNewPasscode"

    invoke-static {v7, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 796
    :cond_b
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->CreatePasscode:I

    const-string v15, "CreatePasscode"

    invoke-static {v15, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 799
    :cond_c
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->EnterYourPasscode:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    :goto_4
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v12, 0x41900000    # 18.0f

    invoke-virtual {v7, v8, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 802
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 803
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const/16 v18, -0x2

    const/16 v19, -0x2

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x10

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v5, v7, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 805
    new-instance v7, Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-direct {v7, v1}, Lorg/telegram/ui/Components/TextViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    .line 806
    new-instance v15, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda13;

    invoke-direct {v15, v1}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda13;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v15}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 814
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    sget v15, Lorg/telegram/messenger/R$anim;->alpha_in:I

    invoke-virtual {v7, v1, v15}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 815
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    sget v15, Lorg/telegram/messenger/R$anim;->alpha_out:I

    invoke-virtual {v7, v1, v15}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    .line 816
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    const/16 v21, 0x14

    const/16 v22, 0x8

    const/16 v23, 0x14

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v5, v7, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v15, 0x41600000    # 14.0f

    .line 819
    invoke-virtual {v7, v8, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 820
    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v6, 0x20

    .line 821
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v7, v9, v4, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 822
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PasscodeActivity;->isPassword()Z

    move-result v6

    if-eqz v6, :cond_d

    move v6, v14

    goto :goto_5

    :cond_d
    move v6, v8

    :goto_5
    const/16 v9, 0x10

    or-int/2addr v6, v9

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 825
    iget v6, v0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne v6, v14, :cond_e

    .line 826
    new-instance v6, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda7;

    invoke-direct {v6, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 828
    :cond_e
    new-instance v6, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda6;

    invoke-direct {v6, v1}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 829
    :goto_6
    iget v6, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-eq v6, v11, :cond_10

    iget v6, v0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne v6, v14, :cond_f

    goto :goto_7

    :cond_f
    const/16 v6, 0x8

    goto :goto_8

    :cond_10
    :goto_7
    move v6, v4

    :goto_8
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 830
    sget v6, Lorg/telegram/messenger/R$string;->ForgotPasscode:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v20, -0x1

    .line 831
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x3c

    const/16 v14, 0x15

    const/16 v27, 0x38

    if-lt v6, v14, :cond_11

    move/from16 v21, v27

    goto :goto_9

    :cond_11
    move/from16 v21, v16

    :goto_9
    const/16 v22, 0x51

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x10

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 832
    invoke-static {v7}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 834
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    .line 835
    invoke-virtual {v6, v8, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 836
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 837
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->PasscodesDoNotMatchTryAgain:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    const/16 v7, 0xc

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v6, v4, v15, v4, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 839
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    invoke-static {v6, v4, v10, v4}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 840
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    const/16 v20, -0x2

    const/16 v21, -0x2

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    new-instance v6, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    .line 844
    iget v7, v0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne v7, v8, :cond_12

    .line 845
    sget v7, Lorg/telegram/messenger/R$string;->wallet_create_eth_password_validation_length_error:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    goto :goto_a

    .line 847
    :cond_12
    sget v7, Lorg/telegram/messenger/R$string;->EnterPassword:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 849
    :goto_a
    new-instance v6, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v7, 0x80081

    .line 850
    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 851
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v8, v12}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 852
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/widget/EditText;->setTextColor(I)V

    .line 853
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 854
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 855
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setLines(I)V

    .line 856
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v13, 0x5

    if-eqz v12, :cond_13

    move v12, v13

    goto :goto_b

    :cond_13
    const/4 v12, 0x3

    :goto_b
    invoke-virtual {v6, v12}, Landroid/widget/EditText;->setGravity(I)V

    .line 857
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 858
    iget v6, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v6, v8, :cond_14

    .line 859
    iput v4, v0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    .line 860
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_c

    .line 862
    :cond_14
    iput v8, v0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    .line 863
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v12, 0x6

    invoke-virtual {v6, v12}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 865
    :goto_c
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 866
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-object v12, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v12}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 867
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 868
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v12, 0x14

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 869
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v12, 0x3fc00000    # 1.5f

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 870
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 872
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    .line 873
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v7, v6, v6, v6, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 875
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v7, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda10;

    invoke-direct {v7, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 877
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 878
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 879
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 880
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v9, -0x2

    invoke-static {v4, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 882
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    .line 883
    sget v9, Lorg/telegram/messenger/R$drawable;->msg_message:I

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 884
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 885
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v9

    invoke-static {v9, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 886
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    iget v9, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v9, v8, :cond_15

    iget v9, v0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    if-nez v9, :cond_15

    move v9, v8

    goto :goto_d

    :cond_15
    move v9, v4

    :goto_d
    const v10, 0x3dcccccd    # 0.1f

    invoke-static {v7, v9, v10, v4}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 888
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 889
    iget-object v9, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v10, Lorg/telegram/ui/PasscodeActivity$6;

    invoke-direct {v10, v0, v7}, Lorg/telegram/ui/PasscodeActivity$6;-><init>(Lorg/telegram/ui/PasscodeActivity;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 919
    iget-object v9, v0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    new-instance v10, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda9;

    invoke-direct {v10, v0, v7}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/PasscodeActivity;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 928
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    const/high16 v20, 0x41c00000    # 24.0f

    const/high16 v21, 0x41c00000    # 24.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v25, 0x41600000    # 14.0f

    const/16 v26, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinearRelatively(FFIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 930
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v9, -0x2

    const/4 v10, -0x1

    invoke-static {v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 931
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x1

    const/16 v20, 0x20

    const/16 v21, 0x0

    const/16 v22, 0x20

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 933
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v7, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda12;

    invoke-direct {v7, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 947
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v7, Lorg/telegram/ui/PasscodeActivity$7;

    invoke-direct {v7, v0}, Lorg/telegram/ui/PasscodeActivity$7;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 963
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v7, Lorg/telegram/ui/PasscodeActivity$8;

    invoke-direct {v7, v0}, Lorg/telegram/ui/PasscodeActivity$8;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 980
    new-instance v6, Lorg/telegram/ui/PasscodeActivity$9;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/PasscodeActivity$9;-><init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/16 v7, 0xa

    const/4 v9, 0x4

    .line 994
    invoke-virtual {v6, v9, v7}, Lorg/telegram/ui/CodeFieldContainer;->setNumbersCount(II)V

    .line 995
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v6, v6, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v7, v6

    move v10, v4

    :goto_e
    if-ge v10, v7, :cond_16

    aget-object v12, v6, v10

    .line 996
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result v13

    xor-int/2addr v13, v8

    invoke-virtual {v12, v13}, Lorg/telegram/ui/CodeNumberField;->setShowSoftInputOnFocusCompat(Z)V

    .line 997
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/high16 v13, 0x41c00000    # 24.0f

    .line 998
    invoke-virtual {v12, v8, v13}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 999
    new-instance v13, Lorg/telegram/ui/PasscodeActivity$10;

    invoke-direct {v13, v0}, Lorg/telegram/ui/PasscodeActivity$10;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1014
    new-instance v13, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda11;

    invoke-direct {v13, v0, v12}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/PasscodeActivity;Lorg/telegram/ui/CodeNumberField;)V

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 1019
    :cond_16
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

    .line 1021
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1023
    iget v3, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v3, v8, :cond_17

    .line 1024
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1027
    :cond_17
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    .line 1028
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v14, :cond_18

    .line 1029
    new-instance v5, Landroid/animation/StateListAnimator;

    invoke-direct {v5}, Landroid/animation/StateListAnimator;-><init>()V

    new-array v6, v8, [I

    const v7, 0x10100a7

    aput v7, v6, v4

    .line 1030
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    new-array v10, v11, [F

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    aput v12, v10, v4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    aput v12, v10, v8

    const-string v12, "translationZ"

    invoke-static {v7, v12, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v14, 0xc8

    invoke-virtual {v7, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v6, v4, [I

    .line 1031
    iget-object v7, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    new-array v13, v11, [F

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    aput v9, v13, v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    aput v9, v13, v8

    invoke-static {v7, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v11, 0xc8

    invoke-virtual {v7, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 1032
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 1033
    iget-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/ui/PasscodeActivity$11;

    invoke-direct {v6, v0}, Lorg/telegram/ui/PasscodeActivity$11;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1041
    :cond_18
    iget-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 1042
    iget-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/16 v6, 0x15

    if-lt v3, v6, :cond_19

    move/from16 v17, v27

    goto :goto_f

    :cond_19
    move/from16 v17, v16

    :goto_f
    if-lt v3, v6, :cond_1a

    move/from16 v18, v27

    goto :goto_10

    :cond_1a
    move/from16 v18, v16

    :goto_10
    const/16 v19, 0x55

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x18

    const/16 v23, 0x10

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1043
    iget-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v5, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda8;

    invoke-direct {v5, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1059
    new-instance v2, Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/TransformableLoginButtonView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    .line 1060
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setTransformType(I)V

    .line 1061
    iget-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setProgress(F)V

    .line 1062
    iget-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setColor(I)V

    .line 1063
    iget-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setDrawBackground(Z)V

    .line 1064
    iget-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget v5, Lorg/telegram/messenger/R$string;->Next:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    const/16 v6, 0x15

    if-lt v3, v6, :cond_1b

    move/from16 v7, v27

    goto :goto_11

    :cond_1b
    move/from16 v7, v16

    :goto_11
    if-lt v3, v6, :cond_1c

    move/from16 v8, v27

    goto :goto_12

    :cond_1c
    move/from16 v8, v16

    :goto_12
    invoke-static {v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1067
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-static {v2, v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ge v3, v6, :cond_1d

    .line 1069
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1070
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v5, -0x1000000

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1071
    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v3, v1, v2, v4, v4}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 1072
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v2, v3

    .line 1075
    :cond_1d
    iget-object v1, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1077
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PasscodeActivity;->updateFields()V

    goto/16 :goto_14

    .line 564
    :cond_1e
    iget v3, v0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne v3, v11, :cond_1f

    .line 565
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_settings_pin_code_title:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 566
    :cond_1f
    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    if-eqz v3, :cond_20

    .line 567
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lcom/iMe/fork/enums/LockedSection;->getNameResId()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 569
    :cond_20
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->Passcode:I

    const-string v6, "Passcode"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 570
    :goto_13
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 571
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 572
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 573
    new-instance v5, Lorg/telegram/ui/PasscodeActivity$4;

    invoke-direct {v5, v0, v1, v8, v4}, Lorg/telegram/ui/PasscodeActivity$4;-><init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;IZ)V

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 579
    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 580
    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 581
    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 582
    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    iget-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PasscodeActivity$ListAdapter;-><init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 584
    iget-object v1, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda31;

    invoke-direct {v2, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1082
    :goto_14
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 1252
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

    .line 1253
    :cond_0
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-nez p1, :cond_1

    .line 1254
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateRows()V

    .line 1255
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    if-eqz p1, :cond_1

    .line 1256
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

    .line 1745
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1747
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

    .line 1748
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

    .line 1749
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

    .line 1751
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    move-object v13, v2

    move/from16 v20, v10

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1752
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1753
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1754
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1755
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1756
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1757
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1758
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int/2addr v5, v3

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1760
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1762
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

    .line 1764
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1765
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

    .line 1766
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1767
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v5, v3

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1769
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

    .line 1770
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

    .line 1771
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

    .line 1773
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

    .line 1774
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

    .line 1775
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

    .line 1777
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

    .line 1778
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

.method public goToBackUpTutorial(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;)V
    .locals 2

    .line 234
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

    .line 235
    new-instance v0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Backup;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda28;

    invoke-direct {v1, p1, p2, p3}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda28;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;)V

    invoke-direct {v0, v1}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Backup;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 236
    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->newInstance(Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;)Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    move-result-object p1

    const/4 p2, 0x1

    .line 235
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method public hasForceLightStatusBar()Z
    .locals 1

    .line 1087
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCodeErrorShake()V
    .locals 0

    .line 266
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1214
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1216
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/PasscodeActivity;->setCustomKeyboardVisible(ZZ)V

    .line 1217
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->lockImageView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p1, :cond_1

    .line 1218
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

    .line 1220
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    if-eqz p1, :cond_2

    .line 1221
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 1222
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

    .line 463
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, -0x1

    const-string v3, "screen_type"

    .line 466
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 467
    :goto_0
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "wallet_pin_args"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletPinScreenArgs:Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

    .line 472
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "wallet_seed"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletSeed:Ljava/lang/String;

    .line 475
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateRows()V

    .line 476
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-nez v0, :cond_3

    .line 477
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_3
    return v1
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 484
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 485
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-nez v0, :cond_0

    .line 486
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 488
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    return-void
.end method

.method public onPasswordMatch(Ljava/lang/String;)V
    .locals 3

    .line 271
    new-instance v0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->walletSeed:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, p1, v2, v1}, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->newInstanceForWalletPin(Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;)Lorg/telegram/ui/PasscodeActivity;

    move-result-object p1

    .line 271
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1246
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    .line 1247
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAltFocusable(Landroid/app/Activity;I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1229
    invoke-super {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->onResume()V

    .line 1230
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 1231
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1233
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1234
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isWalletScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0xc8

    :goto_0
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1236
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 1238
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1239
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1240
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAltFocusable(Landroid/app/Activity;I)V

    :cond_3
    return-void
.end method

.method public onSuccessCreateWallet()V
    .locals 2

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 250
    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/PasscodeActivity;Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccessDeleteWallet()V
    .locals 3

    .line 285
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v1, v2, v0}, Lcom/iMe/ui/base/mvp/MvpFragment;->postViewActionDelayed(JLcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public onSuccessUnlockWallet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 305
    new-instance v0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

    const-string v1, ""

    invoke-direct {v0, p1, p2, v1}, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->newInstanceForWalletPin(Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;)Lorg/telegram/ui/PasscodeActivity;

    move-result-object p1

    .line 305
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1302
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-eqz p1, :cond_0

    .line 1303
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->showKeyboard()V

    :cond_0
    return-void
.end method

.method public onViewReady()V
    .locals 2

    .line 314
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletEnterPasswordPresenter:Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->subscribeOnRxEvents(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletCreatePasscodePresenter:Lcom/iMe/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;->subscribeOnRxEvents(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method provideWalletEnterPasswordPresenter()Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;
    .locals 1
    .annotation runtime Lmoxy/presenter/ProvidePresenter;
    .end annotation

    .line 157
    const-class v0, Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    return-object v0
.end method

.method provideWalletPasswordPresenter()Lcom/iMe/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;
    .locals 1
    .annotation runtime Lmoxy/presenter/ProvidePresenter;
    .end annotation

    .line 147
    const-class v0, Lcom/iMe/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;

    return-object v0
.end method

.method provideWalletPinPresenter()Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;
    .locals 3
    .annotation runtime Lmoxy/presenter/ProvidePresenter;
    .end annotation

    .line 152
    const-class v0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    return-object v0
.end method

.method public shouldAskPinCode()Z
    .locals 2

    .line 280
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

    .line 336
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->walletEnterPasswordPresenter:Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    .line 338
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda14;

    invoke-direct {v2, v1}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda14;-><init>(Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;)V

    const/4 v1, 0x0

    .line 335
    invoke-static {v0, p1, v2, v1}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 341
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 342
    invoke-static {p1}, Lcom/iMe/utils/dialogs/DialogExtKt;->makeRedPositiveButton(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public showRestoreWalletScreen(Ljava/lang/String;)V
    .locals 2

    .line 323
    new-instance v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->newInstance(Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object p1

    .line 323
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method
