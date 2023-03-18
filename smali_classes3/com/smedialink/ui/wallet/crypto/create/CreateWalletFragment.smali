.class public final Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;
.super Lcom/smedialink/ui/base/WalletAuthFragment;
.source "CreateWalletFragment.kt"

# interfaces
.implements Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;,
        Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;,
        Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;,
        Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;,
        Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateWalletFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateWalletFragment.kt\ncom/smedialink/ui/wallet/crypto/create/CreateWalletFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 RxEventBus.kt\ncom/smedialink/storage/domain/utils/rx/RxEventBus\n+ 4 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1387:1\n13#2,4:1388\n16#3,3:1392\n39#4,8:1395\n288#5,2:1403\n1864#5,3:1405\n1855#5,2:1408\n*S KotlinDebug\n*F\n+ 1 CreateWalletFragment.kt\ncom/smedialink/ui/wallet/crypto/create/CreateWalletFragment\n*L\n67#1:1388,4\n896#1:1392,3\n897#1:1395,8\n942#1:1403,2\n980#1:1405,3\n988#1:1408,2\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;


# instance fields
.field private final actionBarBackground$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final buttonCopy$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final buttonPaste$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final buttonQR$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final buttonScanQR$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final buttonTextView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final buttonsLayout$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private cancelOnDestroyRunnable:Ljava/lang/Runnable;

.field private final checkWordIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final clipboardManager$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final columnsLayout$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

.field private final descriptionText$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final descriptionText2$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final editTextContainer$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final editTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentToRemove:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

.field private globalIgnoreTextChange:Z

.field private final hintAdapter$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private hintEditText:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

.field private hintLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final hintListView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final hintPopupLayout$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final hintPopupWindow$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private hintWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final imageView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final leftColumn$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private maxEditNumberWidth:I

.field private maxNumberWidth:I

.field private needHideKeyboardOnPause:Z

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final qrCodeBottomSheet$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final rightColumn$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final scrollView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final titleTextView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private walletAddress:Ljava/lang/String;

.field private final wordsTextViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$AD3YhFC1pwUE21ysQfuUr868-s0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createContainer$lambda$5$lambda$4(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JTqasYHBpqa1N_UfQA79S3Pdxvk(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createHintPopupLayout$lambda$16$lambda$15(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OrqKpNN9o5zq6Yq_PC3GMzSar44(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->prepareCorrectEditTextInput$lambda$41$lambda$40$lambda$39(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$apXD1Ts9KTdKk_Kvcld1heG4sd4(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createHintListView$lambda$20$lambda$19(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lwjNOrgtyDRjCIIZq1R8L-e_N1o(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->onTransitionAnimationEnd$lambda$2(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nl74lU_3OZEXN1uc4mL0l1QSAYI(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->onFragmentCreate$lambda$0(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    const/16 v1, 0x17

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 67
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 72
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "imageView"

    const-string v4, "getImageView()Lorg/telegram/ui/Components/RLottieImageView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 73
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "buttonTextView"

    const-string v4, "getButtonTextView()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 74
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "titleTextView"

    const-string v4, "getTitleTextView()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 75
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "descriptionText"

    const-string v4, "getDescriptionText()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 76
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "descriptionText2"

    const-string v4, "getDescriptionText2()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 77
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "actionBarBackground"

    const-string v4, "getActionBarBackground()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 78
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "hintAdapter"

    const-string v4, "getHintAdapter()Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 79
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "hintListView"

    const-string v4, "getHintListView()Lorg/telegram/ui/Components/RecyclerListView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 80
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "hintPopupWindow"

    const-string v4, "getHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 81
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "hintPopupLayout"

    const-string v4, "getHintPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 82
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "scrollView"

    const-string v4, "getScrollView()Landroid/widget/ScrollView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 83
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "editTextContainer"

    const-string v4, "getEditTextContainer()Landroid/widget/LinearLayout;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 84
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "leftColumn"

    const-string v4, "getLeftColumn()Landroid/widget/LinearLayout;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 85
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "rightColumn"

    const-string v4, "getRightColumn()Landroid/widget/LinearLayout;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 86
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "qrCodeBottomSheet"

    const-string v4, "getQrCodeBottomSheet()Lorg/telegram/ui/Components/QRCodeBottomSheet;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 87
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "buttonsLayout"

    const-string v4, "getButtonsLayout()Landroid/widget/LinearLayout;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 88
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "columnsLayout"

    const-string v4, "getColumnsLayout()Landroid/widget/LinearLayout;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 89
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "buttonCopy"

    const-string v4, "getButtonCopy()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 90
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "buttonQR"

    const-string v4, "getButtonQR()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 91
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "buttonPaste"

    const-string v4, "getButtonPaste()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 92
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "buttonScanQR"

    const-string v4, "getButtonScanQR()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0x15

    aput-object v2, v1, v3

    .line 93
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "clipboardManager"

    const-string v4, "getClipboardManager()Landroid/content/ClipboardManager;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/16 v2, 0x16

    aput-object v0, v1, v2

    sput-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;)V
    .locals 4

    const-string v0, "currentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    .line 67
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$presenter$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    .line 16
    new-instance v0, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 67
    iput-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 72
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$imageView$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$imageView$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->imageView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 73
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$buttonTextView$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$buttonTextView$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->buttonTextView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 74
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$titleTextView$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$titleTextView$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->titleTextView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 75
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$descriptionText$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$descriptionText$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->descriptionText$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 76
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$descriptionText2$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$descriptionText2$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->descriptionText2$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 77
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$actionBarBackground$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$actionBarBackground$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->actionBarBackground$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 78
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$hintAdapter$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$hintAdapter$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->hintAdapter$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 79
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$hintListView$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$hintListView$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->hintListView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 80
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$hintPopupWindow$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$hintPopupWindow$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->hintPopupWindow$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 81
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$hintPopupLayout$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$hintPopupLayout$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->hintPopupLayout$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 82
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$scrollView$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$scrollView$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->scrollView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 83
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$editTextContainer$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$editTextContainer$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->editTextContainer$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 84
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$leftColumn$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$leftColumn$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->leftColumn$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 85
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$rightColumn$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$rightColumn$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->rightColumn$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 86
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$qrCodeBottomSheet$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$qrCodeBottomSheet$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->qrCodeBottomSheet$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 87
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$buttonsLayout$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$buttonsLayout$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->buttonsLayout$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 88
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$columnsLayout$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$columnsLayout$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->columnsLayout$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 89
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$buttonCopy$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$buttonCopy$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->buttonCopy$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 90
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$buttonQR$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$buttonQR$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->buttonQR$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 91
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$buttonPaste$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$buttonPaste$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->buttonPaste$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 92
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$buttonScanQR$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$buttonScanQR$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->buttonScanQR$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 93
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$clipboardManager$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$clipboardManager$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->clipboardManager$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->checkWordIndices:Ljava/util/List;

    .line 97
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    .line 98
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->wordsTextViews:Ljava/util/List;

    .line 104
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->hintWords:Ljava/util/List;

    .line 108
    iput-boolean v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->needHideKeyboardOnPause:Z

    const-string p1, ""

    .line 109
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->walletAddress:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$checkEditTexts(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Z
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->checkEditTexts()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$createActionBarBackground(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/view/View;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createActionBarBackground()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createButtonTextView(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createButtonTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createCopyButton(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createCopyButton()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createDescriptionTextView(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createDescriptionTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createDescriptionTextView2(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createDescriptionTextView2()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createHintAdapter(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createHintAdapter()Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createHintListView(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createHintListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createHintPopupLayout(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createHintPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createHintPopupWindow(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createImageView(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createPasteButton(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createPasteButton()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createQRButton(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createQRButton()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createQRCodeBottomSheet(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/Components/QRCodeBottomSheet;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createQRCodeBottomSheet()Lorg/telegram/ui/Components/QRCodeBottomSheet;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createScanQRButton(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createScanQRButton()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createScrollView(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/ScrollView;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createScrollView()Landroid/widget/ScrollView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createTitleTextView(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createTitleTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createVerticalLinearLayout(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createVerticalLinearLayout()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$fillEditTextContainer(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->fillEditTextContainer(I)V

    return-void
.end method

.method public static final synthetic access$generatePdf(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->generatePdf()V

    return-void
.end method

.method public static final synthetic access$getActionBar$p$s1606076837(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method public static final synthetic access$getActionBarBackground(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/view/View;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getActionBarBackground()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getButtonTextView(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getButtonTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCheckWordIndices$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Ljava/util/List;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->checkWordIndices:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getClipboardText(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getClipboardText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCurrentType$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    return-object p0
.end method

.method public static final synthetic access$getDescriptionText(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDescriptionText2(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText2()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEditTexts$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Ljava/util/List;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getFragmentView$p$s1606076837(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/view/View;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getGlobalIgnoreTextChange$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->globalIgnoreTextChange:Z

    return p0
.end method

.method public static final synthetic access$getHintAdapter(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getHintAdapter()Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHintEditText$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->hintEditText:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    return-object p0
.end method

.method public static final synthetic access$getHintLayoutManager$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->hintLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method public static final synthetic access$getHintPopupLayout(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getHintPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHintPopupWindow(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHintWords$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Ljava/util/List;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->hintWords:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getImageView(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMaxEditNumberWidth$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->maxEditNumberWidth:I

    return p0
.end method

.method public static final synthetic access$getMaxNumberWidth$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->maxNumberWidth:I

    return p0
.end method

.method public static final synthetic access$getParentLayout$p$s1606076837(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method public static final synthetic access$getPresenter(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getPresenter()Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getQrCodeBottomSheet(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/Components/QRCodeBottomSheet;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getQrCodeBottomSheet()Lorg/telegram/ui/Components/QRCodeBottomSheet;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScrollView(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/ScrollView;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getScrollView()Landroid/widget/ScrollView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTitleTextView(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$hideHint(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->hideHint()V

    return-void
.end method

.method public static final synthetic access$openQRScan(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->openQRScan()V

    return-void
.end method

.method public static final synthetic access$pasteToEditText(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->pasteToEditText(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setFragmentToRemove$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->fragmentToRemove:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    return-void
.end method

.method public static final synthetic access$setHintEditText$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->hintEditText:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    return-void
.end method

.method public static final synthetic access$setMaxEditNumberWidth$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->maxEditNumberWidth:I

    return-void
.end method

.method public static final synthetic access$setMaxNumberWidth$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->maxNumberWidth:I

    return-void
.end method

.method private final canGoBack()Z
    .locals 2

    .line 1007
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Ready;->INSTANCE:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Ready;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final checkEditTexts()Z
    .locals 4

    .line 988
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    .line 989
    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 990
    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    .line 991
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 992
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 993
    invoke-static {v0, v2}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->shake(Landroid/view/View;Z)V

    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method private final createActionBarBackground()Landroid/view/View;
    .locals 2

    .line 467
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createActionBarBackground$1;

    invoke-direct {v1, p0, v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createActionBarBackground$1;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 477
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    return-object v1
.end method

.method private final createButtonTextView()Landroid/widget/TextView;
    .locals 7

    .line 717
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x22

    .line 718
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v6, v0}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    const/16 v0, 0x11

    .line 719
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setGravity(I)V

    const-string v0, "featuredStickers_buttonText"

    .line 720
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    const/high16 v1, 0x41600000    # 14.0f

    .line 721
    invoke-virtual {v6, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 722
    invoke-static {v6}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/4 v0, 0x4

    .line 724
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const-string v1, "featuredStickers_addButton"

    .line 725
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "featuredStickers_addButtonPressed"

    .line 726
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    .line 723
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 728
    new-instance v3, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;

    invoke-direct {v3, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-object v6
.end method

.method private final createClickableText(ILkotlin/jvm/functions/Function0;)Landroid/text/SpannableString;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/text/SpannableString;"
        }
    .end annotation

    .line 961
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 962
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createClickableText$1$1;

    invoke-direct {p1, p2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createClickableText$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 966
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/4 v1, 0x0

    const/16 v2, 0x21

    .line 962
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private final createContainer()Landroid/view/ViewGroup;
    .locals 19

    move-object/from16 v0, p0

    .line 294
    iget-object v1, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    .line 295
    instance-of v2, v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Ready;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 296
    :cond_0
    instance-of v2, v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$TooBad;

    :goto_0
    const-string v4, "windowBackgroundWhiteBlueText2"

    if-eqz v2, :cond_2

    .line 297
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getButtonTextView()Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x96

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 298
    iget-object v1, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    instance-of v1, v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$TooBad;

    if-eqz v1, :cond_1

    .line 299
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText2()Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    .line 300
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 301
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 304
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;

    invoke-direct {v2, v0, v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/app/Activity;)V

    .line 359
    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda0;->INSTANCE:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 360
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 361
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 362
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 363
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 364
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText2()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 365
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getButtonTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_a

    .line 368
    :cond_2
    instance-of v2, v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    .line 369
    :cond_3
    instance-of v2, v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;

    :goto_1
    if-eqz v2, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    .line 370
    :cond_4
    instance-of v1, v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;

    :goto_2
    if-eqz v1, :cond_f

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getButtonTextView()Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0xdc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 373
    iget-object v1, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    instance-of v1, v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;

    if-eqz v1, :cond_5

    .line 374
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText2()Landroid/widget/TextView;

    move-result-object v1

    .line 375
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v2, 0x41700000    # 15.0f

    .line 376
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 379
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createContainer$5;

    invoke-direct {v2, v0, v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createContainer$5;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/app/Activity;)V

    .line 396
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 397
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 398
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 399
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v4

    const/4 v5, -0x1

    const/16 v6, 0x33

    invoke-static {v5, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v4

    const/4 v7, -0x2

    const/4 v8, -0x2

    const/16 v9, 0x31

    const/4 v10, 0x0

    const/16 v11, 0x45

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v4

    const/16 v11, 0x8

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText()Landroid/widget/TextView;

    move-result-object v4

    const/16 v11, 0x9

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText2()Landroid/widget/TextView;

    move-result-object v4

    const/16 v11, 0x11

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v4, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    instance-of v5, v4, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-eqz v5, :cond_b

    .line 406
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getButtonsLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    .line 407
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getButtonCopy()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;

    move-result-object v5

    invoke-static {v9, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getButtonQR()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v13, 0xc

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, -0x1

    const/16 v12, 0x31

    const/16 v13, 0x24

    const/16 v14, 0x1e

    const/16 v15, 0x24

    .line 409
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getColumnsLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    .line 412
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getLeftColumn()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-static {v8, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getRightColumn()Landroid/widget/LinearLayout;

    move-result-object v5

    const/4 v10, -0x2

    const/16 v12, 0x39

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v12, 0x31

    const/16 v14, 0x1e

    .line 414
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    iput v9, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->maxNumberWidth:I

    const/4 v4, 0x0

    :goto_3
    const/4 v5, 0x2

    if-ge v4, v5, :cond_e

    if-nez v4, :cond_6

    .line 418
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getLeftColumn()Landroid/widget/LinearLayout;

    move-result-object v5

    goto :goto_4

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getRightColumn()Landroid/widget/LinearLayout;

    move-result-object v5

    .line 419
    :goto_4
    iget-object v7, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    check-cast v7, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    invoke-virtual {v7}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;->getSecretWords()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 420
    div-int/lit8 v8, v7, 0x2

    if-eqz v4, :cond_7

    rem-int/lit8 v7, v7, 0x2

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    :goto_5
    add-int/2addr v7, v8

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v7, :cond_a

    .line 422
    new-instance v11, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "parentActivity"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v0, v12}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/content/Context;)V

    if-nez v4, :cond_8

    const/4 v12, 0x0

    goto :goto_7

    :cond_8
    move v12, v8

    :goto_7
    add-int/2addr v12, v10

    .line 424
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 425
    iget-object v13, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    check-cast v13, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    invoke-virtual {v13}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;->getSecretWords()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v13, 0x41800000    # 16.0f

    .line 426
    invoke-virtual {v11, v3, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v13, "windowBackgroundWhiteBlackText"

    .line 427
    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 428
    invoke-static {v11}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 430
    sget-object v13, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 431
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v14, v3, [Ljava/lang/Object;

    add-int/2addr v12, v3

    .line 433
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v9

    .line 430
    invoke-static {v14, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    const-string v14, "%d."

    invoke-static {v13, v14, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "format(locale, format, *args)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-virtual {v11, v12}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;->setNumber(Ljava/lang/String;)V

    .line 437
    iget-object v12, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->wordsTextViews:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v13, -0x2

    const/4 v14, -0x2

    const/4 v15, 0x0

    if-nez v10, :cond_9

    const/16 v16, 0x0

    goto :goto_8

    :cond_9
    const/16 v12, 0xa

    const/16 v16, 0xa

    :goto_8
    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 440
    invoke-static/range {v13 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    .line 438
    invoke-virtual {v5, v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 448
    :cond_b
    instance-of v4, v4, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;

    if-eqz v4, :cond_c

    .line 449
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getButtonsLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    .line 450
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getButtonPaste()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;

    move-result-object v5

    invoke-static {v9, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getButtonScanQR()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v13, 0xc

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, -0x1

    const/16 v12, 0x31

    const/16 v13, 0x24

    const/16 v14, 0x1e

    const/16 v15, 0x24

    .line 452
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    :cond_c
    iput v9, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->maxEditNumberWidth:I

    .line 456
    iget-object v4, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    instance-of v4, v4, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;

    if-eqz v4, :cond_d

    const/16 v4, 0x18

    goto :goto_9

    :cond_d
    const/4 v4, 0x3

    :goto_9
    invoke-direct {v0, v4}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->fillEditTextContainer(I)V

    .line 457
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getEditTextContainer()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-static {v8, v8, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getButtonTextView()Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, -0x2

    const/16 v5, 0x2a

    const/16 v6, 0x31

    const/4 v7, 0x0

    const/16 v8, 0x24

    const/4 v9, 0x0

    const/16 v10, 0x21

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getActionBarBackground()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 461
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_a
    return-object v2

    :cond_f
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1
.end method

.method private static final createContainer$lambda$5$lambda$4(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private final createCopyButton()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;
    .locals 7

    .line 650
    new-instance v6, Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 651
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_copy_filled:I

    sget v1, Lorg/telegram/messenger/R$string;->Copy:I

    const-string v2, "Copy"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(\"Copy\", R.string.Copy)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;->setupView(ILjava/lang/String;)V

    .line 652
    new-instance v3, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createCopyButton$1$1;

    invoke-direct {v3, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createCopyButton$1$1;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-object v6
.end method

.method private final createDescriptionTextView()Landroid/widget/TextView;
    .locals 4

    .line 700
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "windowBackgroundWhiteGrayText6"

    .line 701
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    .line 702
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x2

    .line 703
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/high16 v2, 0x41700000    # 15.0f

    .line 704
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x20

    .line 705
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    return-object v0
.end method

.method private final createDescriptionTextView2()Landroid/widget/TextView;
    .locals 3

    .line 708
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "windowBackgroundWhiteGrayText6"

    .line 709
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    .line 710
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x2

    .line 711
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/16 v1, 0x20

    .line 712
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    .line 713
    new-instance v1, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v1}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/16 v1, 0x8

    .line 714
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-object v0
.end method

.method private final createHintAdapter()Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;
    .locals 3

    .line 534
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "parentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/content/Context;)V

    return-object v0
.end method

.method private final createHintListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 4

    .line 521
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 522
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getHintAdapter()Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/16 v1, 0x9

    .line 523
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    .line 524
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 525
    iput-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->hintLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 524
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 527
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 528
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda6;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-object v0
.end method

.method private static final createHintListView$lambda$20$lambda$19(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/view/View;I)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->hintEditText:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getHintAdapter()Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->setText(Ljava/lang/CharSequence;)V

    .line 530
    :goto_0
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void
.end method

.method private final createHintPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 4

    .line 481
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 482
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 483
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    .line 484
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createHintPopupLayout$1$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createHintPopupLayout$1$1;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 499
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda5;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 504
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getHintListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, -0x1

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static final createHintPopupLayout$lambda$16$lambda$15(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/view/KeyEvent;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 501
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private final createHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 4

    .line 507
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 508
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getHintPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v1

    const/4 v2, -0x2

    .line 507
    invoke-direct {v0, v1, v2, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    const/4 v1, 0x0

    .line 512
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 513
    sget v2, Lorg/telegram/messenger/R$style;->PopupAnimation:I

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const/4 v2, 0x1

    .line 514
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const/4 v3, 0x2

    .line 515
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 516
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 517
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 518
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-object v0
.end method

.method private final createImageView()Lorg/telegram/ui/Components/RLottieImageView;
    .locals 2

    .line 689
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    .line 690
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method private final createPasteButton()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;
    .locals 7

    .line 657
    new-instance v6, Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 658
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_paste_24:I

    sget v1, Lorg/telegram/messenger/R$string;->wallet_import_paste:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getInternalString(R.string.wallet_import_paste)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;->setupView(ILjava/lang/String;)V

    .line 659
    new-instance v3, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createPasteButton$1$1;

    invoke-direct {v3, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createPasteButton$1$1;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-object v6
.end method

.method private final createQRButton()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;
    .locals 7

    .line 664
    new-instance v6, Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 665
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    sget v1, Lorg/telegram/messenger/R$string;->GetQRCode:I

    const-string v2, "GetQRCode"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(\"GetQRCode\", R.string.GetQRCode)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;->setupView(ILjava/lang/String;)V

    .line 666
    new-instance v3, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createQRButton$1$1;

    invoke-direct {v3, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createQRButton$1$1;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-object v6
.end method

.method private final createQRCodeBottomSheet()Lorg/telegram/ui/Components/QRCodeBottomSheet;
    .locals 4

    .line 639
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 641
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    const-string v2, "null cannot be cast to non-null type com.smedialink.ui.wallet.crypto.create.CreateWalletFragment.ScreenType.SecretWords"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;->getSecretWords()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/storage/data/utils/extentions/StringExtKt;->joinBySpace(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 642
    sget v2, Lorg/telegram/messenger/R$string;->wallet_backup_secret_words_qr_description:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    .line 638
    new-instance v3, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createQRCodeBottomSheet$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createQRCodeBottomSheet$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private final createScanQRButton()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;
    .locals 7

    .line 678
    new-instance v6, Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 679
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_backup_scan_qr:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;->setupView(ILjava/lang/String;)V

    .line 680
    new-instance v3, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createScanQRButton$1$1;

    invoke-direct {v3, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createScanQRButton$1$1;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-object v6
.end method

.method private final createScrollView()Landroid/widget/ScrollView;
    .locals 2

    .line 536
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;

    invoke-direct {v1, p0, v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 631
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    return-object v1
.end method

.method private final createTitleTextView()Landroid/widget/TextView;
    .locals 3

    .line 693
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "windowBackgroundWhiteBlackText"

    .line 694
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    .line 695
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v2, 0x20

    .line 696
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    const/high16 v2, 0x41c00000    # 24.0f

    .line 697
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final createVerticalLinearLayout()Landroid/widget/LinearLayout;
    .locals 2

    .line 634
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 635
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-object v0
.end method

.method private final fillEditTextContainer(I)V
    .locals 12

    .line 910
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 911
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int v2, p1, v2

    if-gez v2, :cond_0

    .line 913
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 914
    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    .line 915
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    .line 916
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 917
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 919
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getEditTextContainer()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/widget/LinearLayout;->removeViews(II)V

    goto :goto_3

    .line 921
    :cond_0
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v2, p1, :cond_3

    .line 922
    new-instance v3, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "parentActivity"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v5, p1, -0x1

    if-ne v2, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-direct {v3, p0, v4, v2, v5}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/content/Context;IZ)V

    .line 923
    iget-object v4, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getEditTextContainer()Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0xdc

    const/16 v6, 0x24

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v2, :cond_2

    const/16 v9, 0x15

    goto :goto_2

    :cond_2
    const/16 v9, 0xd

    :goto_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 926
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 924
    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 936
    invoke-direct {p0, v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->prepareCorrectEditTextInput(Z)V

    :cond_4
    return-void
.end method

.method private final generatePdf()V
    .locals 8

    .line 1010
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    instance-of v0, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    if-eqz v0, :cond_0

    .line 1011
    sget-object v0, Lcom/smedialink/utils/helper/wallet/BackupPdfHelper;->INSTANCE:Lcom/smedialink/utils/helper/wallet/BackupPdfHelper;

    .line 1012
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "parentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1013
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->walletAddress:Ljava/lang/String;

    .line 1014
    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    check-cast v3, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    invoke-virtual {v3}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;->getSecretWords()Ljava/util/List;

    move-result-object v3

    .line 1015
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getQrCodeBottomSheet()Lorg/telegram/ui/Components/QRCodeBottomSheet;

    move-result-object v4

    .line 1016
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    .line 1017
    iget-object v6, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    check-cast v6, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    invoke-virtual {v6}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;->getSecretWords()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/smedialink/storage/data/utils/extentions/StringExtKt;->joinBySpace(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 1015
    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->createQR(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v5, "qrCodeBottomSheet.create\u2026ull\n                    )"

    .line 1017
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smedialink/utils/helper/wallet/BackupPdfHelper;->generatePdf(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private final getActionBarBackground()Landroid/view/View;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->actionBarBackground$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getButtonCopy()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->buttonCopy$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;

    return-object v0
.end method

.method private final getButtonPaste()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->buttonPaste$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;

    return-object v0
.end method

.method private final getButtonQR()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->buttonQR$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;

    return-object v0
.end method

.method private final getButtonScanQR()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->buttonScanQR$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;

    return-object v0
.end method

.method private final getButtonTextView()Landroid/widget/TextView;
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->buttonTextView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getButtonsLayout()Landroid/widget/LinearLayout;
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->buttonsLayout$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getClipboardManager()Landroid/content/ClipboardManager;
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->clipboardManager$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    return-object v0
.end method

.method private final getClipboardText()Ljava/lang/String;
    .locals 4

    .line 970
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, ""

    if-eqz v0, :cond_1

    goto :goto_3

    .line 973
    :cond_1
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v0

    .line 975
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v1, [C

    const-string v3, " "

    invoke-static {v3}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v3

    aput-char v3, v1, v2

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v3

    :goto_3
    return-object v3
.end method

.method private final getColumnsLayout()Landroid/widget/LinearLayout;
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->columnsLayout$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getDescriptionText()Landroid/widget/TextView;
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->descriptionText$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getDescriptionText2()Landroid/widget/TextView;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->descriptionText2$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getEditTextContainer()Landroid/widget/LinearLayout;
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->editTextContainer$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getHintAdapter()Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->hintAdapter$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;

    return-object v0
.end method

.method private final getHintListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->hintListView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getHintPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->hintPopupLayout$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    return-object v0
.end method

.method private final getHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->hintPopupWindow$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object v0
.end method

.method private final getImageView()Lorg/telegram/ui/Components/RLottieImageView;
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->imageView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RLottieImageView;

    return-object v0
.end method

.method private final getLeftColumn()Landroid/widget/LinearLayout;
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->leftColumn$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getPresenter()Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;

    return-object v0
.end method

.method private final getQrCodeBottomSheet()Lorg/telegram/ui/Components/QRCodeBottomSheet;
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->qrCodeBottomSheet$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;

    return-object v0
.end method

.method private final getRightColumn()Landroid/widget/LinearLayout;
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->rightColumn$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getScrollView()Landroid/widget/ScrollView;
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->scrollView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    return-object v0
.end method

.method private final getTitleTextView()Landroid/widget/TextView;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->titleTextView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final hideHint()V
    .locals 1

    .line 1002
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public static final newInstance(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;
    .locals 1

    sget-object v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;->newInstance(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object p0

    return-object p0
.end method

.method private static final onFragmentCreate$lambda$0(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    :goto_0
    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->cancelOnDestroyRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static final onTransitionAnimationEnd$lambda$2(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private final openQRScan()V
    .locals 2

    .line 1029
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$openQRScan$1;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$openQRScan$1;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    const/4 v1, 0x1

    .line 1025
    invoke-static {p0, v1, v1, v0, v1}, Lorg/telegram/ui/CameraScanActivity;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Z)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private final pasteToEditText(Ljava/lang/String;)V
    .locals 6

    .line 979
    invoke-static {p1}, Lcom/smedialink/storage/data/utils/extentions/StringExtKt;->splitBySpace(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 980
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    .line 1865
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    .line 981
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-gt v2, v5, :cond_1

    .line 982
    invoke-virtual {v3}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    move v2, v4

    goto :goto_0

    .line 984
    :cond_2
    invoke-direct {p0, v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->prepareCorrectEditTextInput(Z)V

    return-void
.end method

.method private final prepareCorrectEditTextInput(Z)V
    .locals 4

    .line 941
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    .line 288
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    .line 942
    invoke-virtual {v3}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    check-cast v2, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    if-nez v2, :cond_3

    .line 944
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    .line 945
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 947
    :cond_3
    invoke-virtual {v2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    .line 948
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 949
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setSelectionEnd(Landroid/widget/EditText;)V

    .line 950
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    if-eqz p1, :cond_4

    const-wide/16 v2, 0x190

    goto :goto_2

    :cond_4
    const-wide/16 v2, 0x0

    :goto_2
    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static final prepareCorrectEditTextInput$lambda$41$lambda$40$lambda$39(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 951
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private final setupActionBar()V
    .locals 5

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 857
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->canGoBack()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 858
    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v1, 0x0

    .line 860
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const-string v1, "windowBackgroundWhiteBlackText"

    .line 861
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    const-string v1, "windowBackgroundWhiteGrayText2"

    .line 862
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    const-string v1, "actionBarWhiteSelector"

    .line 863
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 864
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 865
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 866
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setY(F)V

    .line 867
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setExtraHeight(I)V

    .line 868
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 869
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 870
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionModeTop()V

    .line 872
    :cond_1
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    instance-of v1, v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    if-eqz v1, :cond_2

    .line 873
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 874
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->OPTIONS:I

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    .line 875
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v3, "AccDescrMoreOptions"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 876
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->PDF:I

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_pdf_24:I

    sget v4, Lorg/telegram/messenger/R$string;->wallet_backup_secret_words_pdf:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 880
    :cond_2
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupActionBar$1$2;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupActionBar$1$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupEventListeners()V
    .locals 4

    .line 892
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    instance-of v0, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;

    if-nez v0, :cond_0

    return-void

    .line 895
    :cond_0
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getRxEventBus()Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;

    .line 17
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->ofType(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->getSchedulersProvider()Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "publisher\n              \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupEventListeners$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupEventListeners$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    new-instance v3, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupEventListeners$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupEventListeners$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 906
    invoke-virtual {p0, v0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->autoDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private final setupViewsContents()V
    .locals 8

    .line 784
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    .line 785
    instance-of v1, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    const/4 v2, 0x0

    const/16 v3, 0x70

    if-eqz v1, :cond_0

    .line 786
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->fork_wallet_note:I

    invoke-virtual {v0, v1, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 787
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_backup_secret_words_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 788
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_backup_secret_words:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_backup_secret_words_info:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getButtonTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_backup_done:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .line 793
    :cond_0
    instance-of v1, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    .line 794
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->wallet_science:I

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 795
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_backup_test_time_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 796
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_backup_test_time:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_backup_test_time_info:I

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->checkWordIndices:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    add-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->checkWordIndices:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    add-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->checkWordIndices:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    add-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getButtonTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_backup_continue:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .line 801
    :cond_1
    instance-of v1, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Ready;

    if-eqz v1, :cond_2

    .line 802
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->wallet_allset:I

    const/16 v2, 0x82

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 803
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 804
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_backup_ready:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_backup_ready_info:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getButtonTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_backup_view:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 808
    :cond_2
    instance-of v1, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;

    if-eqz v1, :cond_4

    .line 809
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->fork_wallet_note:I

    invoke-virtual {v0, v1, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 810
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_import_secret_words:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 811
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_import_info:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getButtonTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_backup_continue:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 815
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText2()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 816
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText2()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 818
    sget v2, Lorg/telegram/messenger/R$string;->wallet_import_dont_have:I

    new-instance v3, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$1;

    invoke-direct {v3, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$1;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-direct {p0, v2, v3}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createClickableText(ILkotlin/jvm/functions/Function0;)Landroid/text/SpannableString;

    move-result-object v2

    .line 817
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 826
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getCryptoPreferenceHelper()Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    sget-object v3, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    if-ne v2, v3, :cond_3

    new-array v2, v4, [Ljava/lang/CharSequence;

    const-string v3, "\n"

    aput-object v3, v2, v7

    aput-object v3, v2, v6

    .line 830
    sget v3, Lorg/telegram/messenger/R$string;->wallet_import_change_words_count:I

    new-instance v4, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$2;

    invoke-direct {v4, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-direct {p0, v3, v4}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createClickableText(ILkotlin/jvm/functions/Function0;)Landroid/text/SpannableString;

    move-result-object v3

    aput-object v3, v2, v5

    .line 827
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->append(Ljava/lang/Appendable;[Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 816
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 841
    :cond_4
    instance-of v0, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$TooBad;

    if-eqz v0, :cond_5

    .line 842
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 843
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->fork_wallet_too_bad:I

    const/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 844
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_import_too_bad:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_import_too_bad_info:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getButtonTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_import_too_bad_enter:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText2()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 848
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText2()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_import_too_bad_create:I

    new-instance v2, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$2;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-direct {p0, v1, v2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createClickableText(ILkotlin/jvm/functions/Function0;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public createNewWallet()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->fragmentToRemove:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    .line 244
    :cond_0
    sget-object v0, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;->newInstance$default(Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType;ILjava/lang/Object;)Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 245
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public createNewWalletWithPassword(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "words"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->fragmentToRemove:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    .line 251
    :cond_0
    sget-object v0, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;

    .line 252
    new-instance v1, Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType$Backup;

    .line 251
    new-instance v2, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createNewWalletWithPassword$1;

    invoke-direct {v2, p1, p2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createNewWalletWithPassword$1;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 252
    invoke-direct {v1, v2}, Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType$Backup;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 251
    invoke-virtual {v0, v1}, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;->newInstance(Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType;)Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    move-result-object p1

    .line 250
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 262
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x14

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 266
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 267
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "windowBackgroundWhiteBlackText"

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 268
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "windowBackgroundWhiteGrayText2"

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 269
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v12, 0x0

    const-string v13, "actionBarWhiteSelector"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v3, v1, v5

    .line 270
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getActionBarBackground()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    const-string v13, "windowBackgroundWhite"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x4

    aput-object v3, v1, v5

    .line 271
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getHintListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Landroid/widget/TextView;

    aput-object v5, v9, v2

    const-string v13, "actionBarDefaultSubmenuItem"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x5

    aput-object v3, v1, v5

    .line 272
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getEditTextContainer()Landroid/widget/LinearLayout;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    aput-object v5, v9, v2

    const-string v5, "editText"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const-string v14, "windowBackgroundWhiteBlackText"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v6, 0x6

    aput-object v3, v1, v6

    .line 273
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getEditTextContainer()Landroid/widget/LinearLayout;

    move-result-object v8

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    aput-object v6, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    const-string v15, "windowBackgroundWhiteBlackText"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x7

    aput-object v3, v1, v5

    .line 274
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getEditTextContainer()Landroid/widget/LinearLayout;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    aput-object v5, v9, v2

    const-string v5, "deleteImageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const-string v14, "windowBackgroundWhiteGrayText7"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x8

    aput-object v3, v1, v5

    .line 275
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getEditTextContainer()Landroid/widget/LinearLayout;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v13, "windowBackgroundWhiteHintText"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x9

    aput-object v3, v1, v5

    .line 276
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getLeftColumn()Landroid/widget/LinearLayout;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;

    aput-object v5, v9, v2

    const-string v13, "windowBackgroundWhiteBlackText"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0xa

    aput-object v3, v1, v5

    .line 277
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getRightColumn()Landroid/widget/LinearLayout;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;

    aput-object v5, v9, v2

    const-string v13, "windowBackgroundWhiteBlackText"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0xb

    aput-object v3, v1, v5

    .line 278
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getLeftColumn()Landroid/widget/LinearLayout;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;

    aput-object v5, v9, v2

    const/4 v8, 0x0

    const-string v13, "windowBackgroundWhiteHintText"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0xc

    aput-object v3, v1, v5

    .line 279
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getRightColumn()Landroid/widget/LinearLayout;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v4, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;

    aput-object v4, v9, v2

    const-string v13, "windowBackgroundWhiteHintText"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v3, v1, v2

    .line 280
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v11, "windowBackgroundWhiteBlackText"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 281
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText()Landroid/widget/TextView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v11, "windowBackgroundWhiteGrayText6"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 282
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText2()Landroid/widget/TextView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    const-string v11, "windowBackgroundWhiteBlueText2"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 283
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getButtonTextView()Landroid/widget/TextView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v11, "featuredStickers_buttonText"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 284
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getButtonTextView()Landroid/widget/TextView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    const-string v11, "featuredStickers_addButton"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 285
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getButtonTextView()Landroid/widget/TextView;

    move-result-object v5

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v6, v3, v4

    const-string v11, "featuredStickers_addButtonPressed"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 265
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public onBackPressed()Z
    .locals 1

    .line 223
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public onBeginSlide()V
    .locals 0

    .line 195
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBeginSlide()V

    .line 196
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->hideHint()V

    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->setupActionBar()V

    .line 156
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->setupEventListeners()V

    .line 157
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createContainer()Landroid/view/ViewGroup;

    move-result-object p1

    .line 158
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    instance-of v0, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setKeepScreenOn(Z)V

    const-string v0, "windowBackgroundWhite"

    .line 159
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 157
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 161
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->setupViewsContents()V

    .line 162
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 163
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const-string v0, "fragmentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onFragmentCreate()Z
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    .line 115
    instance-of v1, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;

    if-eqz v1, :cond_2

    .line 116
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->checkWordIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->checkWordIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 118
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    check-cast v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;

    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;->getSecretWords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->checkWordIndices:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->checkWordIndices:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->checkWordIndices:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    goto :goto_1

    .line 126
    :cond_2
    instance-of v0, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    if-eqz v0, :cond_3

    .line 127
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda3;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    iput-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->cancelOnDestroyRunnable:Ljava/lang/Runnable;

    .line 133
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 131
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 138
    :cond_3
    :goto_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 142
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 143
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    instance-of v1, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;

    if-nez v1, :cond_0

    instance-of v0, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->cancelOnDestroyRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 147
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->cancelOnDestroyRunnable:Ljava/lang/Runnable;

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 151
    invoke-static {p0, v0}, Lcom/smedialink/utils/extentions/common/BaseFragmentExtKt;->setEnableSecureWindow(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 178
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->hideHint()V

    .line 179
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->needHideKeyboardOnPause:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 182
    :cond_0
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 2

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "grantResults"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    array-length p2, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    xor-int/2addr p2, v0

    if-eqz p2, :cond_3

    aget p2, p3, v1

    if-nez p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/16 p2, 0x22

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 189
    :cond_1
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->openQRScan()V

    goto :goto_1

    .line 188
    :cond_2
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->generatePdf()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 167
    invoke-super {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->onResume()V

    .line 168
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    instance-of v1, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;

    if-nez v1, :cond_0

    instance-of v0, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    instance-of v1, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;

    if-nez v1, :cond_2

    instance-of v0, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;

    if-eqz v0, :cond_3

    .line 172
    :cond_2
    invoke-static {p0, v2}, Lcom/smedialink/utils/extentions/common/BaseFragmentExtKt;->setEnableSecureWindow(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 174
    :cond_3
    iput-boolean v2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->needHideKeyboardOnPause:Z

    return-void
.end method

.method public onSuccessConfirmBackUp()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->fragmentToRemove:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    .line 239
    :cond_0
    sget-object v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Ready;->INSTANCE:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Ready;

    invoke-virtual {v0, v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;->newInstance(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method public onSuccessEnterSeed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "seed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-static {p1}, Lorg/telegram/ui/PasscodeActivity;->newInstanceForWalletPasscode(Ljava/lang/String;)Lorg/telegram/ui/PasscodeActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 2

    if-eqz p1, :cond_2

    .line 209
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->currentType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    instance-of v0, p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    instance-of p1, p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;

    if-eqz p1, :cond_2

    .line 210
    :cond_1
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    invoke-virtual {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 211
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda2;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    const-wide/16 v0, 0xfa

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .locals 0

    .line 220
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->hideHint()V

    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 1

    .line 200
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->needHideKeyboardOnPause:Z

    .line 204
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    return p1
.end method

.method public setHintWords(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "words"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->hintWords:Ljava/util/List;

    return-void
.end method

.method public setWalletAddress(Ljava/lang/String;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->walletAddress:Ljava/lang/String;

    return-void
.end method
