.class public final Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;
.super Lcom/iMe/ui/base/wallet_creation/WalletCreationBaseFragment;
.source "CreateWalletFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;,
        Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;,
        Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;,
        Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateWalletFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateWalletFragment.kt\ncom/iMe/ui/wallet/crypto/create/CreateWalletFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n+ 6 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,1804:1\n13#2,4:1805\n1549#3:1809\n1620#3,3:1810\n288#3,2:1830\n1855#3,2:1832\n37#4,2:1813\n16#5,3:1815\n63#6,12:1818\n*S KotlinDebug\n*F\n+ 1 CreateWalletFragment.kt\ncom/iMe/ui/wallet/crypto/create/CreateWalletFragment\n*L\n109#1:1805,4\n299#1:1809\n299#1:1810,3\n1451#1:1830,2\n1488#1:1832,2\n299#1:1813,2\n1396#1:1815,3\n1397#1:1818,12\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;


# instance fields
.field private final actionBarBackground$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final actionButton$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final buttonCopy$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final buttonPaste$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final buttonQR$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final buttonScanQR$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final buttonsLayout$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

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

.field private final clipboardManager$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final columnsLayout$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final descriptionText$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final descriptionText2$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final editTextContainer$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final editTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentToRemove:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

.field private globalIgnoreTextChange:Z

.field private hintEditText:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

.field private hintLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final hintListView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final hintPopupLayout$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final hintPopupWindow$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final hintsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final imageView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final leftColumn$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private maxEditNumberWidth:I

.field private maxNumberWidth:I

.field private needHideKeyboardOnPause:Z

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final qrCodeBottomSheet$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final rightColumn$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

.field private final scrollView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private searchingHintEditText:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

.field private final titleTextView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final wordsTextViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$14SVST5r7PO7tKBYpdcTF3LtbZY(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->showSelectWordsCountDialog$lambda$4(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EvO40xEx0pJsV3nWveih4pXbuQo(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->onFragmentCreate$lambda$0(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GUMB9YFekxhTe6pj5yKCsocBODM(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createHintPopupLayout$lambda$20$lambda$19(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RnWgMQ5c1kiJdWBDLrFqqsrPRSA(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->prepareCorrectEditTextInput$lambda$46$lambda$45$lambda$44(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fTd6cRQZwrDVnvuQ58XYtxZQxt8(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createContainer$lambda$9$lambda$8(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$s_XPKYql5U8r7eWg-QyTQAB-Gmk(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->onTransitionAnimationEnd$lambda$2(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zYmySOEtr6BQfnHLlI1RQiXCcC8(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createHintListView$lambda$24$lambda$23(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    const/16 v1, 0x17

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 109
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 113
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "imageView"

    const-string v4, "getImageView()Lorg/telegram/ui/Components/RLottieImageView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 114
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "actionButton"

    const-string v4, "getActionButton()Lcom/iMe/ui/custom/ActionButton;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 115
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "titleTextView"

    const-string v4, "getTitleTextView()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 116
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "descriptionText"

    const-string v4, "getDescriptionText()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 117
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "descriptionText2"

    const-string v4, "getDescriptionText2()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 118
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "actionBarBackground"

    const-string v4, "getActionBarBackground()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 119
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "hintsAdapter"

    const-string v4, "getHintsAdapter()Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 120
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "hintListView"

    const-string v4, "getHintListView()Lorg/telegram/ui/Components/RecyclerListView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 121
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "hintPopupWindow"

    const-string v4, "getHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 122
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "hintPopupLayout"

    const-string v4, "getHintPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 123
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "scrollView"

    const-string v4, "getScrollView()Landroid/widget/ScrollView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 124
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "editTextContainer"

    const-string v4, "getEditTextContainer()Landroid/widget/LinearLayout;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 125
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "leftColumn"

    const-string v4, "getLeftColumn()Landroid/widget/LinearLayout;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 126
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "rightColumn"

    const-string v4, "getRightColumn()Landroid/widget/LinearLayout;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 127
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "qrCodeBottomSheet"

    const-string v4, "getQrCodeBottomSheet()Lorg/telegram/ui/Components/QRCodeBottomSheet;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 128
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "buttonsLayout"

    const-string v4, "getButtonsLayout()Landroid/widget/LinearLayout;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 129
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "columnsLayout"

    const-string v4, "getColumnsLayout()Landroid/widget/LinearLayout;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 130
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "buttonCopy"

    const-string v4, "getButtonCopy()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 131
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "buttonQR"

    const-string v4, "getButtonQR()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 132
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "buttonPaste"

    const-string v4, "getButtonPaste()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 133
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "buttonScanQR"

    const-string v4, "getButtonScanQR()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0x15

    aput-object v2, v1, v3

    .line 134
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "clipboardManager"

    const-string v4, "getClipboardManager()Landroid/content/ClipboardManager;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/16 v2, 0x16

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->Companion:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;)V
    .locals 4

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_creation/WalletCreationBaseFragment;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    .line 109
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    .line 16
    new-instance v0, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

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

    .line 109
    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 113
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$imageView$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$imageView$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->imageView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 114
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$actionButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$actionButton$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->actionButton$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 115
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$titleTextView$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$titleTextView$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->titleTextView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 116
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$descriptionText$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$descriptionText$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->descriptionText$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 117
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$descriptionText2$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$descriptionText2$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->descriptionText2$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 118
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$actionBarBackground$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$actionBarBackground$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->actionBarBackground$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 119
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$hintsAdapter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$hintsAdapter$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->hintsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 120
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$hintListView$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$hintListView$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->hintListView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 121
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$hintPopupWindow$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$hintPopupWindow$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->hintPopupWindow$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 122
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$hintPopupLayout$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$hintPopupLayout$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->hintPopupLayout$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 123
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$scrollView$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$scrollView$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->scrollView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 124
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$editTextContainer$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$editTextContainer$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->editTextContainer$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 125
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$leftColumn$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$leftColumn$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->leftColumn$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 126
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$rightColumn$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$rightColumn$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->rightColumn$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 127
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$qrCodeBottomSheet$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$qrCodeBottomSheet$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->qrCodeBottomSheet$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 128
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$buttonsLayout$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$buttonsLayout$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->buttonsLayout$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 129
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$columnsLayout$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$columnsLayout$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->columnsLayout$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 130
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$buttonCopy$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$buttonCopy$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->buttonCopy$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 131
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$buttonQR$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$buttonQR$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->buttonQR$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 132
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$buttonPaste$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$buttonPaste$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->buttonPaste$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 133
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$buttonScanQR$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$buttonScanQR$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->buttonScanQR$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 134
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$clipboardManager$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$clipboardManager$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->clipboardManager$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 137
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->checkWordIndices:Ljava/util/List;

    .line 138
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    .line 139
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->wordsTextViews:Ljava/util/List;

    .line 149
    iput-boolean v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->needHideKeyboardOnPause:Z

    return-void
.end method

.method public static final synthetic access$checkEditTexts(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Z
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->checkEditTexts()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$createActionBarBackground(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/view/View;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createActionBarBackground()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createActionButton(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/custom/ActionButton;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createActionButton()Lcom/iMe/ui/custom/ActionButton;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createCopyButton(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/custom/backup/SecretWordsActionButton;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createCopyButton()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createDescriptionTextView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createDescriptionTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createDescriptionTextView2(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createDescriptionTextView2()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createHintListView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createHintListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createHintPopupLayout(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createHintPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createHintPopupWindow(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createImageView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createPasteButton(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/custom/backup/SecretWordsActionButton;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createPasteButton()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createQRButton(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/custom/backup/SecretWordsActionButton;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createQRButton()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createQRCodeBottomSheet(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/Components/QRCodeBottomSheet;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createQRCodeBottomSheet()Lorg/telegram/ui/Components/QRCodeBottomSheet;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createScanQRButton(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/custom/backup/SecretWordsActionButton;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createScanQRButton()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createScrollView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/ScrollView;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createScrollView()Landroid/widget/ScrollView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createTitleTextView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createTitleTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createVerticalLinearLayout(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createVerticalLinearLayout()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getActionBar$p$s1606076837(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method public static final synthetic access$getActionBarBackground(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/view/View;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getActionBarBackground()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getActionButton(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/custom/ActionButton;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getActionButton()Lcom/iMe/ui/custom/ActionButton;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCheckWordIndices$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Ljava/util/List;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->checkWordIndices:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getClipboardText(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Ljava/lang/String;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getClipboardText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDescriptionText(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDescriptionText2(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText2()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEditTexts$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Ljava/util/List;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getGlobalIgnoreTextChange$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->globalIgnoreTextChange:Z

    return p0
.end method

.method public static final synthetic access$getHintEditText$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->hintEditText:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    return-object p0
.end method

.method public static final synthetic access$getHintLayoutManager$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->hintLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method public static final synthetic access$getHintPopupLayout(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getHintPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHintPopupWindow(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHintsAdapter(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getHintsAdapter()Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getImageView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMaxEditNumberWidth$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)I
    .locals 0

    .line 105
    iget p0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->maxEditNumberWidth:I

    return p0
.end method

.method public static final synthetic access$getMaxNumberWidth$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)I
    .locals 0

    .line 105
    iget p0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->maxNumberWidth:I

    return p0
.end method

.method public static final synthetic access$getParentLayout$p$s1606076837(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getQrCodeBottomSheet(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/Components/QRCodeBottomSheet;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getQrCodeBottomSheet()Lorg/telegram/ui/Components/QRCodeBottomSheet;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResourceManager(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 105
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScreenType$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    return-object p0
.end method

.method public static final synthetic access$getScrollView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/ScrollView;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getScrollView()Landroid/widget/ScrollView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSearchingHintEditText$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->searchingHintEditText:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    return-object p0
.end method

.method public static final synthetic access$getTitleTextView(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$hideHint(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->hideHint()V

    return-void
.end method

.method public static final synthetic access$openQRScan(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->openQRScan()V

    return-void
.end method

.method public static final synthetic access$setFragmentToRemove$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->fragmentToRemove:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    return-void
.end method

.method public static final synthetic access$setHintEditText$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->hintEditText:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    return-void
.end method

.method public static final synthetic access$setMaxEditNumberWidth$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->maxEditNumberWidth:I

    return-void
.end method

.method public static final synthetic access$setMaxNumberWidth$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->maxNumberWidth:I

    return-void
.end method

.method public static final synthetic access$setSearchingHintEditText$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->searchingHintEditText:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    return-void
.end method

.method private final canGoBack()Z
    .locals 2

    .line 1507
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    sget-object v1, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Ready;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Ready;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final checkEditTexts()Z
    .locals 4

    .line 1488
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

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

    check-cast v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    .line 1489
    invoke-virtual {v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 1490
    invoke-virtual {v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    .line 1491
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1492
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1493
    invoke-static {v0, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->shake(Landroid/view/View;Z)V

    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method private final createActionBarBackground()Landroid/view/View;
    .locals 2

    .line 961
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createActionBarBackground$1;

    invoke-direct {v1, p0, v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createActionBarBackground$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 971
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    return-object v1
.end method

.method private final createActionButton()Lcom/iMe/ui/custom/ActionButton;
    .locals 7

    .line 1209
    new-instance v6, Lcom/iMe/ui/custom/ActionButton;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/iMe/ui/custom/ActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v0, 0x22

    .line 1210
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v6, v0}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    const/16 v0, 0x11

    .line 1211
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1212
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    const/high16 v1, 0x41600000    # 14.0f

    .line 1213
    invoke-virtual {v6, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1214
    invoke-static {v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/4 v0, 0x4

    .line 1216
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1217
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    .line 1218
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    .line 1215
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1220
    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createActionButton$1$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createActionButton$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

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

    .line 1470
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1471
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createClickableText$1$1;

    invoke-direct {p1, p2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createClickableText$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 1475
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/4 v1, 0x0

    const/16 v2, 0x21

    .line 1471
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private final createContainer()Landroid/view/ViewGroup;
    .locals 19

    move-object/from16 v0, p0

    .line 516
    iget-object v1, v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    .line 517
    instance-of v2, v1, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Ready;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 518
    :cond_0
    instance-of v2, v1, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$TooBad;

    :goto_0
    if-eqz v2, :cond_2

    .line 519
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getActionButton()Lcom/iMe/ui/custom/ActionButton;

    move-result-object v1

    const/16 v2, 0x96

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 520
    iget-object v1, v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    instance-of v1, v1, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$TooBad;

    if-eqz v1, :cond_1

    .line 521
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText2()Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    .line 522
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 523
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 526
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;

    invoke-direct {v2, v0, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Landroid/app/Activity;)V

    .line 701
    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda0;->INSTANCE:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 702
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 703
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 704
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 705
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 706
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText2()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 707
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getActionButton()Lcom/iMe/ui/custom/ActionButton;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_9

    .line 711
    :cond_2
    instance-of v2, v1, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_1

    .line 712
    :cond_3
    instance-of v2, v1, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;

    :goto_1
    if-eqz v2, :cond_4

    move v1, v3

    goto :goto_2

    .line 713
    :cond_4
    instance-of v1, v1, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;

    :goto_2
    if-eqz v1, :cond_e

    .line 714
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getActionButton()Lcom/iMe/ui/custom/ActionButton;

    move-result-object v1

    const/16 v2, 0xdc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 715
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText()Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 716
    iget-object v1, v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    instance-of v1, v1, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;

    if-eqz v1, :cond_5

    .line 717
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText2()Landroid/widget/TextView;

    move-result-object v1

    .line 718
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v2, 0x41700000    # 15.0f

    .line 719
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 722
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$5;

    invoke-direct {v2, v0, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createContainer$5;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Landroid/app/Activity;)V

    .line 751
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 752
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 753
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 754
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v4

    const/4 v5, -0x1

    const/16 v6, 0x33

    .line 756
    invoke-static {v5, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    .line 754
    invoke-virtual {v4, v1, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 763
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v4

    const/4 v7, -0x2

    const/4 v8, -0x2

    const/16 v9, 0x31

    const/4 v10, 0x0

    const/16 v11, 0x45

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 764
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 762
    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 775
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v4

    const/16 v11, 0x8

    .line 776
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 774
    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText()Landroid/widget/TextView;

    move-result-object v4

    const/16 v11, 0x9

    .line 788
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 786
    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 799
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText2()Landroid/widget/TextView;

    move-result-object v4

    const/16 v11, 0x11

    .line 800
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 798
    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 811
    iget-object v4, v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    instance-of v5, v4, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-eqz v5, :cond_b

    .line 812
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getButtonsLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    .line 814
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getButtonCopy()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;

    move-result-object v5

    .line 815
    invoke-static {v9, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 813
    invoke-virtual {v4, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getButtonQR()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v13, 0xc

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 819
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 817
    invoke-virtual {v4, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, -0x1

    const/16 v12, 0x31

    const/16 v13, 0x24

    const/16 v14, 0x1e

    const/16 v15, 0x24

    .line 823
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 821
    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 834
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getColumnsLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    .line 836
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getLeftColumn()Landroid/widget/LinearLayout;

    move-result-object v5

    .line 837
    invoke-static {v8, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 835
    invoke-virtual {v4, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getRightColumn()Landroid/widget/LinearLayout;

    move-result-object v5

    const/4 v10, -0x2

    const/16 v12, 0x39

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 844
    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 842
    invoke-virtual {v4, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v12, 0x31

    const/16 v14, 0x1e

    .line 855
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 853
    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    iput v9, v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->maxNumberWidth:I

    move v4, v9

    :goto_3
    const/4 v5, 0x2

    if-ge v4, v5, :cond_d

    if-nez v4, :cond_6

    .line 868
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getLeftColumn()Landroid/widget/LinearLayout;

    move-result-object v5

    goto :goto_4

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getRightColumn()Landroid/widget/LinearLayout;

    move-result-object v5

    .line 869
    :goto_4
    iget-object v7, v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    check-cast v7, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    invoke-virtual {v7}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;->getSecretWords()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 871
    div-int/lit8 v8, v7, 0x2

    if-eqz v4, :cond_7

    rem-int/lit8 v7, v7, 0x2

    goto :goto_5

    :cond_7
    move v7, v9

    :goto_5
    add-int/2addr v7, v8

    move v10, v9

    :goto_6
    if-ge v10, v7, :cond_a

    .line 873
    new-instance v11, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "parentActivity"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v0, v12}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Landroid/content/Context;)V

    if-nez v4, :cond_8

    move v12, v9

    goto :goto_7

    :cond_8
    move v12, v8

    :goto_7
    add-int/2addr v12, v10

    .line 876
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 877
    iget-object v13, v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    check-cast v13, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    invoke-virtual {v13}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;->getSecretWords()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v13, 0x41800000    # 16.0f

    .line 878
    invoke-virtual {v11, v3, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 879
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 880
    invoke-static {v11}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 882
    sget-object v13, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 883
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v14, v3, [Ljava/lang/Object;

    add-int/2addr v12, v3

    .line 885
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v9

    .line 882
    invoke-static {v14, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    const-string v14, "%d."

    invoke-static {v13, v14, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "format(locale, format, *args)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 881
    invoke-virtual {v11, v12}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;->setNumber(Ljava/lang/String;)V

    .line 889
    iget-object v12, v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->wordsTextViews:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v13, -0x2

    const/4 v14, -0x2

    const/4 v15, 0x0

    if-nez v10, :cond_9

    move/from16 v16, v9

    goto :goto_8

    :cond_9
    const/16 v12, 0xa

    move/from16 v16, v12

    :goto_8
    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 892
    invoke-static/range {v13 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    .line 890
    invoke-virtual {v5, v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 900
    :cond_b
    instance-of v4, v4, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;

    if-eqz v4, :cond_c

    .line 901
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getButtonsLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    .line 903
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getButtonPaste()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;

    move-result-object v5

    .line 904
    invoke-static {v9, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 902
    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 907
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getButtonScanQR()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v13, 0xc

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 908
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 906
    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, -0x1

    const/16 v12, 0x31

    const/16 v13, 0x24

    const/16 v14, 0x1e

    const/16 v15, 0x24

    .line 920
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 918
    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 932
    :cond_c
    iput v9, v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->maxEditNumberWidth:I

    .line 934
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getEditTextContainer()Landroid/widget/LinearLayout;

    move-result-object v4

    .line 935
    invoke-static {v8, v8, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 933
    invoke-virtual {v1, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 943
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getActionButton()Lcom/iMe/ui/custom/ActionButton;

    move-result-object v3

    const/4 v4, -0x2

    const/16 v5, 0x2a

    const/16 v6, 0x31

    const/4 v7, 0x0

    const/16 v8, 0x24

    const/4 v9, 0x0

    const/16 v10, 0x21

    .line 944
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 942
    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 954
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getActionBarBackground()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 955
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_9
    return-object v2

    :cond_e
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1
.end method

.method private static final createContainer$lambda$9$lambda$8(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private final createCopyButton()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;
    .locals 7

    .line 1129
    new-instance v6, Lcom/iMe/ui/custom/backup/SecretWordsActionButton;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/iMe/ui/custom/backup/SecretWordsActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1130
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_copy_filled:I

    sget v1, Lorg/telegram/messenger/R$string;->Copy:I

    const-string v2, "Copy"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(\"Copy\", R.string.Copy)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Lcom/iMe/ui/custom/backup/SecretWordsActionButton;->setupView(ILjava/lang/String;)V

    .line 1131
    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createCopyButton$1$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createCopyButton$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-object v6
.end method

.method private final createDescriptionTextView()Landroid/widget/TextView;
    .locals 4

    .line 1192
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1193
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    .line 1194
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x2

    .line 1195
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/high16 v2, 0x41700000    # 15.0f

    .line 1196
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x20

    .line 1197
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    return-object v0
.end method

.method private final createDescriptionTextView2()Landroid/widget/TextView;
    .locals 3

    .line 1200
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1201
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    .line 1202
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x2

    .line 1203
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/16 v1, 0x20

    .line 1204
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    .line 1205
    new-instance v1, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v1}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/16 v1, 0x8

    .line 1206
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-object v0
.end method

.method private final createHintListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 4

    .line 1015
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 1016
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getHintsAdapter()Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/16 v1, 0x9

    .line 1017
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    .line 1018
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 1019
    iput-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->hintLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1018
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1021
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1022
    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda7;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-object v0
.end method

.method private static final createHintListView$lambda$24$lambda$23(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Landroid/view/View;I)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1023
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->hintEditText:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getHintsAdapter()Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    :goto_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void
.end method

.method private final createHintPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 4

    .line 975
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 976
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 977
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    .line 978
    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createHintPopupLayout$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createHintPopupLayout$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 993
    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda6;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 998
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getHintListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, -0x1

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static final createHintPopupLayout$lambda$20$lambda$19(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Landroid/view/KeyEvent;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 994
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 995
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private final createHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 4

    .line 1001
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 1002
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getHintPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v1

    const/4 v2, -0x2

    .line 1001
    invoke-direct {v0, v1, v2, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    const/4 v1, 0x0

    .line 1006
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 1007
    sget v2, Lorg/telegram/messenger/R$style;->PopupAnimation:I

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const/4 v2, 0x1

    .line 1008
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const/4 v3, 0x2

    .line 1009
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1010
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 1011
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1012
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-object v0
.end method

.method private final createImageView()Lorg/telegram/ui/Components/RLottieImageView;
    .locals 2

    .line 1181
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    .line 1182
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method private final createPasteButton()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;
    .locals 7

    .line 1137
    new-instance v6, Lcom/iMe/ui/custom/backup/SecretWordsActionButton;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/iMe/ui/custom/backup/SecretWordsActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1139
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_paste_24:I

    .line 1140
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_import_paste:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1138
    invoke-virtual {v6, v0, v1}, Lcom/iMe/ui/custom/backup/SecretWordsActionButton;->setupView(ILjava/lang/String;)V

    .line 1142
    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createPasteButton$1$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createPasteButton$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-object v6
.end method

.method private final createQRButton()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;
    .locals 7

    .line 1146
    new-instance v6, Lcom/iMe/ui/custom/backup/SecretWordsActionButton;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/iMe/ui/custom/backup/SecretWordsActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1148
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    .line 1149
    sget v1, Lorg/telegram/messenger/R$string;->GetQRCode:I

    const-string v2, "GetQRCode"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(\"GetQRCode\", R.string.GetQRCode)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1147
    invoke-virtual {v6, v0, v1}, Lcom/iMe/ui/custom/backup/SecretWordsActionButton;->setupView(ILjava/lang/String;)V

    .line 1151
    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createQRButton$1$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createQRButton$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-object v6
.end method

.method private final createQRCodeBottomSheet()Lorg/telegram/ui/Components/QRCodeBottomSheet;
    .locals 4

    .line 1117
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1119
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    const-string v2, "null cannot be cast to non-null type com.iMe.model.wallet.crypto.create.CreateWalletScreenType.SecretWords"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;->getSecretWords()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/StringExtKt;->joinBySpace(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 1120
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_backup_secret_words_qr_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1116
    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createQRCodeBottomSheet$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createQRCodeBottomSheet$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private final createScanQRButton()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;
    .locals 7

    .line 1164
    new-instance v6, Lcom/iMe/ui/custom/backup/SecretWordsActionButton;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/iMe/ui/custom/backup/SecretWordsActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1166
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    .line 1167
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_backup_scan_qr:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1165
    invoke-virtual {v6, v0, v1}, Lcom/iMe/ui/custom/backup/SecretWordsActionButton;->setupView(ILjava/lang/String;)V

    .line 1169
    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScanQRButton$1$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScanQRButton$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-object v6
.end method

.method private final createScrollView()Landroid/widget/ScrollView;
    .locals 2

    .line 1028
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;

    invoke-direct {v1, p0, v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScrollView$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 1109
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    return-object v1
.end method

.method private final createTitleTextView()Landroid/widget/TextView;
    .locals 3

    .line 1185
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1186
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    .line 1187
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v2, 0x20

    .line 1188
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    const/high16 v2, 0x41c00000    # 24.0f

    .line 1189
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final createVerticalLinearLayout()Landroid/widget/LinearLayout;
    .locals 2

    .line 1112
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1113
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-object v0
.end method

.method private final fillEditTextContainer(I)V
    .locals 13

    .line 1407
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1408
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int v2, p1, v2

    if-gez v2, :cond_0

    .line 1410
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1411
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    .line 1412
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    .line 1413
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1414
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1416
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getEditTextContainer()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/widget/LinearLayout;->removeViews(II)V

    goto :goto_4

    .line 1418
    :cond_0
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    instance-of v2, v2, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;

    .line 1419
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v3, p1, :cond_4

    .line 1420
    new-instance v4, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    .line 1421
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "parentActivity"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v6, p1, -0x1

    if-ne v3, v6, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 1420
    :goto_1
    invoke-direct {v4, p0, v5, v3, v6}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Landroid/content/Context;IZ)V

    if-eqz v2, :cond_2

    .line 1426
    iget-object v5, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->checkWordIndices:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    add-int/2addr v5, v1

    .line 1430
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->setNumber(Ljava/lang/String;)V

    .line 1432
    iget-object v5, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1433
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getEditTextContainer()Landroid/widget/LinearLayout;

    move-result-object v5

    const/16 v6, 0xdc

    const/16 v7, 0x24

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v3, :cond_3

    const/16 v10, 0x15

    goto :goto_3

    :cond_3
    const/16 v10, 0xd

    :goto_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1435
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 1433
    invoke-virtual {v5, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    if-eqz v0, :cond_5

    .line 1445
    invoke-direct {p0, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->prepareCorrectEditTextInput(Z)V

    :cond_5
    return-void
.end method

.method private final getActionBarBackground()Landroid/view/View;
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->actionBarBackground$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getActionButton()Lcom/iMe/ui/custom/ActionButton;
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->actionButton$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/custom/ActionButton;

    return-object v0
.end method

.method private final getButtonCopy()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->buttonCopy$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/custom/backup/SecretWordsActionButton;

    return-object v0
.end method

.method private final getButtonPaste()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->buttonPaste$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/custom/backup/SecretWordsActionButton;

    return-object v0
.end method

.method private final getButtonQR()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->buttonQR$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/custom/backup/SecretWordsActionButton;

    return-object v0
.end method

.method private final getButtonScanQR()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->buttonScanQR$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/custom/backup/SecretWordsActionButton;

    return-object v0
.end method

.method private final getButtonsLayout()Landroid/widget/LinearLayout;
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->buttonsLayout$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getClipboardManager()Landroid/content/ClipboardManager;
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->clipboardManager$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    return-object v0
.end method

.method private final getClipboardText()Ljava/lang/String;
    .locals 4

    .line 1479
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, ""

    if-eqz v0, :cond_1

    goto :goto_3

    .line 1482
    :cond_1
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getClipboardManager()Landroid/content/ClipboardManager;

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

    .line 1484
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

    .line 129
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->columnsLayout$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getDescriptionText()Landroid/widget/TextView;
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->descriptionText$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getDescriptionText2()Landroid/widget/TextView;
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->descriptionText2$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getEditTextContainer()Landroid/widget/LinearLayout;
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->editTextContainer$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getHintListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->hintListView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getHintPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->hintPopupLayout$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    return-object v0
.end method

.method private final getHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->hintPopupWindow$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object v0
.end method

.method private final getHintsAdapter()Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->hintsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;

    return-object v0
.end method

.method private final getImageView()Lorg/telegram/ui/Components/RLottieImageView;
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->imageView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RLottieImageView;

    return-object v0
.end method

.method private final getLeftColumn()Landroid/widget/LinearLayout;
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->leftColumn$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    return-object v0
.end method

.method private final getQrCodeBottomSheet()Lorg/telegram/ui/Components/QRCodeBottomSheet;
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->qrCodeBottomSheet$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;

    return-object v0
.end method

.method private final getRightColumn()Landroid/widget/LinearLayout;
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->rightColumn$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getScrollView()Landroid/widget/ScrollView;
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->scrollView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    return-object v0
.end method

.method private final getTitleTextView()Landroid/widget/TextView;
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->titleTextView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final hideHint()V
    .locals 1

    .line 1502
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1503
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public static final newInstance(Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;
    .locals 1

    sget-object v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->Companion:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object p0

    return-object p0
.end method

.method private static final onFragmentCreate$lambda$0(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    :goto_0
    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->cancelOnDestroyRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static final onTransitionAnimationEnd$lambda$2(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

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

    .line 1514
    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$openQRScan$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$openQRScan$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    const/4 v1, 0x1

    .line 1510
    invoke-static {p0, v1, v1, v0, v1}, Lorg/telegram/ui/CameraScanActivity;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Z)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private final prepareCorrectEditTextInput(Z)V
    .locals 4

    .line 1450
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

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

    check-cast v3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    .line 1451
    invoke-virtual {v3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->getText()Ljava/lang/CharSequence;

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
    check-cast v2, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    if-nez v2, :cond_3

    .line 1453
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    .line 1454
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 1456
    :cond_3
    invoke-virtual {v2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    .line 1457
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1458
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setSelectionEnd(Landroid/widget/EditText;)V

    .line 1459
    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    if-eqz p1, :cond_4

    const-wide/16 v2, 0x190

    goto :goto_2

    :cond_4
    const-wide/16 v2, 0x0

    :goto_2
    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static final prepareCorrectEditTextInput$lambda$46$lambda$45$lambda$44(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1460
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private final setupActionBar()V
    .locals 6

    .line 1352
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 1353
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->canGoBack()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1354
    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1356
    :cond_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1357
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1358
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 1359
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 1360
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 1361
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 1362
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setY(F)V

    .line 1363
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setExtraHeight(I)V

    .line 1364
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 1365
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1366
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionModeTop()V

    .line 1368
    :cond_1
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    instance-of v1, v1, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    if-eqz v1, :cond_2

    .line 1369
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 1370
    sget v2, Lcom/iMe/common/IdFabric$Menu;->OPTIONS:I

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    .line 1373
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v3, "AccDescrMoreOptions"

    .line 1371
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1376
    sget v2, Lcom/iMe/common/IdFabric$Menu;->PDF:I

    .line 1377
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_pdf_24:I

    .line 1378
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->wallet_backup_secret_words_pdf:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1375
    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1383
    :cond_2
    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$setupActionBar$1$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$setupActionBar$1$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupEventListeners()V
    .locals 4

    .line 1395
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getRxEventBus()Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;

    .line 17
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->ofType(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "publisher\n            .o\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$setupEventListeners$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$setupEventListeners$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$setupEventListeners$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$setupEventListeners$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1403
    invoke-virtual {p0, v0}, Lcom/iMe/ui/base/mvp/MvpFragment;->autoDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private final setupViewsContents()V
    .locals 6

    .line 1279
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    .line 1280
    instance-of v1, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    const/4 v2, 0x0

    const/16 v3, 0x70

    if-eqz v1, :cond_0

    .line 1281
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->fork_wallet_note:I

    invoke-virtual {v0, v1, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1282
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->wallet_backup_secret_words_title:I

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1283
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->wallet_backup_secret_words:I

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1284
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText()Landroid/widget/TextView;

    move-result-object v0

    .line 1285
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->wallet_backup_secret_words_info:I

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1284
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1286
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getActionButton()Lcom/iMe/ui/custom/ActionButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->wallet_backup_done:I

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1287
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .line 1290
    :cond_0
    instance-of v1, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;

    if-eqz v1, :cond_1

    .line 1291
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->wallet_science:I

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1292
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->wallet_backup_test_time_title:I

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1293
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->wallet_backup_test_time:I

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1294
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getActionButton()Lcom/iMe/ui/custom/ActionButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->wallet_backup_continue:I

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .line 1298
    :cond_1
    instance-of v1, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Ready;

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 1299
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->wallet_allset:I

    const/16 v2, 0x82

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1300
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1301
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_backup_ready:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1302
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_backup_ready_info:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1303
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getActionButton()Lcom/iMe/ui/custom/ActionButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_backup_view:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1306
    :cond_2
    instance-of v1, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    .line 1307
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->fork_wallet_note:I

    invoke-virtual {v0, v1, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1308
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->wallet_import_secret_words:I

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1309
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1310
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->wallet_import_info:I

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1311
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getActionButton()Lcom/iMe/ui/custom/ActionButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->wallet_backup_continue:I

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1312
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1313
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText2()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1314
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText2()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1316
    sget v2, Lorg/telegram/messenger/R$string;->wallet_import_dont_have:I

    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-direct {p0, v2, v3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createClickableText(ILkotlin/jvm/functions/Function0;)Landroid/text/SpannableString;

    move-result-object v2

    .line 1315
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1324
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getCryptoPreferenceHelper()Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->isBip39PhraseBased()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const-string v3, "\n"

    aput-object v3, v2, v4

    aput-object v3, v2, v5

    const/4 v3, 0x2

    .line 1328
    sget v4, Lorg/telegram/messenger/R$string;->wallet_import_change_words_count:I

    new-instance v5, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$2;

    invoke-direct {v5, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-direct {p0, v4, v5}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createClickableText(ILkotlin/jvm/functions/Function0;)Landroid/text/SpannableString;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1325
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->append(Ljava/lang/Appendable;[Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1314
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1336
    :cond_4
    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$TooBad;

    if-eqz v0, :cond_5

    .line 1337
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 1338
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->fork_wallet_too_bad:I

    const/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1339
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_import_too_bad:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1340
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText()Landroid/widget/TextView;

    move-result-object v0

    .line 1341
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_import_too_bad_info:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1340
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1342
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getActionButton()Lcom/iMe/ui/custom/ActionButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_import_too_bad_enter:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText2()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1344
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText2()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_import_too_bad_create:I

    new-instance v2, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$2;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-direct {p0, v1, v2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createClickableText(ILkotlin/jvm/functions/Function0;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private static final showSelectWordsCountDialog$lambda$4(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    move-result-object p0

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->onWordsCountSelected(I)V

    return-void
.end method


# virtual methods
.method public addNewWallet(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V
    .locals 3

    const-string v0, "wallet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->fragmentToRemove:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    .line 349
    :cond_0
    sget-object v0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->Companion:Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;

    .line 350
    new-instance v1, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletIntro;

    .line 349
    new-instance v2, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$addNewWallet$1;

    invoke-direct {v2, p1, p2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$addNewWallet$1;-><init>(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V

    .line 350
    invoke-direct {v1, v2}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletIntro;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 349
    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;)Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    move-result-object p1

    .line 348
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 360
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public createNewWallet(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V
    .locals 8

    const-string v0, "wallet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->fragmentToRemove:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    .line 334
    :cond_0
    new-instance v0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

    const/4 v3, 0x0

    .line 337
    new-instance v5, Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Creation;

    .line 338
    sget-object v1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;

    .line 337
    invoke-direct {v5, v1}, Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Creation;-><init>(Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v4, p1

    .line 334
    invoke-direct/range {v1 .. v7}, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 333
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->newInstanceForWalletPin(Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;)Lorg/telegram/ui/PasscodeActivity;

    move-result-object p1

    .line 332
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 343
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public fillEditTexts(Ljava/util/List;)V
    .locals 5
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

    .line 265
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 266
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    invoke-virtual {v3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_0
    invoke-direct {p0, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->prepareCorrectEditTextInput(Z)V

    return-void
.end method

.method public generateAndOpenPdf(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "walletAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secretWords"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    sget-object v0, Lcom/iMe/utils/helper/wallet/BackupPdfHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/BackupPdfHelper;

    .line 365
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "parentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getQrCodeBottomSheet()Lorg/telegram/ui/Components/QRCodeBottomSheet;

    move-result-object v2

    .line 369
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    .line 370
    invoke-static {p2}, Lcom/iMe/storage/data/utils/extentions/StringExtKt;->joinBySpace(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 368
    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->createQR(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "qrCodeBottomSheet.create\u2026       null\n            )"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/iMe/utils/helper/wallet/BackupPdfHelper;->generatePdf(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 16
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

    .line 385
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 386
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 387
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 388
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    .line 385
    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 390
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 391
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 392
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 393
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    .line 390
    invoke-direct {v2, v4, v6, v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 395
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 396
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 397
    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 395
    invoke-direct {v2, v6, v7, v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v6, 0x2

    aput-object v2, v1, v6

    .line 400
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 401
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 402
    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 403
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    .line 400
    invoke-direct {v2, v6, v7, v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 405
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getActionBarBackground()Landroid/view/View;

    move-result-object v6

    invoke-direct {v2, v6, v3, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v5, 0x4

    aput-object v2, v1, v5

    .line 406
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 407
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getHintListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    .line 408
    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v9, v4, [Ljava/lang/Class;

    .line 409
    const-class v5, Landroid/widget/TextView;

    aput-object v5, v9, v3

    .line 413
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v2

    .line 406
    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v5, 0x5

    aput-object v2, v1, v5

    .line 415
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 416
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getEditTextContainer()Landroid/widget/LinearLayout;

    move-result-object v8

    .line 417
    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v10, v4, [Ljava/lang/Class;

    .line 418
    const-class v5, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    aput-object v5, v10, v3

    const-string v5, "editText"

    .line 419
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v2

    move v6, v15

    .line 415
    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v7, 0x6

    aput-object v2, v1, v7

    .line 425
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 426
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getEditTextContainer()Landroid/widget/LinearLayout;

    move-result-object v8

    .line 427
    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    new-array v10, v4, [Ljava/lang/Class;

    .line 428
    const-class v7, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    aput-object v7, v10, v3

    .line 429
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    move-object v7, v2

    .line 425
    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v5, 0x7

    aput-object v2, v1, v5

    .line 435
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 436
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getEditTextContainer()Landroid/widget/LinearLayout;

    move-result-object v8

    .line 437
    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v10, v4, [Ljava/lang/Class;

    .line 438
    const-class v5, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    aput-object v5, v10, v3

    const-string v5, "deleteImageView"

    .line 439
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    .line 443
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText7:I

    move-object v7, v2

    .line 435
    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v5, 0x8

    aput-object v2, v1, v5

    .line 445
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getEditTextContainer()Landroid/widget/LinearLayout;

    move-result-object v5

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-direct {v2, v5, v3, v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/16 v5, 0x9

    aput-object v2, v1, v5

    .line 446
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 447
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getLeftColumn()Landroid/widget/LinearLayout;

    move-result-object v8

    .line 448
    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v10, v4, [Ljava/lang/Class;

    .line 449
    const-class v5, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;

    aput-object v5, v10, v3

    const/4 v11, 0x0

    move-object v7, v2

    move v14, v6

    .line 446
    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v5, 0xa

    aput-object v2, v1, v5

    .line 455
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 456
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getRightColumn()Landroid/widget/LinearLayout;

    move-result-object v8

    .line 457
    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v10, v4, [Ljava/lang/Class;

    .line 458
    const-class v5, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;

    aput-object v5, v10, v3

    move-object v7, v2

    .line 455
    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v5, 0xb

    aput-object v2, v1, v5

    .line 464
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 465
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getLeftColumn()Landroid/widget/LinearLayout;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    .line 467
    const-class v5, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;

    aput-object v5, v10, v3

    const/4 v9, 0x0

    move-object v7, v2

    move v14, v15

    .line 464
    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v5, 0xc

    aput-object v2, v1, v5

    .line 473
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 474
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getRightColumn()Landroid/widget/LinearLayout;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    .line 476
    const-class v4, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;

    aput-object v4, v10, v3

    move-object v7, v2

    .line 473
    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 482
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 483
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v3

    .line 484
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    .line 482
    invoke-direct {v2, v3, v4, v6}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 487
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 488
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText()Landroid/widget/TextView;

    move-result-object v3

    .line 489
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    .line 490
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    .line 487
    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 492
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 493
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText2()Landroid/widget/TextView;

    move-result-object v3

    .line 494
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    .line 495
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    .line 492
    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 497
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 498
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getActionButton()Lcom/iMe/ui/custom/ActionButton;

    move-result-object v3

    .line 499
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    .line 500
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    .line 497
    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 502
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 503
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getActionButton()Lcom/iMe/ui/custom/ActionButton;

    move-result-object v3

    .line 504
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    .line 505
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    .line 502
    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 507
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 508
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getActionButton()Lcom/iMe/ui/custom/ActionButton;

    move-result-object v3

    .line 509
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v4, v5

    .line 510
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    .line 507
    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 384
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public isLightStatusBar()Z
    .locals 4

    .line 152
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 258
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public onBeginSlide()V
    .locals 0

    .line 230
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBeginSlide()V

    .line 231
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->hideHint()V

    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->setupActionBar()V

    .line 187
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->setupEventListeners()V

    .line 188
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createContainer()Landroid/view/ViewGroup;

    move-result-object p1

    .line 189
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setKeepScreenOn(Z)V

    .line 190
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 188
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 192
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->setupViewsContents()V

    .line 193
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 194
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const-string v0, "fragmentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onFragmentCreate()Z
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    .line 156
    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->cancelOnDestroyRunnable:Ljava/lang/Runnable;

    .line 163
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 161
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 169
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 173
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 174
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    instance-of v1, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;

    if-nez v1, :cond_0

    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->cancelOnDestroyRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 178
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->cancelOnDestroyRunnable:Ljava/lang/Runnable;

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 182
    invoke-static {p0, v0}, Lcom/iMe/utils/extentions/common/BaseFragmentExtKt;->setEnableSecureWindow(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 209
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->hideHint()V

    .line 210
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->needHideKeyboardOnPause:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 213
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 2

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "grantResults"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    array-length p2, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

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

    .line 224
    :cond_1
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->openQRScan()V

    goto :goto_1

    .line 223
    :cond_2
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->onSavePdfClick()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 198
    invoke-super {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->onResume()V

    .line 199
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    instance-of v1, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;

    if-nez v1, :cond_0

    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    instance-of v1, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;

    if-nez v1, :cond_2

    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;

    if-eqz v0, :cond_3

    .line 203
    :cond_2
    invoke-static {p0, v2}, Lcom/iMe/utils/extentions/common/BaseFragmentExtKt;->setEnableSecureWindow(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 205
    :cond_3
    iput-boolean v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->needHideKeyboardOnPause:Z

    return-void
.end method

.method public onSuccessConfirmBackUp()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->fragmentToRemove:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    .line 327
    :cond_0
    sget-object v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->Companion:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    sget-object v1, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Ready;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Ready;

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method public onSuccessEnterSeed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "seed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    new-instance v0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

    .line 317
    new-instance v5, Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Creation;

    .line 318
    sget-object v1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;

    .line 317
    invoke-direct {v5, v1}, Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Creation;-><init>(Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    .line 314
    invoke-direct/range {v1 .. v7}, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 313
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->newInstanceForWalletPin(Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;)Lorg/telegram/ui/PasscodeActivity;

    move-result-object p1

    .line 312
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 2

    if-eqz p1, :cond_2

    .line 244
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    instance-of v0, p1, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    instance-of p1, p1, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;

    if-eqz p1, :cond_2

    .line 245
    :cond_1
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->editTexts:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 246
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    const-wide/16 v0, 0xfa

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->hideHint()V

    return-void
.end method

.method public onWordsCountSelected(I)V
    .locals 6

    .line 286
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    .line 287
    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->checkWordIndices:Ljava/util/List;

    .line 289
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 290
    invoke-static {v1, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    .line 291
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const-string v3, "random"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->shuffled(Ljava/lang/Iterable;Ljava/util/Random;)Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x3

    .line 292
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    .line 293
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 294
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 296
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getDescriptionText()Landroid/widget/TextView;

    move-result-object p1

    .line 298
    sget v0, Lorg/telegram/messenger/R$string;->wallet_backup_test_time_info:I

    .line 299
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->checkWordIndices:Ljava/util/List;

    .line 1549
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1621
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 299
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1621
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array v1, v1, [Ljava/lang/Integer;

    .line 38
    invoke-interface {v4, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 299
    check-cast v1, [Ljava/lang/Integer;

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 297
    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    invoke-direct {p0, v2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->fillEditTextContainer(I)V

    goto :goto_1

    .line 306
    :cond_1
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->fillEditTextContainer(I)V

    :goto_1
    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 1

    .line 235
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->needHideKeyboardOnPause:Z

    .line 239
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    return p1
.end method

.method public showActionError(Ljava/lang/String;)V
    .locals 9

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_error:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    .line 377
    invoke-static/range {v2 .. v8}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showErrorAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public showSelectWordsCountDialog(Lcom/iMe/model/dialog/RadioCellsListDialogModel;)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialogWithRadioCellsList$default(Landroid/content/Context;Lcom/iMe/model/dialog/RadioCellsListDialogModel;Lcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 276
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showWordsSuggestions(Ljava/util/List;)V
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

    .line 272
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getHintsAdapter()Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->showMnemonicWordsSuggestions(Ljava/util/List;)V

    return-void
.end method

.method public updateLoadingState(Z)V
    .locals 1

    .line 261
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->getActionButton()Lcom/iMe/ui/custom/ActionButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/ui/custom/ActionButton;->updateLoadingState(Z)V

    return-void
.end method
