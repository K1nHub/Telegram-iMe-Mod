.class public final Lcom/iMe/ui/custom/ChooseRecipientOptionsView;
.super Landroid/widget/FrameLayout;
.source "ChooseRecipientOptionsView.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/custom/ChooseRecipientOptionsView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChooseRecipientOptionsView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChooseRecipientOptionsView.kt\ncom/iMe/ui/custom/ChooseRecipientOptionsView\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 CollectionExt.kt\ncom/iMe/utils/extentions/common/CollectionExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n56#2,6:135\n4#3:141\n5#3,2:144\n4#3:146\n5#3,2:149\n2634#4:142\n2634#4:147\n1#5:143\n1#5:148\n*S KotlinDebug\n*F\n+ 1 ChooseRecipientOptionsView.kt\ncom/iMe/ui/custom/ChooseRecipientOptionsView\n*L\n33#1:135,6\n70#1:141\n70#1:144,2\n77#1:146\n77#1:149,2\n70#1:142\n77#1:147\n70#1:143\n77#1:148\n*E\n"
.end annotation


# instance fields
.field private final backgroundColor$delegate:Lkotlin/Lazy;

.field private final backgroundPressedColor$delegate:Lkotlin/Lazy;

.field private final binding:Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;

.field private final cornerSize$delegate:Lkotlin/Lazy;

.field private final iconPadding$delegate:Lkotlin/Lazy;

.field private final iconSize$delegate:Lkotlin/Lazy;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 33
    iput-object p2, p0, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->resourceManager$delegate:Lkotlin/Lazy;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->binding:Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;

    .line 38
    sget-object p1, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$iconSize$2;->INSTANCE:Lcom/iMe/ui/custom/ChooseRecipientOptionsView$iconSize$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->iconSize$delegate:Lkotlin/Lazy;

    .line 39
    new-instance p1, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$iconPadding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$iconPadding$2;-><init>(Lcom/iMe/ui/custom/ChooseRecipientOptionsView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->iconPadding$delegate:Lkotlin/Lazy;

    .line 40
    new-instance p1, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$cornerSize$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$cornerSize$2;-><init>(Lcom/iMe/ui/custom/ChooseRecipientOptionsView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->cornerSize$delegate:Lkotlin/Lazy;

    .line 41
    new-instance p1, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$backgroundColor$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$backgroundColor$2;-><init>(Lcom/iMe/ui/custom/ChooseRecipientOptionsView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->backgroundColor$delegate:Lkotlin/Lazy;

    .line 42
    new-instance p1, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$backgroundPressedColor$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$backgroundPressedColor$2;-><init>(Lcom/iMe/ui/custom/ChooseRecipientOptionsView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->backgroundPressedColor$delegate:Lkotlin/Lazy;

    .line 45
    invoke-direct {p0}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->setupView()V

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

    .line 26
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getColorWithDefaultAlpha(Lcom/iMe/ui/custom/ChooseRecipientOptionsView;I)I
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->getColorWithDefaultAlpha(I)I

    move-result p0

    return p0
.end method

.method private final getBackgroundColor()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->backgroundColor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getBackgroundPressedColor()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->backgroundPressedColor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getColorWithDefaultAlpha(I)I
    .locals 1

    .line 126
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-static {p1, v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withAlpha(IF)I

    move-result p1

    return p1
.end method

.method private final getCornerSize()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->cornerSize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getIconPadding()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->iconPadding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getIconSize()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->iconSize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final setSizedStartIcon(Landroid/widget/TextView;I)V
    .locals 4

    .line 114
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->getIconSize()I

    move-result v1

    invoke-direct {p0}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->getIconSize()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 113
    :goto_0
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 121
    invoke-direct {p0}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->getIconPadding()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    return-void
.end method

.method private final setupView()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->setupViews()V

    .line 90
    invoke-virtual {p0}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->setupColors()V

    .line 92
    iget-object v0, p0, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->binding:Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final setupViews()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->binding:Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;

    .line 97
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->textPaste:Landroid/widget/TextView;

    .line 98
    sget v2, Lorg/telegram/messenger/R$string;->Paste:I

    const-string v3, "Paste"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "setupViews$lambda$7$lambda$4"

    .line 99
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_paste_24:I

    invoke-direct {p0, v1, v2}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->setSizedStartIcon(Landroid/widget/TextView;I)V

    .line 101
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->textContacts:Landroid/widget/TextView;

    .line 102
    sget v2, Lorg/telegram/messenger/R$string;->Contacts:I

    const-string v3, "Contacts"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "setupViews$lambda$7$lambda$5"

    .line 103
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_drawer_social_telegram:I

    invoke-direct {p0, v1, v2}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->setSizedStartIcon(Landroid/widget/TextView;I)V

    .line 105
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->textQr:Landroid/widget/TextView;

    .line 106
    sget v1, Lorg/telegram/messenger/R$string;->QrCode:I

    const-string v2, "QrCode"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "setupViews$lambda$7$lambda$6"

    .line 107
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->setSizedStartIcon(Landroid/widget/TextView;I)V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 26
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final setupColors()V
    .locals 10

    .line 63
    iget-object v0, p0, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->binding:Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;

    .line 65
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/4 v2, 0x3

    new-array v3, v2, [Landroid/widget/TextView;

    .line 66
    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->textContacts:Landroid/widget/TextView;

    const-string v5, "textContacts"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 67
    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->textPaste:Landroid/widget/TextView;

    const-string v6, "textPaste"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 68
    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->textQr:Landroid/widget/TextView;

    const-string v7, "textQr"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 64
    invoke-static {v1, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColorKey(I[Landroid/widget/TextView;)V

    new-array v1, v2, [Landroid/widget/FrameLayout;

    .line 70
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->frameContacts:Landroid/widget/FrameLayout;

    aput-object v3, v1, v5

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->framePaste:Landroid/widget/FrameLayout;

    aput-object v3, v1, v6

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->frameQr:Landroid/widget/FrameLayout;

    aput-object v3, v1, v7

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Landroid/widget/FrameLayout;

    .line 72
    invoke-direct {p0}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->getCornerSize()I

    move-result v4

    .line 73
    invoke-direct {p0}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->getBackgroundColor()I

    move-result v8

    .line 74
    invoke-direct {p0}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->getBackgroundPressedColor()I

    move-result v9

    .line 71
    invoke-static {v4, v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    new-array v1, v2, [Landroid/widget/TextView;

    .line 77
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->textContacts:Landroid/widget/TextView;

    aput-object v2, v1, v5

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->textPaste:Landroid/widget/TextView;

    aput-object v2, v1, v6

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->textQr:Landroid/widget/TextView;

    aput-object v0, v1, v7

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Landroid/widget/TextView;

    const-string v2, "setupColors$lambda$3$lambda$2"

    .line 78
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCompoundDrawablesColor(Landroid/widget/TextView;I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final setupListeners(Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "onPasteClickAction"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "onContactsClickAction"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "onQRClickAction"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p0

    .line 55
    iget-object v4, v3, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->binding:Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;

    .line 56
    iget-object v5, v4, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->framePaste:Landroid/widget/FrameLayout;

    const-string v6, "framePaste"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$setupListeners$1$1;

    invoke-direct {v8, v0}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$setupListeners$1$1;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 57
    iget-object v11, v4, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->frameContacts:Landroid/widget/FrameLayout;

    const-string v0, "frameContacts"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$setupListeners$1$2;

    invoke-direct {v14, v1}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$setupListeners$1$2;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    const-wide/16 v12, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 58
    iget-object v5, v4, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->frameQr:Landroid/widget/FrameLayout;

    const-string v0, "frameQr"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$setupListeners$1$3;

    invoke-direct {v8, v2}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$setupListeners$1$3;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-static/range {v5 .. v10}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method
