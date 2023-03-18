.class public final Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;
.super Landroid/widget/FrameLayout;
.source "ChooseRecipientOptionsView.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChooseRecipientOptionsView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChooseRecipientOptionsView.kt\ncom/smedialink/ui/custom/ChooseRecipientOptionsView\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 CollectionExt.kt\ncom/smedialink/utils/extentions/common/CollectionExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,139:1\n56#2,6:140\n4#3:146\n5#3,2:149\n4#3:151\n5#3,2:154\n2634#4:147\n2634#4:152\n1#5:148\n1#5:153\n*S KotlinDebug\n*F\n+ 1 ChooseRecipientOptionsView.kt\ncom/smedialink/ui/custom/ChooseRecipientOptionsView\n*L\n31#1:140,6\n79#1:146\n79#1:149,2\n82#1:151\n82#1:154,2\n79#1:147\n82#1:152\n79#1:148\n82#1:153\n*E\n"
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
.method public static synthetic $r8$lambda$RmBgBhzvcEde2GpsydWD89TelNQ(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->setMixedClickListener$lambda$1(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 31
    iput-object p2, p0, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->resourceManager$delegate:Lkotlin/Lazy;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->binding:Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;

    .line 35
    sget-object p1, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$iconSize$2;->INSTANCE:Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$iconSize$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->iconSize$delegate:Lkotlin/Lazy;

    .line 36
    new-instance p1, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$iconPadding$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$iconPadding$2;-><init>(Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->iconPadding$delegate:Lkotlin/Lazy;

    .line 37
    new-instance p1, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$cornerSize$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$cornerSize$2;-><init>(Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->cornerSize$delegate:Lkotlin/Lazy;

    .line 38
    new-instance p1, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$backgroundColor$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$backgroundColor$2;-><init>(Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->backgroundColor$delegate:Lkotlin/Lazy;

    .line 39
    new-instance p1, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$backgroundPressedColor$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$backgroundPressedColor$2;-><init>(Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->backgroundPressedColor$delegate:Lkotlin/Lazy;

    .line 42
    invoke-direct {p0}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->setupView()V

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

    .line 24
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getColorWithDefaultAlpha(Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;Ljava/lang/String;)I
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->getColorWithDefaultAlpha(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private final getBackgroundColor()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->backgroundColor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getBackgroundPressedColor()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->backgroundPressedColor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getColorWithDefaultAlpha(Ljava/lang/String;)I
    .locals 1

    .line 131
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-static {p1, v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withAlpha(IF)I

    move-result p1

    return p1
.end method

.method private final getCornerSize()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->cornerSize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getIconPadding()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->iconPadding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getIconSize()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->iconSize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final setMixedClickListener(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, p2

    .line 60
    invoke-static/range {v0 .. v5}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 61
    new-instance p2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 62
    new-instance v0, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static final setMixedClickListener$lambda$1(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p2, "$isPressedDown"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_setMixedClickListener"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-boolean p2, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p2, :cond_1

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 69
    :cond_1
    iput-boolean p3, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_0

    .line 64
    :cond_2
    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :goto_0
    return p3
.end method

.method private final setSizedStartIcon(Landroid/widget/TextView;I)V
    .locals 4

    .line 119
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->getIconSize()I

    move-result v1

    invoke-direct {p0}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->getIconSize()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 118
    :goto_0
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-direct {p0}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->getIconPadding()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    return-void
.end method

.method private final setupView()V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->setupViews()V

    .line 95
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->setupColors()V

    .line 97
    iget-object v0, p0, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->binding:Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final setupViews()V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->binding:Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;

    .line 102
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->textContacts:Landroid/widget/TextView;

    .line 103
    sget v2, Lorg/telegram/messenger/R$string;->Contacts:I

    const-string v3, "Contacts"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "setupViews$lambda$8$lambda$5"

    .line 104
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_drawer_social_telegram:I

    invoke-direct {p0, v1, v2}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->setSizedStartIcon(Landroid/widget/TextView;I)V

    .line 106
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->textTwitter:Landroid/widget/TextView;

    .line 107
    invoke-direct {p0}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->drawer_social_network_twitter:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "setupViews$lambda$8$lambda$6"

    .line 108
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_drawer_social_twitter:I

    invoke-direct {p0, v1, v2}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->setSizedStartIcon(Landroid/widget/TextView;I)V

    .line 110
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->textQr:Landroid/widget/TextView;

    .line 111
    invoke-direct {p0}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_backup_secret_words_qr_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "setupViews$lambda$8$lambda$7"

    .line 112
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    invoke-direct {p0, v0, v1}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->setSizedStartIcon(Landroid/widget/TextView;I)V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 24
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final setupColors()V
    .locals 11

    .line 77
    iget-object v0, p0, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->binding:Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/widget/TextView;

    .line 78
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->textContacts:Landroid/widget/TextView;

    const-string v4, "textContacts"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->textTwitter:Landroid/widget/TextView;

    const-string v5, "textTwitter"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->textQr:Landroid/widget/TextView;

    const-string v6, "textQr"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "windowBackgroundWhiteBlueHeader"

    invoke-static {v3, v2}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setTextsColor(Ljava/lang/String;[Landroid/widget/TextView;)V

    new-array v2, v1, [Landroid/widget/FrameLayout;

    .line 79
    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->frameContacts:Landroid/widget/FrameLayout;

    aput-object v7, v2, v4

    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->frameTwitter:Landroid/widget/FrameLayout;

    aput-object v7, v2, v5

    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->frameQr:Landroid/widget/FrameLayout;

    aput-object v7, v2, v6

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2634
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 5
    check-cast v7, Landroid/widget/FrameLayout;

    .line 80
    invoke-direct {p0}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->getCornerSize()I

    move-result v8

    invoke-direct {p0}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->getBackgroundColor()I

    move-result v9

    invoke-direct {p0}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->getBackgroundPressedColor()I

    move-result v10

    invoke-static {v8, v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    new-array v1, v1, [Landroid/widget/TextView;

    .line 82
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->textContacts:Landroid/widget/TextView;

    aput-object v2, v1, v4

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->textTwitter:Landroid/widget/TextView;

    aput-object v2, v1, v5

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->textQr:Landroid/widget/TextView;

    aput-object v0, v1, v6

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

    const-string v2, "setupColors$lambda$4$lambda$3"

    .line 83
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setCompoundDrawablesColor(Landroid/widget/TextView;I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final setupListeners(Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 3

    const-string v0, "onContactsClickAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTwitterClickAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onQRClickAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->binding:Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;

    .line 53
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->frameContacts:Landroid/widget/FrameLayout;

    const-string v2, "frameContacts"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$setupListeners$1$1;

    invoke-direct {v2, p1}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$setupListeners$1$1;-><init>(Lorg/fork/utils/Callbacks$Callback;)V

    invoke-direct {p0, v1, v2}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->setMixedClickListener(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 54
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->frameTwitter:Landroid/widget/FrameLayout;

    const-string v1, "frameTwitter"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$setupListeners$1$2;

    invoke-direct {v1, p2}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$setupListeners$1$2;-><init>(Lorg/fork/utils/Callbacks$Callback;)V

    invoke-direct {p0, p1, v1}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->setMixedClickListener(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 55
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletChooseRecipientOptionsBinding;->frameQr:Landroid/widget/FrameLayout;

    const-string p2, "frameQr"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$setupListeners$1$3;

    invoke-direct {p2, p3}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView$setupListeners$1$3;-><init>(Lorg/fork/utils/Callbacks$Callback;)V

    invoke-direct {p0, p1, p2}, Lcom/smedialink/ui/custom/ChooseRecipientOptionsView;->setMixedClickListener(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
