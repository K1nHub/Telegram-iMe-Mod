.class public final Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;
.super Lcom/iMe/ui/base/mvp/view/MvpFrameLayout;
.source "BackupWordSwitcher.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;
.implements Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherMvpView;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackupWordSwitcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackupWordSwitcher.kt\ncom/iMe/ui/custom/backup/switcher/BackupWordSwitcher\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,112:1\n13#2,4:113\n56#3,6:117\n473#4:123\n1295#4,2:124\n473#4:126\n1306#4,3:127\n473#4:130\n1295#4,2:131\n*S KotlinDebug\n*F\n+ 1 BackupWordSwitcher.kt\ncom/iMe/ui/custom/backup/switcher/BackupWordSwitcher\n*L\n26#1:113,4\n27#1:117,6\n56#1:123\n57#1:124,2\n79#1:126\n80#1:127,3\n107#1:130\n108#1:131,2\n*E\n"
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


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private selectedBackupWordView:Lcom/iMe/ui/custom/backup/BackupWordView;


# direct methods
.method public static synthetic $r8$lambda$EGrA1KVJrYJWtwbceX2CTUK5Yh8(Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;Lcom/iMe/ui/custom/backup/BackupWordView;Lcom/iMe/ui/custom/backup/BackupWordView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->setupListenerFor$lambda$5$lambda$4(Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;Lcom/iMe/ui/custom/backup/BackupWordView;Lcom/iMe/ui/custom/backup/BackupWordView;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 26
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/base/mvp/view/MvpFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p2, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher$presenter$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher$presenter$2;-><init>(Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;)V

    .line 16
    new-instance p3, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    const-string v1, "mvpDelegate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "presenter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v0, v1, p2}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 26
    iput-object p3, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 27
    iput-object p2, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->resourceManager$delegate:Lkotlin/Lazy;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->binding:Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;

    .line 34
    invoke-direct {p0}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->setupView()V

    .line 35
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/view/MvpFrameLayout;->getMMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lmoxy/MvpDelegate;->onCreate()V

    .line 36
    invoke-virtual {p0}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmoxy/MvpDelegate;->onAttach()V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 19
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getPresenter()Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter;
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final setupListenerFor(Lcom/iMe/ui/custom/backup/BackupWordView;)V
    .locals 1

    .line 89
    new-instance v0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p1}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;Lcom/iMe/ui/custom/backup/BackupWordView;Lcom/iMe/ui/custom/backup/BackupWordView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setupListenerFor$lambda$5$lambda$4(Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;Lcom/iMe/ui/custom/backup/BackupWordView;Lcom/iMe/ui/custom/backup/BackupWordView;Landroid/view/View;)V
    .locals 1

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$view"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$this_with"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object p3, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->selectedBackupWordView:Lcom/iMe/ui/custom/backup/BackupWordView;

    if-eqz p3, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p3, v0}, Lcom/iMe/ui/custom/backup/BackupWordView;->setChecked(Z)V

    .line 93
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->selectedBackupWordView:Lcom/iMe/ui/custom/backup/BackupWordView;

    const/4 p0, 0x1

    .line 94
    invoke-virtual {p2, p0}, Lcom/iMe/ui/custom/backup/BackupWordView;->setChecked(Z)V

    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->binding:Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;->constraintWords:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "binding.constraintWords"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 473
    sget-object v1, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher$setupListeners$$inlined$filterIsInstance$1;->INSTANCE:Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher$setupListeners$$inlined$filterIsInstance$1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.sequences.Sequence<R of kotlin.sequences.SequencesKt___SequencesKt.filterIsInstance>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1295
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/custom/backup/BackupWordView;

    .line 108
    invoke-direct {p0, v1}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->setupListenerFor(Lcom/iMe/ui/custom/backup/BackupWordView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setupView()V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->applyColors()V

    .line 101
    invoke-direct {p0}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->setupListeners()V

    .line 102
    iget-object v0, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->binding:Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final applyColors()V
    .locals 5

    .line 48
    iget-object v0, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->binding:Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;

    .line 49
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;->constraintWords:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v3, 0x41100000    # 9.0f

    .line 50
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 51
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 52
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 49
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 54
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;->constraintWords:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "constraintWords"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 473
    sget-object v1, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher$applyColors$lambda$2$$inlined$filterIsInstance$1;->INSTANCE:Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher$applyColors$lambda$2$$inlined$filterIsInstance$1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.sequences.Sequence<R of kotlin.sequences.SequencesKt___SequencesKt.filterIsInstance>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1295
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/custom/backup/BackupWordView;

    .line 57
    invoke-virtual {v1}, Lcom/iMe/ui/custom/backup/BackupWordView;->applyColors()V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->selectedBackupWordView:Lcom/iMe/ui/custom/backup/BackupWordView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iMe/ui/custom/backup/BackupWordView;->setChecked(Z)V

    :goto_1
    return-void
.end method

.method public bridge synthetic getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/view/ICustomMvpView$-CC;->$default$getKoin(Lcom/iMe/ui/base/mvp/view/ICustomMvpView;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMvpDelegate()Lmoxy/MvpDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmoxy/MvpDelegate<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/view/ICustomMvpView$-CC;->$default$getMvpDelegate(Lcom/iMe/ui/base/mvp/view/ICustomMvpView;)Lmoxy/MvpDelegate;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 68
    invoke-virtual {p0}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmoxy/MvpDelegate;->onDetach()V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmoxy/MvpDelegate;->onDestroyView()V

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmoxy/MvpDelegate;->onDestroy()V

    :cond_2
    return-void
.end method

.method public final setSeed(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "seed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partOfSeed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->getPresenter()Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter;->setupWithSeed(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public setupBackupWords(Ljava/util/List;)V
    .locals 4
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

    .line 78
    iget-object v0, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->binding:Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;->constraintWords:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "binding.constraintWords"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 473
    sget-object v1, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher$setupBackupWords$$inlined$filterIsInstance$1;->INSTANCE:Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher$setupBackupWords$$inlined$filterIsInstance$1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.sequences.Sequence<R of kotlin.sequences.SequencesKt___SequencesKt.filterIsInstance>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1307
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v2, Lcom/iMe/ui/custom/backup/BackupWordView;

    .line 80
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/iMe/ui/custom/backup/BackupWordView;->setWord(Ljava/lang/String;)V

    move v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setupTitle(I)V
    .locals 5

    .line 74
    iget-object v0, p0, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->binding:Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWordSwitcherBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcher;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_eth_backup_confirm_word_description:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
