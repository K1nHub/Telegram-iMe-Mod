.class public Lorg/telegram/ui/Components/PasscodeView;
.super Landroid/widget/FrameLayout;
.source "PasscodeView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;,
        Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;,
        Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;,
        Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;
    }
.end annotation


# static fields
.field private static final ids:[I


# instance fields
.field private backgroundAnimationSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundFrameLayout:Landroid/widget/FrameLayout;

.field private backgroundSpringNextQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundSpringQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private cancellationSignal:Landroidx/core/os/CancellationSignal;

.field private checkImage:Landroid/widget/ImageView;

.field private checkRunnable:Ljava/lang/Runnable;

.field private final currentAccount:I

.field private currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

.field private delegate:Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;

.field private eraseView:Landroid/widget/ImageView;

.field private fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private fingerprintImage:Landroid/widget/ImageView;

.field private fingerprintImageView:Landroid/widget/ImageView;

.field private fingerprintStatusTextView:Landroid/widget/TextView;

.field private fingerprintView:Landroid/widget/ImageView;

.field private forgotPasscodeTextView:Landroid/widget/TextView;

.field private imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private imageY:I

.field private innerAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final isWalletScreen:Z

.field private keyboardHeight:I

.field private lastValue:I

.field private lettersTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private numberFrameLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private numberTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private numbersFrameLayout:Landroid/widget/FrameLayout;

.field private passcodeTextView:Landroid/widget/TextView;

.field private passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

.field private passwordFrameLayout:Landroid/widget/FrameLayout;

.field private pos:[I

.field private rect:Landroid/graphics/Rect;

.field private retryTextView:Landroid/widget/TextView;

.field private sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

.field private selfCancelled:Z

.field private walletDelegate:Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;


# direct methods
.method public static synthetic $r8$lambda$A4i2Cz7h8PrK6Jb5wtIKCkEDMU8(Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->lambda$processDone$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$DbJ-McjXSRA0LUlv0aejYwxSpw4(Lorg/telegram/ui/Components/PasscodeView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JzNKWgfFwEdDJERhmxjQ5IfNGuE(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PasscodeView;->lambda$animateBackground$11(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kvar4EMuyjHNgZWJpWCbfiN0FR0(Lorg/telegram/ui/Components/PasscodeView;Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/PasscodeView;->lambda$animateBackground$10(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$LI5sfrkPOirM5f-HeNM3StKUmRk(Lorg/telegram/ui/Components/PasscodeView;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->lambda$checkFingerprint$14(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NpDeo84mqvTH9w1mMqVKlG5wH-g(Lorg/telegram/ui/Components/PasscodeView;ZLorg/telegram/ui/Components/MotionBackgroundDrawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PasscodeView;->lambda$new$6(ZLorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SmopjV0LLCBRN0ghykywuBOqXuE(Landroidx/dynamicanimation/animation/FloatValueHolder;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)Ljava/lang/Float;
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->lambda$animateBackground$9(Landroidx/dynamicanimation/animation/FloatValueHolder;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UvN_Yr_EpJmCMH-O7jKkNqSD05I(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->lambda$onShow$15(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VGyOWJ4WsCo7s5MHFWsFzmOad8I(Lorg/telegram/ui/Components/PasscodeView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XCBDdzkEQ1WkjD9o68vDz1J_ftg(Lorg/telegram/ui/Components/PasscodeView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->lambda$new$5(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$j_aC1QE-GCFhrfA6Fef0awunpRc(Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->lambda$onResume$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$kIwMwj5DVex7Uab7r_RfGykBtSM(Lorg/telegram/ui/Components/PasscodeView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lxpSAnTmw9vi2eCFx_wNTmDsVMM(Lorg/telegram/ui/Components/PasscodeView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PasscodeView;->lambda$new$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mHW3YnTrlFFjNAO6vUiMdx263gk(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->lambda$new$7(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mwv2rFdFGoV94ZhShbuM-jHnhHo(Lorg/telegram/ui/Components/PasscodeView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 582
    sget v1, Lorg/telegram/messenger/R$id;->passcode_btn_0:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/R$id;->passcode_btn_1:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/R$id;->passcode_btn_2:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/R$id;->passcode_btn_3:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/R$id;->passcode_btn_4:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/R$id;->passcode_btn_5:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/R$id;->passcode_btn_6:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/R$id;->passcode_btn_7:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/R$id;->passcode_btn_8:I

    const/16 v2, 0x8

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/R$id;->passcode_btn_9:I

    const/16 v2, 0x9

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/R$id;->passcode_btn_backspace:I

    const/16 v2, 0xa

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/R$id;->passcode_btn_fingerprint:I

    const/16 v2, 0xb

    aput v1, v0, v2

    sput-object v0, Lorg/telegram/ui/Components/PasscodeView;->ids:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;Lcom/iMe/fork/enums/LockedSection;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;Lcom/iMe/fork/enums/LockedSection;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iMe/fork/enums/LockedSection;)V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;Lcom/iMe/fork/enums/LockedSection;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iMe/fork/enums/LockedSection;Landroid/util/AttributeSet;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 598
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v3, v0, Lorg/telegram/ui/Components/PasscodeView;->currentAccount:I

    const/4 v3, 0x0

    .line 114
    iput-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    .line 115
    iput-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    .line 117
    iput-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->walletDelegate:Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;

    const/4 v4, 0x0

    .line 551
    iput v4, v0, Lorg/telegram/ui/Components/PasscodeView;->keyboardHeight:I

    .line 563
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->rect:Landroid/graphics/Rect;

    .line 571
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringQueue:Ljava/util/LinkedList;

    .line 572
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringNextQueue:Ljava/util/LinkedList;

    .line 579
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->innerAnimators:Ljava/util/ArrayList;

    .line 1193
    new-instance v5, Lorg/telegram/ui/Components/PasscodeView$8;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/PasscodeView$8;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->checkRunnable:Ljava/lang/Runnable;

    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 1853
    iput-object v6, v0, Lorg/telegram/ui/Components/PasscodeView;->pos:[I

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v4

    .line 600
    :goto_0
    iput-boolean v2, v0, Lorg/telegram/ui/Components/PasscodeView;->isWalletScreen:Z

    move-object/from16 v7, p2

    .line 601
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/PasscodeView;->setCurrentLockedSection(Lcom/iMe/fork/enums/LockedSection;)V

    .line 604
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const/16 v7, 0x8

    .line 605
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 607
    new-instance v8, Lorg/telegram/ui/Components/PasscodeView$2;

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/Components/PasscodeView$2;-><init>(Lorg/telegram/ui/Components/PasscodeView;Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    .line 639
    invoke-virtual {v8, v4}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 640
    iget-object v8, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    const/4 v9, -0x1

    invoke-static {v9, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    new-instance v8, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v8, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 643
    sget v10, Lorg/telegram/messenger/R$raw;->passcode_lock_close:I

    const/16 v11, 0x3a

    invoke-virtual {v8, v10, v11, v11}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 644
    iget-object v8, v0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 645
    iget-object v8, v0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v10, 0x33

    invoke-static {v11, v11, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v8, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 647
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    .line 648
    iget-object v11, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v9, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    .line 651
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 652
    iget-object v8, v0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    const/high16 v11, 0x41600000    # 14.0f

    invoke-virtual {v8, v6, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 653
    iget-object v8, v0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 654
    iget-object v8, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    const/4 v13, -0x2

    const/4 v14, -0x2

    const/16 v15, 0x51

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x4a

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    .line 657
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 658
    iget-object v8, v0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    const/high16 v12, 0x41700000    # 15.0f

    invoke-virtual {v8, v6, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 659
    iget-object v8, v0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 660
    iget-object v8, v0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    const/4 v12, 0x4

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 661
    iget-object v8, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    const/4 v13, -0x2

    const/16 v14, 0x11

    invoke-static {v13, v13, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    new-instance v8, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-direct {v8, v1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    .line 664
    iget-object v12, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    const/4 v15, -0x1

    const/16 v16, -0x2

    const/16 v17, 0x51

    const/16 v18, 0x46

    const/16 v19, 0x0

    const/16 v20, 0x46

    const/16 v21, 0x6

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_1

    .line 667
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->forgotPasscodeTextView:Landroid/widget/TextView;

    .line 668
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 669
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->forgotPasscodeTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 670
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->forgotPasscodeTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 671
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->forgotPasscodeTextView:Landroid/widget/TextView;

    sget v8, Lorg/telegram/messenger/R$string;->wallet_enter_eth_pin_forgot:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->forgotPasscodeTextView:Landroid/widget/TextView;

    new-instance v8, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda3;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v8, v0, Lorg/telegram/ui/Components/PasscodeView;->forgotPasscodeTextView:Landroid/widget/TextView;

    const/4 v15, -0x2

    const/16 v16, -0x2

    const/16 v17, 0x51

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x8

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v8, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 681
    :cond_1
    new-instance v2, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v8, 0x42100000    # 36.0f

    .line 682
    invoke-virtual {v2, v6, v8}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 683
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setTextColor(I)V

    .line 684
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 685
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setLines(I)V

    .line 686
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setGravity(I)V

    .line 687
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 688
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v11, 0x6

    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 689
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 690
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 691
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 692
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v3, 0x20

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 693
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v15, -0x1

    const/16 v16, -0x2

    const/16 v17, 0x51

    const/16 v18, 0x46

    const/16 v19, 0x0

    const/16 v20, 0x46

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v3, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v3, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 701
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v3, Lorg/telegram/ui/Components/PasscodeView$3;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PasscodeView$3;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 773
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v3, Lorg/telegram/ui/Components/PasscodeView$4;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PasscodeView$4;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 790
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    .line 791
    sget v3, Lorg/telegram/messenger/R$drawable;->passcode_check:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 792
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 793
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->bar_selector_lock:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 794
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v11, v0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    const/16 v15, 0x3c

    const/16 v16, 0x3c

    const/16 v17, 0x55

    const/16 v18, 0x0

    const/16 v20, 0xa

    const/16 v21, 0x4

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 795
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    sget v11, Lorg/telegram/messenger/R$string;->Done:I

    const-string v12, "Done"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 796
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    new-instance v11, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda4;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImage:Landroid/widget/ImageView;

    .line 799
    sget v11, Lorg/telegram/messenger/R$drawable;->fingerprint:I

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 800
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImage:Landroid/widget/ImageView;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 801
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 802
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImage:Landroid/widget/ImageView;

    const/16 v17, 0x53

    const/16 v18, 0xa

    const/16 v20, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v3, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImage:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrFingerprint:I

    const-string v11, "AccDescrFingerprint"

    invoke-static {v11, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 804
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImage:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v3, 0x26ffffff

    .line 807
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 808
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    const/4 v15, -0x1

    const/16 v16, 0x1

    const/16 v18, 0x14

    const/16 v20, 0x14

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v2, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 810
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    .line 811
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v9, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v2, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 813
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->lettersTextViews:Ljava/util/ArrayList;

    .line 814
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->numberTextViews:Ljava/util/ArrayList;

    .line 815
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    move v2, v4

    :goto_1
    const/16 v12, 0x32

    if-ge v2, v3, :cond_3

    .line 817
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 818
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 819
    invoke-virtual {v13, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 820
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 821
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v8, v4

    const-string v4, "%d"

    invoke-static {v15, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v12, v12, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v13, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 823
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 824
    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->numberTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x41400000    # 12.0f

    .line 827
    invoke-virtual {v4, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const v8, 0x7fffffff

    .line 828
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 829
    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 830
    iget-object v8, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v12, v12, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v8, v4, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    if-eqz v2, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v8, "WXYZ"

    .line 858
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_1
    const-string v8, "TUV"

    .line 855
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_2
    const-string v8, "PQRS"

    .line 852
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_3
    const-string v8, "MNO"

    .line 849
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_4
    const-string v8, "JKL"

    .line 846
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_5
    const-string v8, "GHI"

    .line 843
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_6
    const-string v8, "DEF"

    .line 840
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_7
    const-string v8, "ABC"

    .line 837
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    const-string v8, "+"

    .line 834
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    :goto_2
    iget-object v8, v0, Lorg/telegram/ui/Components/PasscodeView;->lettersTextViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    const/high16 v8, 0x42100000    # 36.0f

    goto/16 :goto_1

    .line 865
    :cond_3
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->eraseView:Landroid/widget/ImageView;

    .line 866
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 867
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->eraseView:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$drawable;->passcode_delete:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 868
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->eraseView:Landroid/widget/ImageView;

    invoke-static {v12, v12, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 870
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Landroid/widget/ImageView;

    .line 871
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 872
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$drawable;->fingerprint:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 873
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 874
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Landroid/widget/ImageView;

    invoke-static {v12, v12, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 875
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PasscodeView;->checkFingerprintButton()V

    const/4 v4, 0x0

    :goto_3
    const/16 v2, 0xc

    const/16 v5, 0xb

    if-ge v4, v2, :cond_9

    .line 878
    new-instance v2, Lorg/telegram/ui/Components/PasscodeView$5;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/PasscodeView$5;-><init>(Lorg/telegram/ui/Components/PasscodeView;Landroid/content/Context;)V

    .line 885
    sget v6, Lorg/telegram/messenger/R$drawable;->bar_selector_lock:I

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 886
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    if-ne v4, v5, :cond_4

    .line 888
    sget v5, Lorg/telegram/messenger/R$string;->AccDescrFingerprint:I

    invoke-static {v11, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 889
    sget v5, Lorg/telegram/messenger/R$id;->passcode_btn_0:I

    invoke-direct {v0, v2, v5}, Lorg/telegram/ui/Components/PasscodeView;->setNextFocus(Landroid/view/View;I)V

    goto :goto_4

    :cond_4
    if-ne v4, v3, :cond_5

    .line 891
    new-instance v5, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 899
    sget v5, Lorg/telegram/messenger/R$string;->AccDescrBackspace:I

    const-string v6, "AccDescrBackspace"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 900
    sget v5, Lorg/telegram/messenger/R$id;->passcode_btn_1:I

    invoke-direct {v0, v2, v5}, Lorg/telegram/ui/Components/PasscodeView;->setNextFocus(Landroid/view/View;I)V

    goto :goto_4

    .line 902
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez v4, :cond_6

    .line 904
    sget v5, Lorg/telegram/messenger/R$id;->passcode_btn_backspace:I

    invoke-direct {v0, v2, v5}, Lorg/telegram/ui/Components/PasscodeView;->setNextFocus(Landroid/view/View;I)V

    goto :goto_4

    :cond_6
    const/16 v5, 0x9

    if-ne v4, v5, :cond_8

    .line 906
    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_7

    .line 907
    sget v5, Lorg/telegram/messenger/R$id;->passcode_btn_fingerprint:I

    invoke-direct {v0, v2, v5}, Lorg/telegram/ui/Components/PasscodeView;->setNextFocus(Landroid/view/View;I)V

    goto :goto_4

    .line 909
    :cond_7
    sget v5, Lorg/telegram/messenger/R$id;->passcode_btn_0:I

    invoke-direct {v0, v2, v5}, Lorg/telegram/ui/Components/PasscodeView;->setNextFocus(Landroid/view/View;I)V

    goto :goto_4

    .line 912
    :cond_8
    sget-object v5, Lorg/telegram/ui/Components/PasscodeView;->ids:[I

    add-int/lit8 v6, v4, 0x1

    aget v5, v5, v6

    invoke-direct {v0, v2, v5}, Lorg/telegram/ui/Components/PasscodeView;->setNextFocus(Landroid/view/View;I)V

    .line 915
    :goto_4
    sget-object v5, Lorg/telegram/ui/Components/PasscodeView;->ids:[I

    aget v5, v5, v4

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 916
    new-instance v5, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1023
    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_9
    :goto_5
    if-ltz v5, :cond_a

    .line 1026
    iget-object v1, v0, Lorg/telegram/ui/Components/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1027
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x64

    invoke-static {v3, v3, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/PasscodeView;Lcom/iMe/fork/enums/PasscodeType;)Z
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->isCurrentPasscodeType(Lcom/iMe/fork/enums/PasscodeType;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/PasscodeView;Z)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->processDone(Z)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/PasscodeView;FI)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PasscodeView;->shakeTextView(FI)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkRetryTextView()V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/PasscodeView;)Ljava/lang/Runnable;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->checkRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/PasscodeView;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PasscodeView;->selfCancelled:Z

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/PasscodeView;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PasscodeView;->isWalletScreen:Z

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/PasscodeView;)Landroidx/core/os/CancellationSignal;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->cancellationSignal:Landroidx/core/os/CancellationSignal;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Components/PasscodeView;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0

    .line 88
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/PasscodeView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->showFingerprintError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->walletDelegate:Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/ArrayList;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->innerAnimators:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/PasscodeView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/PasscodeView;)Landroid/widget/TextView;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/PasscodeView;)[I
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->pos:[I

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/PasscodeView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/PasscodeView;)Landroid/widget/TextView;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/PasscodeView;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/Components/PasscodeView;->imageY:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PasscodeView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PasscodeView;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/Components/PasscodeView;->keyboardHeight:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PasscodeView;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->animateBackground(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/LinkedList;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringQueue:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/LinkedList;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringNextQueue:Ljava/util/LinkedList;

    return-object p0
.end method

.method private animateBackground(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V
    .locals 3

    .line 1032
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundAnimationSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundAnimationSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 1036
    :cond_0
    new-instance v0, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    .line 1037
    new-instance v1, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda14;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setAnimationProgressProvider(Lorg/telegram/messenger/GenericProvider;)V

    .line 1038
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v2, 0x43960000    # 300.0f

    .line 1040
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1041
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 1039
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundAnimationSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1042
    new-instance v1, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/PasscodeView;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1054
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundAnimationSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1055
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundAnimationSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private checkFingerprint()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "dialogTextBlack"

    .line 1323
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v0, v3, :cond_0

    return-void

    .line 1326
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1327
    iget-object v3, v1, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    sget-boolean v3, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v3, :cond_1

    instance-of v3, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/LaunchActivity;->allowShowFingerprintDialog(Lorg/telegram/ui/Components/PasscodeView;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-eqz v0, :cond_6

    iget-boolean v0, v1, Lorg/telegram/ui/Components/PasscodeView;->isWalletScreen:Z

    if-nez v0, :cond_2

    iget-object v0, v1, Lorg/telegram/ui/Components/PasscodeView;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    if-eqz v0, :cond_6

    .line 1329
    :cond_2
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    return-void

    :catch_0
    move-exception v0

    .line 1333
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1336
    :cond_3
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;

    move-result-object v3

    .line 1337
    invoke-virtual {v3}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->isKeyReady()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->checkDeviceFingerprintsChanged()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1338
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x18

    .line 1339
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1341
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x3e8

    .line 1342
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setId(I)V

    const v5, 0x1030208

    .line 1343
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 1344
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v5, "FingerprintInfo"

    .line 1345
    sget v7, Lorg/telegram/messenger/R$string;->FingerprintInfo:I

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1346
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v5, -0x2

    .line 1347
    invoke-static {v5, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    const/16 v8, 0xa

    .line 1348
    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v8, 0x14

    .line 1349
    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1350
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1352
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImageView:Landroid/widget/ImageView;

    .line 1353
    sget v7, Lorg/telegram/messenger/R$drawable;->ic_fp_40px:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1354
    iget-object v4, v1, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImageView:Landroid/widget/ImageView;

    const/16 v7, 0x3e9

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 1355
    iget-object v4, v1, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImageView:Landroid/widget/ImageView;

    const/high16 v8, -0x40000000    # -2.0f

    const/high16 v9, -0x40000000    # -2.0f

    const/4 v10, 0x0

    const/16 v11, 0x14

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x14

    const/4 v15, 0x3

    const/16 v16, 0x3e8

    invoke-static/range {v8 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1357
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const/16 v8, 0x10

    .line 1358
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 1359
    iget-object v4, v1, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const-string v9, "FingerprintHelp"

    sget v10, Lorg/telegram/messenger/R$string;->FingerprintHelp:I

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1360
    iget-object v4, v1, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const v9, 0x10301f0

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 1361
    iget-object v4, v1, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const v9, 0x42ffffff    # 127.99999f

    and-int/2addr v2, v9

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1362
    iget-object v2, v1, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1363
    invoke-static {v5, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    .line 1364
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    const/16 v4, 0x8

    .line 1365
    invoke-virtual {v2, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x6

    .line 1366
    invoke-virtual {v2, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0x11

    .line 1367
    invoke-virtual {v2, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1368
    iget-object v4, v1, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1370
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "AppName"

    .line 1371
    sget v5, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1372
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v0, "Cancel"

    .line 1373
    sget v4, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1374
    new-instance v0, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1385
    iget-object v0, v1, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 1387
    :try_start_2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1388
    iget-object v0, v1, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1391
    :try_start_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1394
    :cond_4
    :goto_0
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1396
    new-instance v0, Landroidx/core/os/CancellationSignal;

    invoke-direct {v0}, Landroidx/core/os/CancellationSignal;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/PasscodeView;->cancellationSignal:Landroidx/core/os/CancellationSignal;

    .line 1397
    iput-boolean v6, v1, Lorg/telegram/ui/Components/PasscodeView;->selfCancelled:Z

    .line 1399
    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->createCipher()Z

    .line 1400
    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->initDecodeCipher()V

    .line 1401
    new-instance v0, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    .line 1403
    iget-boolean v2, v1, Lorg/telegram/ui/Components/PasscodeView;->isWalletScreen:Z

    if-eqz v2, :cond_5

    move-object v4, v0

    :cond_5
    const/4 v5, 0x0

    iget-object v6, v1, Lorg/telegram/ui/Components/PasscodeView;->cancellationSignal:Landroidx/core/os/CancellationSignal;

    new-instance v7, Lorg/telegram/ui/Components/PasscodeView$9;

    invoke-direct {v7, v1, v3, v0}, Lorg/telegram/ui/Components/PasscodeView$9;-><init>(Lorg/telegram/ui/Components/PasscodeView;Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;)V

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->authenticate(Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    :cond_6
    return-void
.end method

.method private checkFingerprintButton()V
    .locals 4

    .line 1463
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1464
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    const/16 v3, 0x17

    if-lt v1, v3, :cond_5

    if-eqz v0, :cond_5

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useFingerprint:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PasscodeView;->isWalletScreen:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getUseFingerprint()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->isWalletFingerprintEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1466
    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    return-void

    :catch_0
    move-exception v0

    .line 1470
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1473
    :cond_3
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;

    move-result-object v0

    .line 1474
    invoke-virtual {v0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->isKeyReady()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->checkDeviceFingerprintsChanged()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1475
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1477
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1480
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1481
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1484
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1486
    :goto_0
    sget-object v0, Lcom/iMe/fork/enums/PasscodeType;->PASSWORD:Lcom/iMe/fork/enums/PasscodeType;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView;->isCurrentPasscodeType(Lcom/iMe/fork/enums/PasscodeType;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1487
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1489
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_7

    .line 1490
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method private checkRetryTextView()V
    .locals 9

    .line 1203
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1205
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    .line 1206
    invoke-virtual {v2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getLastUptimeMillis()J

    move-result-wide v5

    cmp-long v2, v0, v5

    if-lez v2, :cond_0

    .line 1207
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    invoke-virtual {v2, v0, v1}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->reducePasscodeRetryTime(J)V

    .line 1208
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    invoke-virtual {v2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeRetryInMs()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-gez v2, :cond_0

    .line 1209
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    invoke-virtual {v2, v3, v4}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeRetryInMs(J)V

    .line 1212
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    invoke-virtual {v2, v0, v1}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setLastUptimeMillis(J)V

    .line 1213
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    invoke-virtual {v2, v5, v6}, Lcom/iMe/fork/controller/LockedSectionsController;->setSectionsPasscodeData(Lcom/iMe/fork/enums/LockedSection;Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;)V

    goto :goto_0

    .line 1215
    :cond_1
    sget-wide v5, Lorg/telegram/messenger/SharedConfig;->lastUptimeMillis:J

    cmp-long v2, v0, v5

    if-lez v2, :cond_2

    .line 1216
    sget-wide v5, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    sget-wide v7, Lorg/telegram/messenger/SharedConfig;->lastUptimeMillis:J

    sub-long v7, v0, v7

    sub-long/2addr v5, v7

    sput-wide v5, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    cmp-long v2, v5, v3

    if-gez v2, :cond_2

    .line 1218
    sput-wide v3, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    .line 1222
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-nez v2, :cond_3

    .line 1223
    sput-wide v0, Lorg/telegram/messenger/SharedConfig;->lastUptimeMillis:J

    :cond_3
    if-nez v2, :cond_4

    .line 1226
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 1227
    :cond_4
    sget-wide v0, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    cmp-long v0, v0, v3

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeRetryInMs()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_b

    .line 1228
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    const-wide v3, 0x408f400000000000L    # 1000.0

    const/4 v5, 0x1

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeRetryInMs()J

    move-result-wide v6

    goto :goto_1

    :cond_7
    sget-wide v6, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    :goto_1
    long-to-double v6, v6

    div-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1229
    iget v3, p0, Lorg/telegram/ui/Components/PasscodeView;->lastValue:I

    if-eq v0, v3, :cond_8

    .line 1230
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->TooManyTries:I

    new-array v5, v5, [Ljava/lang/Object;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "Seconds"

    invoke-static {v7, v0, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "TooManyTries"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1231
    iput v0, p0, Lorg/telegram/ui/Components/PasscodeView;->lastValue:I

    .line 1233
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    .line 1234
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1235
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1236
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 1237
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1239
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1241
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->checkRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1242
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 1244
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->checkRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1245
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_d

    .line 1246
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1247
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1248
    sget-object v0, Lcom/iMe/fork/enums/PasscodeType;->PIN:Lcom/iMe/fork/enums/PasscodeType;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView;->isCurrentPasscodeType(Lcom/iMe/fork/enums/PasscodeType;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1249
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 1250
    :cond_c
    sget-object v0, Lcom/iMe/fork/enums/PasscodeType;->PASSWORD:Lcom/iMe/fork/enums/PasscodeType;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView;->isCurrentPasscodeType(Lcom/iMe/fork/enums/PasscodeType;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1251
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_d
    :goto_2
    return-void
.end method

.method private getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;
    .locals 1

    .line 179
    iget v0, p0, Lorg/telegram/ui/Components/PasscodeView;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/LockedSectionsController;->getInstance(I)Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object v0

    return-object v0
.end method

.method private getWalletFingerprintController()Lcom/iMe/fork/controller/WalletFingerprintController;
    .locals 1

    .line 183
    iget v0, p0, Lorg/telegram/ui/Components/PasscodeView;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/WalletFingerprintController;->getInstance(I)Lcom/iMe/fork/controller/WalletFingerprintController;

    move-result-object v0

    return-object v0
.end method

.method private isCurrentPasscodeType(Lcom/iMe/fork/enums/PasscodeType;)Z
    .locals 2

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-nez v0, :cond_0

    sget v0, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    invoke-virtual {p1}, Lcom/iMe/fork/enums/PasscodeType;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {v0}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeType()Lcom/iMe/fork/enums/PasscodeType;

    move-result-object v0

    if-ne v0, p1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PasscodeView;->isWalletScreen:Z

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/iMe/fork/enums/PasscodeType;->PIN:Lcom/iMe/fork/enums/PasscodeType;

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lorg/telegram/ui/Components/PasscodeView;->isWalletScreen:Z

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isWalletFingerprintEnabled()Z
    .locals 2

    .line 193
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->getWalletFingerprintController()Lcom/iMe/fork/controller/WalletFingerprintController;

    move-result-object v0

    .line 194
    iget-boolean v1, p0, Lorg/telegram/ui/Components/PasscodeView;->isWalletScreen:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/WalletFingerprintController;->isWalletFingerprintUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/WalletFingerprintController;->getWalletPinCodeEncrypted()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$animateBackground$10(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p2, 0x0

    .line 1043
    iput-object p2, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundAnimationSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1044
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setAnimationProgressProvider(Lorg/telegram/messenger/GenericProvider;)V

    if-nez p3, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1047
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPosAnimationProgress(F)V

    .line 1048
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1049
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1050
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringNextQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static synthetic lambda$animateBackground$11(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/4 p1, 0x1

    .line 1054
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    return-void
.end method

.method private static synthetic lambda$animateBackground$9(Landroidx/dynamicanimation/animation/FloatValueHolder;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)Ljava/lang/Float;
    .locals 0

    .line 1037
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$checkFingerprint$14(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1375
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->cancellationSignal:Landroidx/core/os/CancellationSignal;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1376
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PasscodeView;->selfCancelled:Z

    .line 1378
    :try_start_0
    invoke-virtual {p1}, Landroidx/core/os/CancellationSignal;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1380
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    .line 1382
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->cancellationSignal:Landroidx/core/os/CancellationSignal;

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 673
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->walletDelegate:Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;

    if-eqz p1, :cond_0

    .line 674
    invoke-interface {p1}, Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;->onForgotPinCodeClicked()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    .line 696
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->processDone(Z)V

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 796
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->processDone(Z)V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 0

    .line 804
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkFingerprint()V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)Z
    .locals 2

    .line 892
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 893
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$000(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;Z)V

    .line 894
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v1, :cond_0

    .line 895
    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToPrevPosition(Z)V

    :cond_0
    return v0
.end method

.method private synthetic lambda$new$6(ZLorg/telegram/ui/Components/MotionBackgroundDrawable;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 992
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToNextPosition(Z)V

    goto :goto_0

    .line 994
    :cond_0
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToPrevPosition(Z)V

    .line 996
    :goto_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/PasscodeView;->animateBackground(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    return-void
.end method

.method private static synthetic lambda$new$7(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 1014
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 6

    .line 917
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 954
    :pswitch_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkFingerprint()V

    goto :goto_0

    .line 951
    :pswitch_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->eraseLastCharacter()Z

    move-result v1

    goto :goto_1

    .line 948
    :pswitch_2
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const-string v2, "9"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 945
    :pswitch_3
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const-string v2, "8"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 942
    :pswitch_4
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const-string v2, "7"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 939
    :pswitch_5
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 936
    :pswitch_6
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 933
    :pswitch_7
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 930
    :pswitch_8
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 927
    :pswitch_9
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 924
    :pswitch_a
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 921
    :pswitch_b
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    :goto_0
    move v1, v0

    .line 958
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->forgotPasscodeTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 959
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->length()I

    move-result v3

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_2

    :cond_0
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 962
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 963
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView;->processDone(Z)V

    :cond_2
    const/16 v2, 0xb

    if-ne p1, v2, :cond_3

    goto/16 :goto_8

    .line 968
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v3, :cond_a

    .line 969
    check-cast v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v3, 0x0

    .line 970
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setAnimationProgressProvider(Lorg/telegram/messenger/GenericProvider;)V

    .line 972
    invoke-virtual {v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPosAnimationProgress()F

    move-result v3

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-ne p1, v4, :cond_5

    if-eqz v1, :cond_4

    .line 976
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToPrevPosition(Z)V

    goto :goto_3

    :cond_4
    move v5, v0

    :goto_3
    move p1, v0

    goto :goto_4

    .line 981
    :cond_5
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToNextPosition(Z)V

    move p1, v5

    :goto_4
    if-eqz v5, :cond_a

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_6

    .line 988
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PasscodeView;->animateBackground(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    goto/16 :goto_8

    .line 990
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringQueue:Ljava/util/LinkedList;

    new-instance v3, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, p1, v2}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/PasscodeView;ZLorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 998
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringNextQueue:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 1000
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 1003
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 1004
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringNextQueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_7

    .line 1006
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v4, p1, :cond_7

    .line 1007
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1011
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1012
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1014
    :cond_9
    sget-object p1, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda13;->INSTANCE:Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda13;

    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1015
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1016
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringNextQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$onResume$13()V
    .locals 1

    .line 1274
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    .line 1275
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1276
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onShow$15(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$processDone$12()V
    .locals 7

    .line 1162
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0xc8

    .line 1163
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    .line 1164
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/16 v5, 0x14

    .line 1165
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v3, [F

    const/4 v5, 0x0

    .line 1166
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1164
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1167
    new-instance v1, Lorg/telegram/ui/Components/PasscodeView$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PasscodeView$6;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1173
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private onPasscodeError()V
    .locals 3

    .line 1258
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0xc8

    .line 1260
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 1262
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->shakeTextView(FI)V

    return-void
.end method

.method private processDone(Z)V
    .locals 7

    .line 1071
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PasscodeView;->isWalletScreen:Z

    const/16 v1, 0x17

    const-string v2, ""

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->walletDelegate:Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;

    if-eqz v0, :cond_1

    .line 1072
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->isKeyReady()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->checkDeviceFingerprintsChanged()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1073
    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->deleteInvalidKey()V

    .line 1074
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->getWalletFingerprintController()Lcom/iMe/fork/controller/WalletFingerprintController;

    move-result-object p1

    .line 1075
    invoke-virtual {p1, v2}, Lcom/iMe/fork/controller/WalletFingerprintController;->setWalletPinCodeEncrypted(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p1}, Lcom/iMe/fork/controller/WalletFingerprintController;->saveConfig()V

    .line 1078
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->walletDelegate:Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;->onPinCodeEntered(Ljava/lang/String;)V

    return-void

    .line 1081
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object v0

    if-nez p1, :cond_e

    .line 1084
    sget-wide v3, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeRetryInMs()J

    move-result-wide v3

    cmp-long p1, v3, v5

    if-lez p1, :cond_4

    :cond_3
    return-void

    .line 1088
    :cond_4
    sget-object p1, Lcom/iMe/fork/enums/PasscodeType;->PIN:Lcom/iMe/fork/enums/PasscodeType;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->isCurrentPasscodeType(Lcom/iMe/fork/enums/PasscodeType;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1089
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1090
    :cond_5
    sget-object p1, Lcom/iMe/fork/enums/PasscodeType;->PASSWORD:Lcom/iMe/fork/enums/PasscodeType;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->isCurrentPasscodeType(Lcom/iMe/fork/enums/PasscodeType;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1091
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    move-object p1, v2

    .line 1093
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 1094
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->onPasscodeError()V

    return-void

    .line 1098
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    const/4 v4, 0x1

    if-eqz v3, :cond_a

    .line 1099
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    invoke-virtual {v0, v3, p1}, Lcom/iMe/fork/controller/LockedSectionsController;->checkSectionPasscode(Lcom/iMe/fork/enums/LockedSection;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 1100
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/LockedSectionsController;->increaseBadPasscodeTries(Lcom/iMe/fork/enums/LockedSection;)V

    .line 1101
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lcom/iMe/fork/enums/LockedSection;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-eqz p1, :cond_8

    .line 1102
    invoke-virtual {p1}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeRetryInMs()J

    move-result-wide v0

    cmp-long p1, v0, v5

    if-lez p1, :cond_8

    .line 1103
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkRetryTextView()V

    .line 1105
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1106
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$000(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;Z)V

    .line 1107
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->onPasscodeError()V

    .line 1108
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v0, :cond_9

    .line 1109
    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatePreview(Z)V

    :cond_9
    return-void

    .line 1114
    :cond_a
    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->checkPasscode(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 1115
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->increaseBadPasscodeTries()V

    .line 1116
    sget-wide v0, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    cmp-long p1, v0, v5

    if-lez p1, :cond_b

    .line 1117
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkRetryTextView()V

    .line 1119
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1120
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$000(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;Z)V

    .line 1121
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->onPasscodeError()V

    .line 1122
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v0, :cond_d

    .line 1123
    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    .line 1124
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundAnimationSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_c

    .line 1125
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 1126
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPosAnimationProgress(F)V

    .line 1128
    :cond_c
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPosAnimationProgress()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_d

    .line 1129
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatePreview(Z)V

    :cond_d
    return-void

    .line 1136
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    const/4 v2, 0x0

    if-eqz p1, :cond_f

    .line 1137
    invoke-virtual {p1, v2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setBadPasscodeTries(I)V

    .line 1138
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    invoke-virtual {p1, v2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setSectionLocked(Z)V

    .line 1139
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    invoke-virtual {v0, p1, v3}, Lcom/iMe/fork/controller/LockedSectionsController;->setSectionsPasscodeData(Lcom/iMe/fork/enums/LockedSection;Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;)V

    goto :goto_1

    .line 1141
    :cond_f
    sput v2, Lorg/telegram/messenger/SharedConfig;->badPasscodeTries:I

    .line 1142
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 1143
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1145
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_10

    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->isKeyReady()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->checkDeviceFingerprintsChanged()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1146
    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->deleteInvalidKey()V

    .line 1150
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-nez p1, :cond_11

    .line 1151
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    :cond_11
    if-nez p1, :cond_12

    .line 1154
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 1155
    :cond_12
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1156
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1157
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->delegate:Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;

    if-eqz p1, :cond_13

    .line 1158
    invoke-interface {p1, p0}, Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;->didAcceptedPassword(Lorg/telegram/ui/Components/PasscodeView;)V

    .line 1161
    :cond_13
    new-instance p1, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setNextFocus(Landroid/view/View;I)V
    .locals 2

    .line 1059
    invoke-virtual {p1, p2}, Landroid/view/View;->setNextFocusForwardId(I)V

    .line 1060
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 1061
    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityTraversalBefore(I)V

    :cond_0
    return-void
.end method

.method private shakeTextView(FI)V
    .locals 7

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    return-void

    .line 1181
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/Animator;

    .line 1182
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v1, v1, [F

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    aput v5, v1, v6

    invoke-static {v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x32

    .line 1183
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1184
    new-instance v1, Lorg/telegram/ui/Components/PasscodeView$7;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/Components/PasscodeView$7;-><init>(Lorg/telegram/ui/Components/PasscodeView;IF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1190
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private showFingerprintError(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1734
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImageView:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_fingerprint_error:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1735
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1736
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const v0, -0xbaee2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1737
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    if-eqz p1, :cond_0

    const-wide/16 v0, 0xc8

    .line 1739
    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1741
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    .line 93
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didGenerateFingerprintKeyPair:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkFingerprintButton()V

    .line 95
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    if-eqz p1, :cond_1

    .line 96
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkFingerprint()V

    goto :goto_0

    .line 98
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->passcodeDismissed:I

    if-ne p1, p2, :cond_1

    .line 99
    aget-object p1, p3, v0

    if-eq p1, p0, :cond_1

    const/16 p1, 0x8

    .line 100
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_1

    .line 103
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCurrentLockedSection()Lcom/iMe/fork/enums/LockedSection;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1308
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1310
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didGenerateFingerprintKeyPair:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1311
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->passcodeDismissed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1316
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1318
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didGenerateFingerprintKeyPair:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1319
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->passcodeDismissed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 1857
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1858
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v1, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getViewInset(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 1859
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1860
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->rect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/PasscodeView;->keyboardHeight:I

    .line 1862
    sget-object v0, Lcom/iMe/fork/enums/PasscodeType;->PASSWORD:Lcom/iMe/fork/enums/PasscodeType;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView;->isCurrentPasscodeType(Lcom/iMe/fork/enums/PasscodeType;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_3

    .line 1864
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1865
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1867
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1868
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v0, v4

    iget v4, p0, Lorg/telegram/ui/Components/PasscodeView;->keyboardHeight:I

    div-int/2addr v4, v1

    sub-int/2addr v0, v4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_2
    sub-int/2addr v0, v2

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1869
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1872
    :cond_3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1874
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    iget-object p2, p0, Lorg/telegram/ui/Components/PasscodeView;->pos:[I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 1875
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    const/16 p2, 0x64

    const/4 p3, 0x1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_4

    .line 1876
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object p4, p0, Lorg/telegram/ui/Components/PasscodeView;->pos:[I

    aget p3, p4, p3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p3, p2

    iput p3, p0, Lorg/telegram/ui/Components/PasscodeView;->imageY:I

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_1

    .line 1878
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object p4, p0, Lorg/telegram/ui/Components/PasscodeView;->pos:[I

    aget p3, p4, p3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p3, p2

    iput p3, p0, Lorg/telegram/ui/Components/PasscodeView;->imageY:I

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTranslationY(F)V

    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 1746
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1747
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    sub-int/2addr v1, v5

    .line 1751
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    const/16 v6, 0x1d

    const/high16 v7, 0x40000000    # 2.0f

    const/16 v8, 0x28

    const/4 v9, 0x2

    if-nez v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v9, :cond_5

    .line 1752
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v10, Lcom/iMe/fork/enums/PasscodeType;->PIN:Lcom/iMe/fork/enums/PasscodeType;

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/PasscodeView;->isCurrentPasscodeType(Lcom/iMe/fork/enums/PasscodeType;)Z

    move-result v11

    if-eqz v11, :cond_1

    int-to-float v11, v0

    div-float/2addr v11, v7

    goto :goto_1

    :cond_1
    int-to-float v11, v0

    :goto_1
    div-float/2addr v11, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v11, v6

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1754
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1755
    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/PasscodeView;->isCurrentPasscodeType(Lcom/iMe/fork/enums/PasscodeType;)Z

    move-result v6

    if-eqz v6, :cond_2

    div-int/lit8 v6, v0, 0x2

    goto :goto_2

    :cond_2
    move v6, v0

    :goto_2
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v6, 0x8c

    .line 1756
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1757
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int v6, v1, v6

    div-int/2addr v6, v9

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/PasscodeView;->isCurrentPasscodeType(Lcom/iMe/fork/enums/PasscodeType;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    goto :goto_3

    :cond_3
    move v7, v4

    :goto_3
    add-int/2addr v6, v7

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1758
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1760
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1761
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1762
    div-int/2addr v0, v9

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v1

    if-lt v2, v3, :cond_4

    .line 1763
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_4

    :cond_4
    move v2, v4

    :goto_4
    add-int/2addr v1, v2

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1764
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1765
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a

    .line 1767
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    int-to-float v3, v0

    div-float/2addr v3, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1771
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x1f2

    .line 1772
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-le v0, v3, :cond_6

    .line 1773
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    div-int/2addr v0, v9

    .line 1774
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    move v12, v2

    move v2, v0

    move v0, v12

    goto :goto_5

    :cond_6
    move v2, v4

    :goto_5
    const/16 v3, 0x210

    .line 1776
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    if-le v1, v5, :cond_7

    .line 1777
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v1, v5

    div-int/2addr v1, v9

    .line 1778
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    move v12, v2

    move v2, v1

    move v1, v3

    move v3, v12

    goto :goto_6

    :cond_7
    move v3, v2

    move v2, v4

    goto :goto_6

    :cond_8
    move v2, v4

    move v3, v2

    .line 1781
    :goto_6
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1782
    div-int/lit8 v6, v1, 0x3

    sget-object v7, Lcom/iMe/fork/enums/PasscodeType;->PIN:Lcom/iMe/fork/enums/PasscodeType;

    invoke-direct {p0, v7}, Lorg/telegram/ui/Components/PasscodeView;->isCurrentPasscodeType(Lcom/iMe/fork/enums/PasscodeType;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    goto :goto_7

    :cond_9
    move v10, v4

    :goto_7
    add-int/2addr v10, v6

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1783
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1784
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1785
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1786
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1787
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1789
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/2addr v6, v9

    .line 1790
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1791
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1792
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1793
    iget v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_9

    .line 1795
    :cond_a
    iget v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    invoke-direct {p0, v7}, Lorg/telegram/ui/Components/PasscodeView;->isCurrentPasscodeType(Lcom/iMe/fork/enums/PasscodeType;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    goto :goto_8

    :cond_b
    move v2, v4

    :goto_8
    add-int/2addr v1, v2

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1797
    :goto_9
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1798
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1801
    :goto_a
    iget v0, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x32

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x4

    .line 1802
    iget v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x5

    :goto_b
    const/16 v3, 0xc

    if-ge v4, v3, :cond_11

    const/16 v3, 0xb

    const/16 v5, 0xa

    if-nez v4, :cond_c

    move v3, v5

    goto :goto_c

    :cond_c
    if-ne v4, v5, :cond_d

    goto :goto_c

    :cond_d
    if-ne v4, v3, :cond_e

    const/16 v3, 0x9

    goto :goto_c

    :cond_e
    add-int/lit8 v3, v4, -0x1

    .line 1816
    :goto_c
    div-int/lit8 v6, v3, 0x3

    .line 1817
    rem-int/lit8 v3, v3, 0x3

    if-ge v4, v5, :cond_f

    .line 1820
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView;->numberTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1821
    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->lettersTextViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1822
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1823
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 1824
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v2

    mul-int/2addr v11, v6

    add-int/2addr v11, v2

    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1825
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v0

    mul-int/2addr v6, v3

    add-int/2addr v6, v0

    iput v6, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1826
    iget v3, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v3, v6

    iput v3, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1827
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1828
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    :cond_f
    const/16 v7, 0x8

    if-ne v4, v5, :cond_10

    .line 1830
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView;->eraseView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1831
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v2

    mul-int/2addr v5, v6

    add-int/2addr v5, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1832
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v0

    mul-int/2addr v6, v3

    add-int/2addr v6, v0

    iput v6, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1833
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v11, v5, v3

    .line 1834
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView;->eraseView:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    .line 1836
    :cond_10
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1837
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v2

    mul-int/2addr v5, v6

    add-int/2addr v5, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1838
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v0

    mul-int/2addr v6, v3

    add-int/2addr v6, v0

    iput v6, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1839
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v11, v5, v3

    .line 1840
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1843
    :goto_d
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 1844
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x11

    .line 1845
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v11, v6

    iput v11, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1846
    iget v6, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v7, 0x19

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1847
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    .line 1850
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1285
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->checkRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1286
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1288
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1291
    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1293
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1297
    :cond_1
    :goto_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->cancellationSignal:Landroidx/core/os/CancellationSignal;

    if-eqz v0, :cond_2

    .line 1298
    invoke-virtual {v0}, Landroidx/core/os/CancellationSignal;->cancel()V

    .line 1299
    iput-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->cancellationSignal:Landroidx/core/os/CancellationSignal;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1302
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1266
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkRetryTextView()V

    .line 1267
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1268
    sget-object v0, Lcom/iMe/fork/enums/PasscodeType;->PASSWORD:Lcom/iMe/fork/enums/PasscodeType;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView;->isCurrentPasscodeType(Lcom/iMe/fork/enums/PasscodeType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1269
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    .line 1270
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1271
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 1273
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1280
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkFingerprint()V

    :cond_2
    return-void
.end method

.method public onShow(ZZ)V
    .locals 7

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 1459
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/PasscodeView;->onShow(ZZIILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onShow(ZZIILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 1495
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PasscodeView;->checkFingerprintButton()V

    .line 1496
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PasscodeView;->checkRetryTextView()V

    .line 1497
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1498
    sget-object v3, Lcom/iMe/fork/enums/PasscodeType;->PASSWORD:Lcom/iMe/fork/enums/PasscodeType;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/PasscodeView;->isCurrentPasscodeType(Lcom/iMe/fork/enums/PasscodeType;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p2, :cond_1

    .line 1499
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v2, :cond_1

    .line 1500
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1501
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 1505
    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1507
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 1508
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 1512
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1513
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PasscodeView;->checkFingerprint()V

    .line 1515
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x0

    .line 1518
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/4 v4, 0x0

    .line 1519
    iput-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1520
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/high16 v5, 0x22000000

    const/high16 v6, -0x41000000    # -0.5f

    if-eqz v4, :cond_4

    .line 1521
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1522
    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 1523
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCustomTheme()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getSelectedBackgroundSlug()Ljava/lang/String;

    move-result-object v4

    const-string v7, "CJz3BZ6YGEYBAAAABboWp6SAv04"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getSelectedBackgroundSlug()Ljava/lang/String;

    move-result-object v4

    const-string v7, "qeZWES8rGVIEAAAARfWlK1lnfiI"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1524
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentGradientWallpaper()Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_5

    .line 1526
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1528
    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v4, v4, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    if-eqz v4, :cond_6

    .line 1529
    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_2

    .line 1531
    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_2

    .line 1534
    :cond_7
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getSelectedBackgroundSlug()Ljava/lang/String;

    move-result-object v4

    const-string v7, "d"

    .line 1535
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v7, -0xae8362

    if-nez v4, :cond_b

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isPatternWallpaper()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_1

    .line 1538
    :cond_8
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1539
    instance-of v8, v4, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    if-eqz v8, :cond_9

    .line 1540
    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_2

    :cond_9
    if-eqz v4, :cond_a

    .line 1542
    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_2

    .line 1544
    :cond_a
    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_2

    .line 1536
    :cond_b
    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1548
    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v6, v4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_d

    .line 1549
    check-cast v4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    .line 1550
    invoke-virtual {v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getColors()[I

    move-result-object v6

    .line 1551
    new-instance v15, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget v10, v6, v8

    aget v11, v6, v7

    const/4 v9, 0x2

    aget v12, v6, v9

    const/4 v9, 0x3

    aget v13, v6, v9

    const/4 v14, 0x0

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIZ)V

    iput-object v15, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1552
    invoke-virtual {v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->hasPattern()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getIntensity()I

    move-result v4

    if-gez v4, :cond_c

    .line 1553
    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    const/high16 v5, 0x7f000000

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_3

    .line 1555
    :cond_c
    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1557
    :goto_3
    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setParentView(Landroid/view/View;)V

    .line 1561
    :cond_d
    iget-boolean v4, v0, Lorg/telegram/ui/Components/PasscodeView;->isWalletScreen:Z

    if-eqz v4, :cond_e

    .line 1562
    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_enter_eth_pin_title:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1563
    :cond_e
    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    if-eqz v4, :cond_10

    .line 1564
    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    sget-object v6, Lcom/iMe/fork/enums/LockedSection;->ARCHIVE:Lcom/iMe/fork/enums/LockedSection;

    if-ne v4, v6, :cond_f

    sget v4, Lorg/telegram/messenger/R$string;->enter_archive_passcode:I

    goto :goto_4

    :cond_f
    sget v4, Lorg/telegram/messenger/R$string;->enter_cloud_passcode:I

    :goto_4
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1566
    :cond_10
    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->EnterYourTelegramPasscode:I

    const-string v6, "EnterYourTelegramPasscode"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1568
    :goto_5
    sget-object v4, Lcom/iMe/fork/enums/PasscodeType;->PIN:Lcom/iMe/fork/enums/PasscodeType;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/PasscodeView;->isCurrentPasscodeType(Lcom/iMe/fork/enums/PasscodeType;)Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_12

    .line 1569
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_11

    .line 1570
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1572
    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1573
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1574
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1575
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 1576
    :cond_12
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/PasscodeView;->isCurrentPasscodeType(Lcom/iMe/fork/enums/PasscodeType;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1577
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-array v4, v8, [Landroid/text/InputFilter;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1578
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 1579
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1580
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1581
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1582
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1583
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1584
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1585
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImage:Landroid/widget/ImageView;

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1587
    :cond_13
    :goto_6
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1588
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1589
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1590
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-static {v3, v8}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$000(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;Z)V

    if-eqz p2, :cond_14

    .line 1592
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1593
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/PasscodeView$10;

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct {v3, v0, v4, v5, v1}, Lorg/telegram/ui/Components/PasscodeView$10;-><init>(Lorg/telegram/ui/Components/PasscodeView;IILjava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1718
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_7

    :cond_14
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1720
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1721
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1722
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1723
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieImageView;->stopAnimation()V

    .line 1724
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    const/16 v3, 0x26

    invoke-virtual {v2, v3, v8}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    if-eqz v1, :cond_15

    .line 1726
    invoke-interface/range {p5 .. p5}, Ljava/lang/Runnable;->run()V

    .line 1730
    :cond_15
    :goto_7
    sget-object v1, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda6;->INSTANCE:Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda6;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onWalletPinCodeError()V
    .locals 3

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$000(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;Z)V

    .line 151
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->onPasscodeError()V

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v2, :cond_0

    .line 153
    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatePreview(Z)V

    :cond_0
    return-void
.end method

.method public setCurrentLockedSection(Lcom/iMe/fork/enums/LockedSection;)V
    .locals 1

    .line 137
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    .line 138
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->currentLockedSection:Lcom/iMe/fork/enums/LockedSection;

    invoke-virtual {p1, v0}, Lcom/iMe/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lcom/iMe/fork/enums/LockedSection;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->sectionPasscodeData:Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;)V
    .locals 0

    .line 1066
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->delegate:Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;

    return-void
.end method

.method public setWalletDelegate(Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->walletDelegate:Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;

    return-void
.end method
