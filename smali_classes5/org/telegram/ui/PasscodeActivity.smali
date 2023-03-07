.class public Lorg/telegram/ui/PasscodeActivity;
.super Lcom/smedialink/ui/base/JavaWalletAuthFragment;
.source "PasscodeActivity.java"

# interfaces
.implements Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordView;
.implements Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView;
.implements Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;
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

.field private currentLockedSection:Lorg/fork/enums/LockedSection;

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

.field private sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

.field private titleTextView:Landroid/widget/TextView;

.field private type:I

.field private utyanRow:I

.field public walletCreatePasscodePresenter:Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;
    .annotation runtime Lmoxy/presenter/InjectPresenter;
    .end annotation
.end field

.field public walletCreatePinPresenter:Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;
    .annotation runtime Lmoxy/presenter/InjectPresenter;
    .end annotation
.end field

.field public walletEnterPasswordPresenter:Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;
    .annotation runtime Lmoxy/presenter/InjectPresenter;
    .end annotation
.end field

.field private walletPinScreenArgs:Lcom/smedialink/model/wallet/pin/WalletPinScreenArgs;

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

.method public static synthetic $r8$lambda$hbUUKqAKIsy5RNmtEAeOplXe55E(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->lambda$onSuccessDeleteWallet$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$mNblxw6VWk3rB1_1Sfu_7olJfnA(Lorg/telegram/ui/PasscodeActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PasscodeActivity;->lambda$showForgotPasswordOptionsDialog$5(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nF52hi3G5fBHH-U_mtxEwoYXU0k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->lambda$goToBackUpTutorial$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oTsUXyIvFeS4FYa0jEh5QqrAPc8(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateRetryTime()V

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

    .line 177
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILorg/fork/enums/LockedSection;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(ILorg/fork/enums/LockedSection;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILorg/fork/enums/LockedSection;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(ILorg/fork/enums/LockedSection;Landroid/os/Bundle;)V
    .locals 1

    .line 489
    invoke-direct {p0}, Lcom/smedialink/ui/base/JavaWalletAuthFragment;-><init>()V

    .line 168
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->checkRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lorg/fork/enums/LockedSection;

    .line 170
    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    const-string v0, ""

    .line 171
    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletSeed:Ljava/lang/String;

    .line 172
    new-instance v0, Lcom/smedialink/model/wallet/pin/WalletPinScreenArgs;

    invoke-direct {v0}, Lcom/smedialink/model/wallet/pin/WalletPinScreenArgs;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletPinScreenArgs:Lcom/smedialink/model/wallet/pin/WalletPinScreenArgs;

    const/4 v0, -0x1

    .line 173
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    const/4 v0, 0x0

    .line 457
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    .line 459
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    .line 481
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->hidePasscodesDoNotMatch:Ljava/lang/Runnable;

    .line 490
    iput p1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    .line 492
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    .line 493
    invoke-direct {p0, p2}, Lorg/telegram/ui/PasscodeActivity;->setCurrentLockedSection(Lorg/fork/enums/LockedSection;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PasscodeActivity;)Z
    .locals 0

    .line 134
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PasscodeActivity;ZZ)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->setFloatingButtonVisible(ZZ)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PasscodeActivity;)Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lorg/telegram/ui/PasscodeActivity;->postedHidePasscodesDoNotMatch:Z

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PasscodeActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->hidePasscodesDoNotMatch:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processDone()V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processNext()V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PasscodeActivity;)Landroid/animation/Animator;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/PasscodeActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/PasscodeActivity;I)I
    .locals 0

    .line 134
    iput p1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->captureRow:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->disablePasscodeRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PasscodeActivity;)Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->captureHeaderRow:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->hintRow:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->captureDetailRow:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->utyanRow:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/CodeFieldContainer;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateFields()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->showKeyboard()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/PasscodeActivity;)Z
    .locals 0

    .line 134
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    return p0
.end method

.method private animateSuccessAnimation(Ljava/lang/Runnable;)V
    .locals 8

    .line 1235
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1236
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1239
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v2

    const-wide/16 v4, 0x4b

    if-ge v0, v3, :cond_1

    .line 1240
    aget-object v1, v2, v0

    .line 1241
    new-instance v2, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda14;

    invoke-direct {v2, v1}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/CodeNumberField;)V

    int-to-long v6, v0

    mul-long v6, v6, v4

    invoke-virtual {v1, v2, v6, v7}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1243
    :cond_1
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/PasscodeActivity;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length p1, p1

    int-to-long v2, p1

    mul-long v2, v2, v4

    const-wide/16 v4, 0x15e

    add-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static determineOpenFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->determineOpenFragment(Lorg/fork/enums/LockedSection;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public static determineOpenFragment(Lorg/fork/enums/LockedSection;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 9

    .line 1228
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/fork/controller/LockedSectionsController;->getInstance(I)Lorg/fork/controller/LockedSectionsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lorg/fork/enums/LockedSection;)Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1229
    :cond_1
    new-instance v0, Lorg/telegram/ui/PasscodeActivity;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILorg/fork/enums/LockedSection;)V

    return-object v0

    .line 1231
    :cond_2
    new-instance v0, Lorg/telegram/ui/ActionIntroActivity;

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/ActionIntroActivity;-><init>(ILcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/home/BannerSlide;Lorg/fork/enums/LockedSection;)V

    return-object v0
.end method

.method private hasPassword()Z
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_2

    .line 362
    invoke-virtual {v0}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCustomKeyboardVisible()Z
    .locals 2

    .line 1409
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

    .line 1410
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

    .line 1464
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

    .line 1459
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

    .line 414
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

    .line 1241
    invoke-virtual {p0, v0}, Lorg/telegram/ui/CodeNumberField;->animateSuccessProgress(F)V

    return-void
.end method

.method private synthetic lambda$animateSuccessAnimation$23(Ljava/lang/Runnable;)V
    .locals 5

    .line 1244
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 1245
    invoke-virtual {v3, v4}, Lorg/telegram/ui/CodeNumberField;->animateSuccessProgress(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1247
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createView$10(Lorg/telegram/ui/Components/NumberPicker;ILandroid/content/DialogInterface;I)V
    .locals 1

    .line 708
    invoke-virtual {p1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result p1

    .line 710
    iget-object p3, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 711
    invoke-static {p1}, Lorg/fork/enums/AutoLockTime;->findById(I)Lorg/fork/enums/AutoLockTime;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setAutoLockIn(Lorg/fork/enums/AutoLockTime;)V

    .line 712
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lorg/fork/controller/LockedSectionsController;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lorg/fork/enums/LockedSection;

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    invoke-virtual {p1, p3, v0}, Lorg/fork/controller/LockedSectionsController;->setSectionsPasscodeData(Lorg/fork/enums/LockedSection;Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;)V

    .line 713
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lorg/fork/controller/LockedSectionsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/LockedSectionsController;->saveConfig()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 716
    sput p4, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    const/16 p1, 0x3c

    .line 718
    sput p1, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    goto :goto_0

    :cond_2
    const/4 p3, 0x2

    if-ne p1, p3, :cond_3

    const/16 p1, 0x12c

    .line 720
    sput p1, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    goto :goto_0

    :cond_3
    const/4 p3, 0x3

    if-ne p1, p3, :cond_4

    const/16 p1, 0xe10

    .line 722
    sput p1, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    goto :goto_0

    :cond_4
    const/4 p3, 0x4

    if-ne p1, p3, :cond_5

    const/16 p1, 0x4650

    .line 724
    sput p1, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    .line 726
    :cond_5
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 727
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    return-void
.end method

.method private synthetic lambda$createView$11(Landroid/view/View;I)V
    .locals 6

    .line 615
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 618
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->disablePasscodeRow:I

    if-ne p2, v0, :cond_1

    .line 619
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/messenger/R$string;->DisablePasscode:I

    .line 620
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->DisablePasscodeConfirmMessage:I

    .line 621
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 622
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->DisablePasscodeTurnOff:I

    .line 623
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 659
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 660
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 p2, -0x1

    .line 661
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "dialogTextRed"

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 662
    :cond_1
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p2, v0, :cond_3

    .line 664
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne p1, v1, :cond_2

    .line 665
    invoke-static {}, Lorg/telegram/ui/PasscodeActivity;->newInstanceForWalletPinRestore()Lorg/telegram/ui/PasscodeActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_2

    .line 667
    :cond_2
    new-instance p1, Lorg/telegram/ui/PasscodeActivity;

    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lorg/fork/enums/LockedSection;

    invoke-direct {p1, v2, p2}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILorg/fork/enums/LockedSection;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_2

    .line 668
    :cond_3
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I

    const/4 v3, 0x0

    if-ne p2, v0, :cond_b

    .line 669
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 672
    :cond_4
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 673
    sget v0, Lorg/telegram/messenger/R$string;->AutoLock:I

    const-string v4, "AutoLock"

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 674
    new-instance v0, Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 675
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    const/4 v4, 0x4

    .line 676
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 678
    iget-object v5, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v5, :cond_5

    .line 679
    invoke-virtual {v5}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getAutoLockIn()Lorg/fork/enums/AutoLockTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/enums/AutoLockTime;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 681
    :cond_5
    sget v5, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    if-nez v5, :cond_6

    .line 682
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0

    :cond_6
    const/16 v3, 0x3c

    if-ne v5, v3, :cond_7

    .line 684
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0

    :cond_7
    const/16 v2, 0x12c

    if-ne v5, v2, :cond_8

    .line 686
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0

    :cond_8
    const/16 v1, 0xe10

    if-ne v5, v1, :cond_9

    const/4 v1, 0x3

    .line 688
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0

    :cond_9
    const/16 v1, 0x4650

    if-ne v5, v1, :cond_a

    .line 690
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 692
    :cond_a
    :goto_0
    sget-object v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda31;->INSTANCE:Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda31;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setFormatter(Lorg/telegram/ui/Components/NumberPicker$Formatter;)V

    .line 706
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 707
    sget v1, Lorg/telegram/messenger/R$string;->Done:I

    const-string v2, "Done"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p2}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/PasscodeActivity;Lorg/telegram/ui/Components/NumberPicker;I)V

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 729
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 730
    :cond_b
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I

    if-ne p2, v0, :cond_10

    .line 732
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz p2, :cond_c

    .line 733
    invoke-virtual {p2}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getUseFingerprint()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setUseFingerprint(Z)V

    .line 734
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lorg/fork/controller/LockedSectionsController;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lorg/fork/enums/LockedSection;

    iget-object v2, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    invoke-virtual {p2, v0, v2}, Lorg/fork/controller/LockedSectionsController;->setSectionsPasscodeData(Lorg/fork/enums/LockedSection;Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;)V

    .line 735
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lorg/fork/controller/LockedSectionsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/LockedSectionsController;->saveConfig()V

    goto :goto_1

    .line 736
    :cond_c
    iget p2, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne p2, v1, :cond_d

    .line 737
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getWalletFingerprintController()Lorg/fork/controller/WalletFingerprintController;

    move-result-object p2

    .line 738
    invoke-virtual {p2}, Lorg/fork/controller/WalletFingerprintController;->isWalletFingerprintUnlockEnabled()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lorg/fork/controller/WalletFingerprintController;->setWalletFingerprintUnlockEnabled(Z)V

    .line 739
    invoke-virtual {p2}, Lorg/fork/controller/WalletFingerprintController;->saveConfig()V

    goto :goto_1

    .line 741
    :cond_d
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->useFingerprint:Z

    xor-int/2addr p2, v2

    sput-boolean p2, Lorg/telegram/messenger/SharedConfig;->useFingerprint:Z

    .line 742
    :goto_1
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 744
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz p2, :cond_e

    .line 745
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getUseFingerprint()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_2

    .line 746
    :cond_e
    iget p2, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne p2, v1, :cond_f

    .line 747
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getWalletFingerprintController()Lorg/fork/controller/WalletFingerprintController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/WalletFingerprintController;->isWalletFingerprintUnlockEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_2

    .line 749
    :cond_f
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->useFingerprint:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_2

    .line 750
    :cond_10
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureRow:I

    if-ne p2, v0, :cond_11

    .line 751
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    xor-int/2addr p2, v2

    sput-boolean p2, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    .line 752
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 753
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 754
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array v0, v2, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v3

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 755
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    if-nez p1, :cond_11

    .line 756
    sget p1, Lorg/telegram/messenger/R$string;->ScreenCaptureAlert:I

    const-string p2, "ScreenCaptureAlert"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    :cond_11
    :goto_2
    return-void
.end method

.method private static synthetic lambda$createView$12(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 846
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string p0, "windowBackgroundWhiteGrayText6"

    .line 847
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x1

    .line 848
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x2

    .line 849
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 850
    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private synthetic lambda$createView$13(Landroid/view/View;)V
    .locals 0

    .line 865
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->showForgotPasswordOptionsDialog()V

    return-void
.end method

.method private static synthetic lambda$createView$14(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 867
    invoke-static {p0}, Lorg/telegram/ui/Components/AlertsCreator;->createForgotPasscodeDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic lambda$createView$15(Landroid/view/View;Z)V
    .locals 0

    .line 914
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

    .line 959
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 961
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 962
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

    .line 963
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    .line 965
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "windowBackgroundWhiteInputFieldActivated"

    goto :goto_1

    :cond_1
    const-string p1, "windowBackgroundWhiteHintText"

    :goto_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method private synthetic lambda$createView$17(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 973
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 974
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processNext()V

    return p2

    :cond_0
    if-ne p1, p2, :cond_2

    .line 978
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne p1, p2, :cond_1

    .line 979
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->walletCreatePasscodePresenter:Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;

    iget-object p3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;->checkPasswordMatch(Ljava/lang/String;)V

    goto :goto_0

    .line 981
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

    .line 1054
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setEditText(Landroid/widget/EditText;)V

    .line 1055
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setDispatchBackWhenEmpty(Z)V

    return-void
.end method

.method private synthetic lambda$createView$19(Landroid/view/View;)V
    .locals 1

    .line 1083
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1084
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    if-nez p1, :cond_0

    .line 1085
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processNext()V

    goto :goto_0

    .line 1088
    :cond_0
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne p1, v0, :cond_1

    .line 1089
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->walletCreatePasscodePresenter:Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;->checkPasswordMatch(Ljava/lang/String;)V

    goto :goto_0

    .line 1091
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processDone()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1094
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processDone()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$7(IZ)V
    .locals 0

    const/16 p2, 0x14

    .line 585
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->onShowKeyboardCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 586
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 587
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->onShowKeyboardCallback:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 625
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    const-string p2, "windowBackgroundWhiteGrayText7"

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 626
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    invoke-virtual {p1, v0}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeHash(Ljava/lang/String;)V

    .line 627
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    invoke-virtual {p1, v1}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setSectionLocked(Z)V

    .line 628
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 630
    iget-object v2, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 631
    instance-of v3, v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v3, :cond_0

    .line 632
    check-cast v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 633
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lorg/fork/controller/LockedSectionsController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lorg/fork/enums/LockedSection;

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    invoke-virtual {p1, p2, v0}, Lorg/fork/controller/LockedSectionsController;->setSectionsPasscodeData(Lorg/fork/enums/LockedSection;Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;)V

    .line 638
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lorg/fork/controller/LockedSectionsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/LockedSectionsController;->saveConfig()V

    .line 639
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 640
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 644
    :cond_2
    sput-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    .line 645
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    .line 646
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 647
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->buildShortcuts()V

    .line 648
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_4

    .line 650
    iget-object v2, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 651
    instance-of v3, v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v3, :cond_3

    .line 652
    check-cast v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 653
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 657
    :cond_4
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 658
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private static synthetic lambda$createView$9(I)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    .line 694
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

    .line 696
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

    .line 698
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

    .line 700
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

    .line 702
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

.method private static synthetic lambda$goToBackUpTutorial$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 7

    .line 233
    new-instance v6, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    const-string v0, " "

    .line 235
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, ""

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 233
    invoke-static {v6}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->newInstance(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$6()V
    .locals 2

    const/4 v0, 0x0

    .line 482
    iput-boolean v0, p0, Lorg/telegram/ui/PasscodeActivity;->postedHidePasscodesDoNotMatch:Z

    .line 483
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    return-void
.end method

.method private synthetic lambda$onPasscodeError$28()V
    .locals 5

    .line 1617
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 1619
    invoke-virtual {v4, v1}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1622
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateError(F)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onPasscodeError$29()V
    .locals 3

    .line 1616
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    .line 1624
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x96

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x3e8

    .line 1616
    :goto_0
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$onSuccessCreateWallet$2(Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 3

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment(Z)V

    .line 253
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    .line 254
    instance-of v2, v1, Lorg/telegram/ui/PasscodeActivity;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/ui/PasscodeActivity;

    iget v1, v1, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 255
    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->closeLastFragment(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSuccessDeleteWallet$3()V
    .locals 3

    .line 290
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

    .line 291
    instance-of v2, v2, Lcom/smedialink/ui/base/WalletAuthFragment;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 295
    invoke-static {}, Lcom/smedialink/ui/wallet/common/WalletRootFragment;->newInstance()Lcom/smedialink/ui/wallet/common/WalletRootFragment;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_1

    .line 298
    :cond_2
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment(Z)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$processDone$25()V
    .locals 4

    .line 1488
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->hidePasscodesDoNotMatch:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 1489
    iput-boolean v0, p0, Lorg/telegram/ui/PasscodeActivity;->postedHidePasscodesDoNotMatch:Z

    return-void
.end method

.method private synthetic lambda$processDone$26(Z)V
    .locals 2

    .line 1536
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->buildShortcuts()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1538
    new-instance p1, Lorg/telegram/ui/PasscodeActivity;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lorg/fork/enums/LockedSection;

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILorg/fork/enums/LockedSection;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0

    .line 1540
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 1542
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

    .line 1599
    new-instance v0, Lorg/telegram/ui/PasscodeActivity;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lorg/fork/enums/LockedSection;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILorg/fork/enums/LockedSection;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method private synthetic lambda$provideWalletPinPresenter$0()Lorg/koin/core/parameter/ParametersHolder;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->walletPinScreenArgs:Lcom/smedialink/model/wallet/pin/WalletPinScreenArgs;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/koin/core/parameter/ParametersHolderKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$setCustomKeyboardVisible$20(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1154
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1155
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1156
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/16 p1, 0xe6

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    mul-float v1, v1, p1

    const/high16 p1, 0x3f400000    # 0.75f

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1157
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$setFloatingButtonVisible$21(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1197
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1198
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    const/16 v1, 0x46

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 1199
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$showForgotPasswordOptionsDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 405
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->walletEnterPasswordPresenter:Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    invoke-virtual {p1, p2}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->onForgotPasscodeOptionSelected(I)V

    return-void
.end method

.method private synthetic lambda$showForgotPasswordOptionsDialog$5(Landroid/content/DialogInterface;)V
    .locals 0

    .line 410
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->showKeyboard()V

    return-void
.end method

.method private synthetic lambda$updateFields$24(ZZ)V
    .locals 0

    .line 1394
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity;->setFloatingButtonVisible(ZZ)V

    .line 1395
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->onShowKeyboardCallback:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static newInstanceForWalletPasscode(Ljava/lang/String;)Lorg/telegram/ui/PasscodeActivity;
    .locals 3

    .line 205
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "screen_type"

    const/4 v2, 0x1

    .line 206
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "wallet_seed"

    .line 207
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance p0, Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILandroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstanceForWalletPin(Lcom/smedialink/model/wallet/pin/WalletPinScreenArgs;)Lorg/telegram/ui/PasscodeActivity;
    .locals 3

    .line 198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "screen_type"

    const/4 v2, 0x0

    .line 199
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "wallet_pin_args"

    .line 200
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 201
    new-instance p0, Lorg/telegram/ui/PasscodeActivity;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILandroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstanceForWalletPinRestore()Lorg/telegram/ui/PasscodeActivity;
    .locals 3

    .line 218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "screen_type"

    const/4 v2, 0x3

    .line 219
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    new-instance v1, Lorg/telegram/ui/PasscodeActivity;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILandroid/os/Bundle;)V

    return-object v1
.end method

.method public static newInstanceForWalletPinSettings()Lorg/telegram/ui/PasscodeActivity;
    .locals 3

    .line 212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "screen_type"

    const/4 v2, 0x2

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    new-instance v1, Lorg/telegram/ui/PasscodeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/PasscodeActivity;-><init>(ILandroid/os/Bundle;)V

    return-object v1
.end method

.method private onPasscodeError()V
    .locals 5

    .line 1605
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1607
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1609
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 1610
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 1611
    invoke-virtual {v4, v1}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1614
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateError(F)V

    .line 1616
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v1, 0x41200000    # 10.0f

    goto :goto_3

    :cond_4
    const/high16 v1, 0x40800000    # 4.0f

    :goto_3
    new-instance v2, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;FLjava/lang/Runnable;)V

    return-void
.end method

.method private processDone()V
    .locals 10

    .line 1469
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1470
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    return-void

    .line 1473
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

    .line 1474
    :goto_0
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v4, :cond_d

    .line 1475
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->firstPassword:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1476
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    .line 1477
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    .line 1478
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1480
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1481
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1483
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1484
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    .line 1486
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->hidePasscodesDoNotMatch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1487
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1494
    :cond_4
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 1496
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v1, :cond_8

    .line 1497
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lorg/fork/controller/LockedSectionsController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    iget-object v6, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lorg/fork/enums/LockedSection;

    iget-object v7, p0, Lorg/telegram/ui/PasscodeActivity;->firstPassword:Ljava/lang/String;

    invoke-virtual {v1, v3, v6, v7}, Lorg/fork/controller/LockedSectionsController;->createPasscodeSalt(Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;Lorg/fork/enums/LockedSection;Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lorg/fork/controller/LockedSectionsController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lorg/fork/enums/LockedSection;

    invoke-virtual {v1, v3}, Lorg/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lorg/fork/enums/LockedSection;)Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    goto :goto_3

    :cond_8
    const/16 v1, 0x10

    :try_start_0
    new-array v3, v1, [B

    .line 1501
    sput-object v3, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    .line 1502
    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    sget-object v6, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    invoke-virtual {v3, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1503
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->firstPassword:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1504
    array-length v6, v3

    add-int/lit8 v6, v6, 0x20

    new-array v7, v6, [B

    .line 1505
    sget-object v8, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    invoke-static {v8, v5, v7, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1506
    array-length v8, v3

    invoke-static {v3, v5, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1507
    sget-object v8, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    array-length v3, v3

    add-int/2addr v3, v1

    invoke-static {v8, v5, v7, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v8, v6

    .line 1508
    invoke-static {v7, v5, v8, v9}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 1510
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1513
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v1, :cond_9

    .line 1514
    iget v3, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    invoke-static {v3}, Lorg/fork/enums/PasscodeType;->findById(I)Lorg/fork/enums/PasscodeType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeType(Lorg/fork/enums/PasscodeType;)V

    .line 1515
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    invoke-virtual {v1, v4}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setSectionLocked(Z)V

    .line 1516
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lorg/fork/controller/LockedSectionsController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lorg/fork/enums/LockedSection;

    iget-object v4, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    invoke-virtual {v1, v3, v4}, Lorg/fork/controller/LockedSectionsController;->setSectionsPasscodeData(Lorg/fork/enums/LockedSection;Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;)V

    .line 1517
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lorg/fork/controller/LockedSectionsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/LockedSectionsController;->saveConfig()V

    goto :goto_4

    .line 1519
    :cond_9
    sput-boolean v4, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    .line 1521
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-nez v1, :cond_a

    .line 1522
    iget v3, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    sput v3, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    :cond_a
    if-nez v1, :cond_b

    .line 1525
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 1527
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1528
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1529
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v1

    :goto_5
    if-ge v5, v3, :cond_c

    aget-object v4, v1, v5

    .line 1530
    invoke-virtual {v4}, Landroid/widget/EditText;->clearFocus()V

    .line 1531
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1533
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setEditText(Landroid/widget/EditText;)V

    .line 1535
    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/PasscodeActivity;Z)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/PasscodeActivity;->animateSuccessAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_b

    :cond_d
    const/4 v6, 0x2

    if-ne v1, v6, :cond_1e

    .line 1545
    sget-wide v6, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_e

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v1, :cond_f

    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeRetryInMs()J

    move-result-wide v6

    cmp-long v1, v6, v8

    if-lez v1, :cond_13

    .line 1546
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_10

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeRetryInMs()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-double v0, v0

    goto :goto_6

    :cond_10
    sget-wide v0, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    long-to-double v0, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v6

    :goto_6
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1547
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

    .line 1548
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->checkRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1550
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v4, v0, v2

    .line 1551
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1553
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1554
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1555
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1557
    :cond_12
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    return-void

    .line 1560
    :cond_13
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->checkPasscode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lorg/fork/enums/LockedSection;

    if-eqz v1, :cond_15

    :cond_14
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lorg/fork/enums/LockedSection;

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lorg/fork/controller/LockedSectionsController;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lorg/fork/enums/LockedSection;

    invoke-virtual {v1, v4, v0}, Lorg/fork/controller/LockedSectionsController;->checkSectionPasscode(Lorg/fork/enums/LockedSection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1562
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lorg/fork/enums/LockedSection;

    if-eqz v0, :cond_16

    .line 1563
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lorg/fork/controller/LockedSectionsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lorg/fork/enums/LockedSection;

    invoke-virtual {v0, v1}, Lorg/fork/controller/LockedSectionsController;->increaseBadPasscodeTries(Lorg/fork/enums/LockedSection;)V

    .line 1564
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lorg/fork/controller/LockedSectionsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lorg/fork/enums/LockedSection;

    invoke-virtual {v0, v1}, Lorg/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lorg/fork/enums/LockedSection;)Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    goto :goto_8

    .line 1566
    :cond_16
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->increaseBadPasscodeTries()V

    .line 1567
    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1568
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    aget-object v4, v0, v2

    .line 1569
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1571
    :cond_17
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1572
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1574
    :cond_18
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    return-void

    .line 1578
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_1a

    .line 1579
    invoke-virtual {v0, v5}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setBadPasscodeTries(I)V

    .line 1580
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lorg/fork/controller/LockedSectionsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lorg/fork/enums/LockedSection;

    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    invoke-virtual {v0, v1, v3}, Lorg/fork/controller/LockedSectionsController;->setSectionsPasscodeData(Lorg/fork/enums/LockedSection;Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;)V

    .line 1584
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-nez v0, :cond_1b

    .line 1585
    sput v5, Lorg/telegram/messenger/SharedConfig;->badPasscodeTries:I

    :cond_1b
    if-nez v0, :cond_1c

    .line 1588
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 1590
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1591
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1592
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, v0

    :goto_a
    if-ge v5, v1, :cond_1d

    aget-object v3, v0, v5

    .line 1593
    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 1594
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 1596
    :cond_1d
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setEditText(Landroid/widget/EditText;)V

    .line 1598
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/PasscodeActivity;->animateSuccessAnimation(Ljava/lang/Runnable;)V

    :cond_1e
    :goto_b
    return-void
.end method

.method private processNext()V
    .locals 6

    .line 1415
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1416
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletCreatePinPresenter:Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    iget-object v2, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->onPinChanged(Ljava/lang/String;)V

    .line 1417
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletCreatePinPresenter:Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    sget-object v2, Lcom/smedialink/model/common/ScreenStep;->CONFIRM_STEP:Lcom/smedialink/model/common/ScreenStep;

    invoke-virtual {v0, v2}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->setCurrentScreenStep(Lcom/smedialink/model/common/ScreenStep;)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 1419
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletCreatePasscodePresenter:Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;

    iget-object v2, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;->validatePassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1420
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    return-void

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 1424
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletEnterPasswordPresenter:Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->validatePassword(Ljava/lang/String;)V

    return-void

    .line 1427
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

    .line 1428
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    return-void

    .line 1432
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_6

    const/16 v2, 0x8

    .line 1433
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1437
    :cond_6
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne v0, v1, :cond_7

    .line 1438
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_confirm_eth_password_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    if-nez v0, :cond_8

    .line 1440
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_confirm_eth_pin_code_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1442
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ConfirmCreatePasscode:I

    const-string v3, "ConfirmCreatePasscode"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1444
    :goto_1
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne v0, v1, :cond_9

    .line 1445
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_confirm_eth_password_description:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    if-nez v0, :cond_a

    .line 1447
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_confirm_eth_pin_code_description:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1449
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    sget v2, Lorg/telegram/messenger/R$string;->PasscodeReinstallNotice:I

    const-string v3, "PasscodeReinstallNotice"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 1450
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

    .line 1451
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1452
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v3, 0x80081

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 1453
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

    .line 1454
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->showKeyboard()V

    .line 1455
    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    return-void
.end method

.method private setCurrentLockedSection(Lorg/fork/enums/LockedSection;)V
    .locals 1

    .line 351
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lorg/fork/enums/LockedSection;

    .line 352
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lorg/fork/controller/LockedSectionsController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lorg/fork/enums/LockedSection;

    invoke-virtual {p1, v0}, Lorg/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lorg/fork/enums/LockedSection;)Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    return-void
.end method

.method private setCustomKeyboardVisible(ZZ)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1137
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1138
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAltFocusable(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1140
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

    .line 1144
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1145
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1146
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

    .line 1148
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 1149
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_7

    :cond_4
    const/4 p2, 0x2

    new-array p2, p2, [F

    if-eqz p1, :cond_5

    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_4
    aput v3, p2, v0

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    aput v1, p2, v0

    .line 1151
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x96

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    if-eqz p1, :cond_7

    .line 1152
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    goto :goto_6

    :cond_7
    sget-object v0, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    :goto_6
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1153
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1159
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$11;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PasscodeActivity$11;-><init>(Lorg/telegram/ui/PasscodeActivity;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1174
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    :goto_7
    return-void
.end method

.method private setFloatingButtonVisible(ZZ)V
    .locals 4

    .line 1185
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1186
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 1187
    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonAnimator:Landroid/animation/Animator;

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez p2, :cond_4

    .line 1190
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x46

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    :goto_0
    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 1191
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1192
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

    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_3
    aput v3, p2, v0

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    aput v1, p2, v0

    .line 1194
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x96

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    if-eqz p1, :cond_7

    .line 1195
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    goto :goto_5

    :cond_7
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    :goto_5
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1196
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1201
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$12;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PasscodeActivity$12;-><init>(Lorg/telegram/ui/PasscodeActivity;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1219
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 1220
    iput-object p2, p0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonAnimator:Landroid/animation/Animator;

    :goto_6
    return-void
.end method

.method private showForgotPasswordOptionsDialog()V
    .locals 6

    .line 395
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/CharSequence;

    .line 396
    sget v3, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_forgot_option_restore:I

    .line 398
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget v3, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_forgot_option_delete:I

    .line 399
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [I

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_eth_wallet_restore:I

    aput v3, v1, v4

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    aput v3, v1, v5

    new-instance v3, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    .line 396
    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 407
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 409
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 410
    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showKeyboard()V
    .locals 2

    .line 1347
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1348
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1349
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1350
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    goto :goto_0

    .line 1352
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPassword()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1353
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1354
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateFields()V
    .locals 6

    .line 1360
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1361
    sget v0, Lorg/telegram/messenger/R$string;->EnterYourPasscodeInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1362
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    if-nez v0, :cond_5

    .line 1364
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne v0, v2, :cond_1

    .line 1365
    sget v0, Lorg/telegram/messenger/R$string;->wallet_create_eth_password_description:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 1367
    sget v0, Lorg/telegram/messenger/R$string;->wallet_create_eth_pin_code_description:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 1369
    sget v0, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_description:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1371
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

    .line 1372
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1374
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

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    .line 1375
    :goto_2
    iget v5, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v5, v1, :cond_7

    .line 1376
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$string;->EnterYourPasscodeInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_4

    .line 1377
    :cond_7
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    if-nez v1, :cond_a

    .line 1379
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isWalletScreen()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1380
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_4

    .line 1382
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

    .line 1384
    :cond_a
    :goto_4
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPinCode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_b

    .line 1385
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-static {v0, v2, v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1386
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-static {v0, v4, v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    goto :goto_5

    .line 1387
    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPassword()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1388
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-static {v0, v4, v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1389
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-static {v0, v2, v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1391
    :cond_c
    :goto_5
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isPassword()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-eq v0, v2, :cond_d

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_e

    .line 1393
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, v2, v3}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/PasscodeActivity;ZZ)V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->onShowKeyboardCallback:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    .line 1397
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_7

    .line 1399
    :cond_e
    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/PasscodeActivity;->setFloatingButtonVisible(ZZ)V

    .line 1401
    :goto_7
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result v0

    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/PasscodeActivity;->setCustomKeyboardVisible(ZZ)V

    .line 1402
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->showKeyboard()V

    return-void
.end method

.method private updateRetryTime()V
    .locals 9

    .line 366
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 367
    iget-object v2, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    .line 368
    invoke-virtual {v2}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getLastUptimeMillis()J

    move-result-wide v5

    cmp-long v2, v0, v5

    if-lez v2, :cond_0

    .line 369
    iget-object v2, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    invoke-virtual {v2, v0, v1}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->reducePasscodeRetryTime(J)V

    .line 370
    iget-object v2, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    invoke-virtual {v2}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeRetryInMs()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-gez v2, :cond_0

    .line 371
    iget-object v2, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    invoke-virtual {v2, v3, v4}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeRetryInMs(J)V

    .line 374
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    invoke-virtual {v2, v0, v1}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setLastUptimeMillis(J)V

    .line 375
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lorg/fork/controller/LockedSectionsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lorg/fork/enums/LockedSection;

    iget-object v2, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    invoke-virtual {v0, v1, v2}, Lorg/fork/controller/LockedSectionsController;->setSectionsPasscodeData(Lorg/fork/enums/LockedSection;Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;)V

    goto :goto_0

    .line 377
    :cond_1
    sget-wide v5, Lorg/telegram/messenger/SharedConfig;->lastUptimeMillis:J

    cmp-long v2, v0, v5

    if-lez v2, :cond_2

    .line 378
    sget-wide v5, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    sget-wide v7, Lorg/telegram/messenger/SharedConfig;->lastUptimeMillis:J

    sub-long v7, v0, v7

    sub-long/2addr v5, v7

    sput-wide v5, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    cmp-long v2, v5, v3

    if-gez v2, :cond_2

    .line 380
    sput-wide v3, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    .line 383
    :cond_2
    sput-wide v0, Lorg/telegram/messenger/SharedConfig;->lastUptimeMillis:J

    .line 384
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 386
    :goto_0
    sget-wide v0, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    cmp-long v2, v0, v3

    if-lez v2, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->sectionPasscodeData:Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeRetryInMs()J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-lez v2, :cond_5

    .line 387
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->checkRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 390
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->checkRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private updateRows()V
    .locals 3

    const/4 v0, 0x0

    .line 1302
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 1303
    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->utyanRow:I

    add-int/lit8 v0, v1, 0x1

    .line 1304
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->hintRow:I

    add-int/lit8 v1, v0, 0x1

    .line 1305
    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I

    const/4 v0, -0x1

    .line 1307
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 1308
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;

    move-result-object v1

    .line 1309
    invoke-virtual {v1}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1310
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I

    goto :goto_0

    .line 1312
    :cond_0
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I

    goto :goto_0

    .line 1314
    :cond_1
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1316
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1319
    :goto_0
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1320
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->disablePasscodeRow:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureDetailRow:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureRow:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I

    return-void

    .line 1324
    :cond_2
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I

    add-int/lit8 v1, v2, 0x1

    .line 1325
    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I

    .line 1327
    iget-object v2, p0, Lorg/telegram/ui/PasscodeActivity;->currentLockedSection:Lorg/fork/enums/LockedSection;

    if-eqz v2, :cond_3

    .line 1328
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureDetailRow:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureRow:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureHeaderRow:I

    add-int/lit8 v0, v1, 0x1

    .line 1329
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->disablePasscodeRow:I

    return-void

    :cond_3
    add-int/lit8 v0, v1, 0x1

    .line 1333
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->captureHeaderRow:I

    add-int/lit8 v1, v0, 0x1

    .line 1334
    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureRow:I

    add-int/lit8 v0, v1, 0x1

    .line 1335
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->captureDetailRow:I

    add-int/lit8 v1, v0, 0x1

    .line 1336
    iput v1, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->disablePasscodeRow:I

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 529
    invoke-super/range {p0 .. p1}, Lcom/smedialink/ui/base/mvp/MvpFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 530
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 531
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 532
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/PasscodeActivity$1;

    invoke-direct {v5, v0}, Lorg/telegram/ui/PasscodeActivity$1;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 542
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 543
    iget v5, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-nez v5, :cond_0

    move-object v5, v2

    goto :goto_0

    .line 546
    :cond_0
    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 547
    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v2, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    invoke-virtual {v5, v8}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 551
    :goto_0
    new-instance v9, Lorg/telegram/ui/PasscodeActivity$2;

    invoke-direct {v9, v0, v1, v5}, Lorg/telegram/ui/PasscodeActivity$2;-><init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;Landroid/view/View;)V

    .line 584
    new-instance v10, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda33;

    invoke-direct {v10, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 590
    iput-object v9, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/high16 v10, 0x3f800000    # 1.0f

    .line 591
    invoke-static {v7, v4, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v5, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    new-instance v5, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    .line 594
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    const/16 v11, 0x8

    :goto_1
    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 595
    iget-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    const/16 v11, 0xe6

    invoke-static {v7, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v5, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 597
    iget v5, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v11, 0x2

    if-eqz v5, :cond_1c

    if-eq v5, v8, :cond_2

    if-eq v5, v11, :cond_2

    goto/16 :goto_14

    .line 764
    :cond_2
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v13, "windowBackgroundWhite"

    const-string v14, "windowBackgroundWhiteBlackText"

    if-eqz v5, :cond_4

    .line 765
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v5, v15}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 767
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 768
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 769
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v5, "actionBarWhiteSelector"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 770
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 771
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    .line 774
    iget v5, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v5, v8, :cond_3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PasscodeActivity;->isWalletScreen()Z

    move-result v5

    if-nez v5, :cond_3

    .line 775
    sget v5, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 776
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_permissions:I

    sget v15, Lorg/telegram/messenger/R$string;->PasscodeSwitchToPassword:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v8, v5, v15}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 779
    :goto_2
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v15, Lorg/telegram/ui/PasscodeActivity$4;

    invoke-direct {v15, v0, v3}, Lorg/telegram/ui/PasscodeActivity$4;-><init>(Lorg/telegram/ui/PasscodeActivity;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    invoke-virtual {v5, v15}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 805
    :cond_4
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 807
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 808
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 809
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 810
    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v2, v5, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    new-instance v15, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v15, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lorg/telegram/ui/PasscodeActivity;->lockImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 813
    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 814
    iget-object v15, v0, Lorg/telegram/ui/PasscodeActivity;->lockImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v12, Lorg/telegram/messenger/R$raw;->tsv_setup_intro:I

    const/16 v7, 0x78

    invoke-virtual {v15, v12, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 815
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->lockImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v12, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 816
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->lockImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 817
    iget-object v12, v0, Lorg/telegram/ui/PasscodeActivity;->lockImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v15

    if-nez v15, :cond_5

    sget-object v15, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v15, Landroid/graphics/Point;->x:I

    iget v15, v15, Landroid/graphics/Point;->y:I

    if-ge v6, v15, :cond_5

    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    const/16 v6, 0x8

    :goto_3
    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 818
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->lockImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v7, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 820
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    .line 821
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 822
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const-string v7, "fonts/rmedium.ttf"

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 823
    iget v6, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v7, 0x3

    if-ne v6, v8, :cond_a

    .line 825
    iget v6, v0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne v6, v8, :cond_6

    .line 826
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->wallet_create_eth_password_title:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    if-nez v6, :cond_7

    .line 828
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->wallet_create_eth_pin_code_title:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    if-ne v6, v7, :cond_8

    .line 830
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_title:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 832
    :cond_8
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PasscodeActivity;->hasPassword()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 833
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->EnterNewPasscode:I

    const-string v15, "EnterNewPasscode"

    invoke-static {v15, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 835
    :cond_9
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->CreatePasscode:I

    const-string v15, "CreatePasscode"

    invoke-static {v15, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 838
    :cond_a
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->EnterYourPasscode:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    :goto_4
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v12, 0x41900000    # 18.0f

    invoke-virtual {v6, v8, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 841
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 842
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x10

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v5, v6, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 844
    new-instance v6, Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/TextViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    .line 845
    new-instance v15, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda13;

    invoke-direct {v15, v1}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda13;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v15}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 853
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    sget v15, Lorg/telegram/messenger/R$anim;->alpha_in:I

    invoke-virtual {v6, v1, v15}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 854
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    sget v15, Lorg/telegram/messenger/R$anim;->alpha_out:I

    invoke-virtual {v6, v1, v15}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    .line 855
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->descriptionTextSwitcher:Lorg/telegram/ui/Components/TextViewSwitcher;

    const/16 v22, 0x14

    const/16 v23, 0x8

    const/16 v24, 0x14

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v5, v6, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v15, 0x41600000    # 14.0f

    .line 858
    invoke-virtual {v6, v8, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v19, "featuredStickers_addButton"

    .line 859
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v9, 0x20

    .line 860
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v6, v12, v4, v9, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 861
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PasscodeActivity;->isPassword()Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v9, 0x3

    goto :goto_5

    :cond_b
    const/4 v9, 0x1

    :goto_5
    const/16 v12, 0x10

    or-int/2addr v9, v12

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 864
    iget v9, v0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne v9, v7, :cond_c

    .line 865
    new-instance v9, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda7;

    invoke-direct {v9, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 867
    :cond_c
    new-instance v9, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda6;

    invoke-direct {v9, v1}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 868
    :goto_6
    iget v9, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-eq v9, v11, :cond_e

    iget v9, v0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne v9, v7, :cond_d

    goto :goto_7

    :cond_d
    const/16 v9, 0x8

    goto :goto_8

    :cond_e
    :goto_7
    const/4 v9, 0x0

    :goto_8
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 869
    sget v9, Lorg/telegram/messenger/R$string;->ForgotPasscode:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v21, -0x1

    .line 870
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x3c

    const/16 v7, 0x15

    const/16 v28, 0x38

    if-lt v9, v7, :cond_f

    const/16 v22, 0x38

    goto :goto_9

    :cond_f
    const/16 v22, 0x3c

    :goto_9
    const/16 v23, 0x51

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x10

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    invoke-static {v6}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 873
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    .line 874
    invoke-virtual {v6, v8, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 875
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    const-string v9, "windowBackgroundWhiteGrayText6"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 876
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$string;->PasscodesDoNotMatchTryAgain:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 877
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    const/16 v9, 0xc

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v6, v4, v15, v4, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 878
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    invoke-static {v6, v4, v10, v4}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 879
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passcodesDoNotMatchTextView:Landroid/widget/TextView;

    const/16 v21, -0x2

    const/16 v22, -0x2

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 881
    new-instance v6, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    .line 883
    iget v9, v0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne v9, v8, :cond_10

    .line 884
    sget v9, Lorg/telegram/messenger/R$string;->wallet_create_eth_password_validation_length_error:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    goto :goto_a

    .line 886
    :cond_10
    sget v9, Lorg/telegram/messenger/R$string;->EnterPassword:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 888
    :goto_a
    new-instance v6, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v9, 0x80081

    .line 889
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 890
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v9, 0x41900000    # 18.0f

    invoke-virtual {v6, v8, v9}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 891
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setTextColor(I)V

    .line 892
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 893
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 894
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setLines(I)V

    .line 895
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_11

    const/4 v9, 0x5

    goto :goto_b

    :cond_11
    const/4 v9, 0x3

    :goto_b
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setGravity(I)V

    .line 896
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 897
    iget v6, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v6, v8, :cond_12

    .line 898
    iput v4, v0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    .line 899
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_c

    .line 901
    :cond_12
    iput v8, v0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    .line 902
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v9, 0x6

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 904
    :goto_c
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 905
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 906
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v9, "windowBackgroundWhiteInputFieldActivated"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 907
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v9, 0x14

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 908
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v9, 0x3fc00000    # 1.5f

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 909
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v9, 0x80081

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 911
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    .line 912
    iget-object v9, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v9, v6, v6, v6, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 914
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v9, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda10;

    invoke-direct {v9, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 916
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 917
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 918
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 919
    iget-object v9, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v12, -0x2

    invoke-static {v4, v12, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 921
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    .line 922
    sget v10, Lorg/telegram/messenger/R$drawable;->msg_message:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 923
    iget-object v9, v0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    const-string v10, "windowBackgroundWhiteHintText"

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 924
    iget-object v9, v0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    const-string v10, "listSelectorSDK21"

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 925
    iget-object v9, v0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    iget v10, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v10, v8, :cond_13

    iget v10, v0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    if-nez v10, :cond_13

    const/4 v10, 0x1

    goto :goto_d

    :cond_13
    const/4 v10, 0x0

    :goto_d
    const v12, 0x3dcccccd    # 0.1f

    invoke-static {v9, v10, v12, v4}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 927
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v9, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 928
    iget-object v10, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v12, Lorg/telegram/ui/PasscodeActivity$5;

    invoke-direct {v12, v0, v9}, Lorg/telegram/ui/PasscodeActivity$5;-><init>(Lorg/telegram/ui/PasscodeActivity;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v10, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 958
    iget-object v10, v0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    new-instance v12, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda9;

    invoke-direct {v12, v0, v9}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/PasscodeActivity;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 967
    iget-object v9, v0, Lorg/telegram/ui/PasscodeActivity;->passwordButton:Landroid/widget/ImageView;

    const/high16 v19, 0x41c00000    # 24.0f

    const/high16 v20, 0x41c00000    # 24.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v24, 0x41600000    # 14.0f

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinearRelatively(FFIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 969
    iget-object v9, v0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v10, -0x2

    const/4 v12, -0x1

    invoke-static {v12, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 970
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->outlinePasswordView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x1

    const/16 v20, 0x20

    const/16 v22, 0x20

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v9, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda12;

    invoke-direct {v9, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 986
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v9, Lorg/telegram/ui/PasscodeActivity$6;

    invoke-direct {v9, v0}, Lorg/telegram/ui/PasscodeActivity$6;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1002
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v9, Lorg/telegram/ui/PasscodeActivity$7;

    invoke-direct {v9, v0}, Lorg/telegram/ui/PasscodeActivity$7;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 1019
    new-instance v6, Lorg/telegram/ui/PasscodeActivity$8;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/PasscodeActivity$8;-><init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/16 v9, 0xa

    const/4 v10, 0x4

    .line 1033
    invoke-virtual {v6, v10, v9}, Lorg/telegram/ui/CodeFieldContainer;->setNumbersCount(II)V

    .line 1034
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v6, v6, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v9, v6

    const/4 v12, 0x0

    :goto_e
    if-ge v12, v9, :cond_14

    aget-object v14, v6, v12

    .line 1035
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result v15

    xor-int/2addr v15, v8

    invoke-virtual {v14, v15}, Lorg/telegram/ui/CodeNumberField;->setShowSoftInputOnFocusCompat(Z)V

    .line 1036
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/high16 v15, 0x41c00000    # 24.0f

    .line 1037
    invoke-virtual {v14, v8, v15}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1038
    new-instance v15, Lorg/telegram/ui/PasscodeActivity$9;

    invoke-direct {v15, v0}, Lorg/telegram/ui/PasscodeActivity$9;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1053
    new-instance v15, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda11;

    invoke-direct {v15, v0, v14}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/PasscodeActivity;Lorg/telegram/ui/CodeNumberField;)V

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 1058
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

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v17, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x20

    const/16 v22, 0x0

    const/16 v23, 0x48

    .line 1060
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1062
    iget v3, v0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v3, v8, :cond_15

    .line 1063
    invoke-virtual {v2, v13}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1066
    :cond_15
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    .line 1067
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_16

    .line 1068
    new-instance v5, Landroid/animation/StateListAnimator;

    invoke-direct {v5}, Landroid/animation/StateListAnimator;-><init>()V

    new-array v6, v8, [I

    const v9, 0x10100a7

    aput v9, v6, v4

    .line 1069
    iget-object v9, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    new-array v12, v11, [F

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    aput v13, v12, v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    aput v13, v12, v8

    const-string v13, "translationZ"

    invoke-static {v9, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v12, 0xc8

    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v6, v4, [I

    .line 1070
    iget-object v9, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    new-array v12, v11, [F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    aput v10, v12, v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    aput v10, v12, v8

    const-string v10, "translationZ"

    invoke-static {v9, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0xc8

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 1071
    iget-object v6, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 1072
    iget-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/ui/PasscodeActivity$10;

    invoke-direct {v6, v0}, Lorg/telegram/ui/PasscodeActivity$10;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1080
    :cond_16
    iget-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 1081
    iget-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-lt v3, v7, :cond_17

    const/16 v9, 0x38

    goto :goto_f

    :cond_17
    const/16 v9, 0x3c

    :goto_f
    if-lt v3, v7, :cond_18

    const/16 v10, 0x38

    goto :goto_10

    :cond_18
    const/16 v10, 0x3c

    :goto_10
    const/16 v11, 0x55

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x18

    const/16 v15, 0x10

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1082
    iget-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v5, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda8;

    invoke-direct {v5, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1098
    new-instance v2, Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/TransformableLoginButtonView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    .line 1099
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setTransformType(I)V

    .line 1100
    iget-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setProgress(F)V

    .line 1101
    iget-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    const-string v5, "chats_actionIcon"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setColor(I)V

    .line 1102
    iget-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setDrawBackground(Z)V

    .line 1103
    iget-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget v5, Lorg/telegram/messenger/R$string;->Next:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1104
    iget-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    if-lt v3, v7, :cond_19

    const/16 v6, 0x38

    goto :goto_11

    :cond_19
    const/16 v6, 0x3c

    :goto_11
    if-lt v3, v7, :cond_1a

    const/16 v8, 0x38

    goto :goto_12

    :cond_1a
    const/16 v8, 0x3c

    :goto_12
    invoke-static {v6, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1106
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const-string v5, "chats_actionBackground"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "chats_actionPressedBackground"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v2, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ge v3, v7, :cond_1b

    .line 1108
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1109
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v5, -0x1000000

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1110
    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v3, v1, v2, v4, v4}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 1111
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v2, v3

    .line 1114
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/PasscodeActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1116
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PasscodeActivity;->updateFields()V

    goto :goto_14

    .line 599
    :cond_1c
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v5, v0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-ne v5, v11, :cond_1d

    sget v5, Lorg/telegram/messenger/R$string;->wallet_settings_pin_code_title:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    :cond_1d
    sget v5, Lorg/telegram/messenger/R$string;->Passcode:I

    const-string v6, "Passcode"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    :goto_13
    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "windowBackgroundGray"

    .line 600
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 601
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 602
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 603
    new-instance v5, Lorg/telegram/ui/PasscodeActivity$3;

    invoke-direct {v5, v0, v1, v8, v4}, Lorg/telegram/ui/PasscodeActivity$3;-><init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;IZ)V

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 609
    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 610
    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 611
    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 612
    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    iget-object v2, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PasscodeActivity$ListAdapter;-><init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 614
    iget-object v1, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda32;

    invoke-direct {v2, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1121
    :goto_14
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 1291
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

    .line 1292
    :cond_0
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-nez p1, :cond_1

    .line 1293
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateRows()V

    .line 1294
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    if-eqz p1, :cond_1

    .line 1295
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1816
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1818
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

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1819
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v3, v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "windowBackgroundWhite"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1820
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v5, v3

    const/4 v9, 0x0

    const-string v10, "windowBackgroundGray"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1822
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v20, "actionBarDefault"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1823
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v10, "actionBarDefault"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1824
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v20, "actionBarDefaultIcon"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1825
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v10, "actionBarDefaultTitle"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1826
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v20, "actionBarDefaultSelector"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1827
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const-string v10, "actionBarDefaultSubmenuBackground"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1828
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const-string v20, "actionBarDefaultSubmenuItem"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1829
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int/2addr v5, v3

    const-string v10, "actionBarDefaultSubmenuItemIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1831
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v20, "listSelectorSDK21"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1833
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v6, v11

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const-string v10, "divider"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1835
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v20, "windowBackgroundWhiteGrayText6"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1836
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v10, "windowBackgroundWhiteBlackText"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1837
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-string v20, "windowBackgroundWhiteInputField"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1838
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v5, v3

    const-string v10, "windowBackgroundWhiteInputFieldActivated"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1840
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

    const-string v21, "windowBackgroundWhiteBlackText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1841
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v5, v11

    const-string v6, "checkBox"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v30, "switchTrack"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1842
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "switchTrackChecked"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1844
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v6, v5, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "windowBackgroundWhiteBlackText"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1845
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "windowBackgroundWhiteGrayText7"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1846
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v6, v5, v11

    const-string v6, "valueTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const-string v30, "windowBackgroundWhiteValueText"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1848
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v11

    const/16 v17, 0x0

    const-string v20, "windowBackgroundGrayShadow"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1849
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v5, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v25

    const/16 v23, 0x0

    const/16 v26, 0x0

    const-string v29, "windowBackgroundWhiteGrayText4"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public goToBackUpTutorial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 229
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

    .line 230
    new-instance v0, Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType$Backup;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda27;

    invoke-direct {v1, p3, p1, p2}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda27;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType$Backup;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 231
    invoke-static {v0}, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->newInstance(Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType;)Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    move-result-object p1

    const/4 p2, 0x1

    .line 230
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method public hasForceLightStatusBar()Z
    .locals 1

    .line 1126
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

    .line 267
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1253
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1255
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/PasscodeActivity;->setCustomKeyboardVisible(ZZ)V

    .line 1256
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->lockImageView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p1, :cond_1

    .line 1257
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v2, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1259
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    if-eqz p1, :cond_2

    .line 1260
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 1261
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

    .line 499
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 501
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, -0x1

    const-string v3, "screen_type"

    .line 502
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 503
    :goto_0
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    .line 504
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "wallet_pin_args"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/smedialink/model/wallet/pin/WalletPinScreenArgs;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/smedialink/model/wallet/pin/WalletPinScreenArgs;

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletPinScreenArgs:Lcom/smedialink/model/wallet/pin/WalletPinScreenArgs;

    .line 508
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "wallet_seed"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletSeed:Ljava/lang/String;

    .line 511
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateRows()V

    .line 512
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-nez v0, :cond_3

    .line 513
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_3
    return v1
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 520
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 521
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-nez v0, :cond_0

    .line 522
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 524
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    return-void
.end method

.method public onPasswordMatch(Ljava/lang/String;)V
    .locals 3

    .line 272
    new-instance v0, Lcom/smedialink/model/wallet/pin/WalletPinScreenArgs;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->walletSeed:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, p1, v2, v1}, Lcom/smedialink/model/wallet/pin/WalletPinScreenArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->newInstanceForWalletPin(Lcom/smedialink/model/wallet/pin/WalletPinScreenArgs;)Lorg/telegram/ui/PasscodeActivity;

    move-result-object p1

    .line 272
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1285
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onPause()V

    .line 1286
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAltFocusable(Landroid/app/Activity;I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1268
    invoke-super {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->onResume()V

    .line 1269
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 1270
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1272
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1273
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isWalletScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0xc8

    :goto_0
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1275
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 1277
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1278
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1279
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAltFocusable(Landroid/app/Activity;I)V

    :cond_3
    return-void
.end method

.method public onSuccessCreateWallet()V
    .locals 2

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 251
    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/PasscodeActivity;Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccessDeleteWallet()V
    .locals 3

    .line 286
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v1, v2, v0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->postViewActionDelayed(JLorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public onSuccessUnlockWallet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 306
    new-instance v0, Lcom/smedialink/model/wallet/pin/WalletPinScreenArgs;

    const-string v1, ""

    invoke-direct {v0, p1, p2, v1}, Lcom/smedialink/model/wallet/pin/WalletPinScreenArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->newInstanceForWalletPin(Lcom/smedialink/model/wallet/pin/WalletPinScreenArgs;)Lorg/telegram/ui/PasscodeActivity;

    move-result-object p1

    .line 306
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1341
    iget p1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-eqz p1, :cond_0

    .line 1342
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->showKeyboard()V

    :cond_0
    return-void
.end method

.method public onViewReady()V
    .locals 2

    .line 315
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->screenType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletEnterPasswordPresenter:Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->subscribeOnRxEvents(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->walletCreatePasscodePresenter:Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;->subscribeOnRxEvents(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method provideWalletEnterPasswordPresenter()Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;
    .locals 1
    .annotation runtime Lmoxy/presenter/ProvidePresenter;
    .end annotation

    .line 158
    const-class v0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    return-object v0
.end method

.method provideWalletPasswordPresenter()Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;
    .locals 1
    .annotation runtime Lmoxy/presenter/ProvidePresenter;
    .end annotation

    .line 148
    const-class v0, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;

    return-object v0
.end method

.method provideWalletPinPresenter()Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;
    .locals 3
    .annotation runtime Lmoxy/presenter/ProvidePresenter;
    .end annotation

    .line 153
    const-class v0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    return-object v0
.end method

.method public shouldAskPinCode()Z
    .locals 2

    .line 281
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

.method public showDeleteWalletDialog(Lcom/smedialink/model/dialog/DialogModel;)V
    .locals 3

    .line 337
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->walletEnterPasswordPresenter:Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    .line 339
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda29;

    invoke-direct {v2, v1}, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda29;-><init>(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;)V

    const/4 v1, 0x0

    .line 336
    invoke-static {v0, p1, v2, v1}, Lcom/smedialink/utils/dialogs/DialogUtils;->createDialog(Landroid/content/Context;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 342
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 343
    invoke-static {p1}, Lcom/smedialink/utils/dialogs/DialogExtKt;->makeRedPositiveButton(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public showRestoreWalletScreen(Ljava/lang/String;)V
    .locals 2

    .line 324
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static {v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->newInstance(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object p1

    .line 324
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method
