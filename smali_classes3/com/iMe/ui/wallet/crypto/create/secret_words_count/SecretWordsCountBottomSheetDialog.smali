.class public final Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;
.super Lcom/iMe/ui/base/mvp/MvpBottomSheet;
.source "SecretWordsCountBottomSheetDialog.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSecretWordsCountBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SecretWordsCountBottomSheetDialog.kt\ncom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,103:1\n13#2,4:104\n56#3,6:108\n*S KotlinDebug\n*F\n+ 1 SecretWordsCountBottomSheetDialog.kt\ncom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog\n*L\n26#1:104,4\n27#1:108,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$Companion;


# instance fields
.field private final actionAdapter$delegate:Lkotlin/Lazy;

.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final onWordsCountSelected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final parentActivity:Landroid/app/Activity;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method public static synthetic $r8$lambda$F0wd658Q5uLLAcKQ5g4xK8bBg3M(Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->setupAdapter$lambda$1$lambda$0(Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 26
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 30
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkSecretWordsCountLayoutBinding;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parentActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onWordsCountSelected"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 21
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->parentActivity:Landroid/app/Activity;

    .line 22
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->onWordsCountSelected:Lkotlin/jvm/functions/Function1;

    .line 26
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$presenter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$presenter$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;)V

    .line 16
    new-instance p2, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v1, v2, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 26
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1, v1}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->actionAdapter$delegate:Lkotlin/Lazy;

    .line 30
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$binding$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;)V

    invoke-static {p0, v1, p1, v0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    return-void
.end method

.method public static final synthetic access$getParentActivity$p(Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;)Landroid/app/Activity;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private final getActionAdapter()Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountAdapter;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->actionAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountAdapter;

    return-object v0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkSecretWordsCountLayoutBinding;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkSecretWordsCountLayoutBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter;
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter;

    return-object v0
.end method

.method private final setTexts()V
    .locals 2

    .line 94
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkSecretWordsCountLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkSecretWordsCountLayoutBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_import_change_words_count_dialog_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final setupAdapter$lambda$1$lambda$0(Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->getPresenter()Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter;->onItemClicked(I)V

    return-void
.end method

.method private final setupColors()V
    .locals 4

    const-string v0, "windowBackgroundWhite"

    .line 68
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    .line 69
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkSecretWordsCountLayoutBinding;

    move-result-object v0

    .line 70
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkSecretWordsCountLayoutBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "setupColors$lambda$4$lambda$2"

    .line 71
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const-string v2, "dialogTextBlue2"

    .line 72
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkSecretWordsCountLayoutBinding;->textActionCancel:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "setupColors$lambda$4$lambda$3"

    .line 75
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setRippleBackground$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 76
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const-string v1, "chats_actionBackground"

    .line 77
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 7

    .line 90
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkSecretWordsCountLayoutBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkSecretWordsCountLayoutBinding;->textActionCancel:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "binding.textActionCancel"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$setupListeners$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$setupListeners$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 83
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkSecretWordsCountLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkSecretWordsCountLayoutBinding;->recycleActions:Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->getActionAdapter()Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 85
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->parentActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->setupColors()V

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->setTexts()V

    .line 43
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->setupListeners()V

    .line 44
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->setupRecycleView()V

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkSecretWordsCountLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkSecretWordsCountLayoutBinding;->root:Landroid/widget/LinearLayout;

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onItemSelected(I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->onWordsCountSelected:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public setupAdapter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->getActionAdapter()Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountAdapter;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    .line 52
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;)V

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    return-void
.end method
