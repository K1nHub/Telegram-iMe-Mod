.class public final Lcom/iMe/ui/custom/cells/ProfileTwitterCell;
.super Lorg/telegram/ui/Cells/TextDetailCell;
.source "ProfileTwitterCell.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/custom/cells/ProfileTwitterCell$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProfileTwitterCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileTwitterCell.kt\ncom/iMe/ui/custom/cells/ProfileTwitterCell\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,108:1\n56#2,6:109\n*S KotlinDebug\n*F\n+ 1 ProfileTwitterCell.kt\ncom/iMe/ui/custom/cells/ProfileTwitterCell\n*L\n26#1:109,6\n*E\n"
.end annotation


# instance fields
.field private final buttonAdd$delegate:Lkotlin/Lazy;

.field private final imageView$delegate:Lkotlin/Lazy;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/custom/cells/ProfileTwitterCell$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextDetailCell;-><init>(Landroid/content/Context;)V

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/iMe/ui/custom/cells/ProfileTwitterCell$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->resourceManager$delegate:Lkotlin/Lazy;

    .line 29
    new-instance p1, Lcom/iMe/ui/custom/cells/ProfileTwitterCell$buttonAdd$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell$buttonAdd$2;-><init>(Lcom/iMe/ui/custom/cells/ProfileTwitterCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->buttonAdd$delegate:Lkotlin/Lazy;

    .line 30
    new-instance p1, Lcom/iMe/ui/custom/cells/ProfileTwitterCell$imageView$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell$imageView$2;-><init>(Lcom/iMe/ui/custom/cells/ProfileTwitterCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->imageView$delegate:Lkotlin/Lazy;

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->getButtonAdd()Lcom/iMe/ui/custom/SmallActionButton;

    move-result-object p1

    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->createLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->getImageView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->createLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic access$createAddButton(Lcom/iMe/ui/custom/cells/ProfileTwitterCell;)Lcom/iMe/ui/custom/SmallActionButton;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->createAddButton()Lcom/iMe/ui/custom/SmallActionButton;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createImageView(Lcom/iMe/ui/custom/cells/ProfileTwitterCell;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->createImageView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p0

    return-object p0
.end method

.method private final createAddButton()Lcom/iMe/ui/custom/SmallActionButton;
    .locals 7

    .line 87
    new-instance v6, Lcom/iMe/ui/custom/SmallActionButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/iMe/ui/custom/SmallActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 88
    sget v0, Lorg/telegram/messenger/R$string;->Add:I

    const-string v1, "Add"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    return-object v6
.end method

.method private final createImageView()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    .line 92
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    return-object v0
.end method

.method private final createLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 8

    .line 98
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    or-int/lit8 v3, v0, 0x10

    const/16 v4, 0x17

    const/4 v5, 0x0

    const/16 v6, 0x17

    const/4 v7, 0x0

    const/4 v1, -0x2

    const/4 v2, -0x2

    .line 96
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    const-string v1, "createFrame(\n           \u2026IN, VERTICAL_MARGIN\n    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getButtonAdd()Lcom/iMe/ui/custom/SmallActionButton;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->buttonAdd$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/custom/SmallActionButton;

    return-object v0
.end method

.method private final getImageView()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->imageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 23
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final setButtonClickListener(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 7

    const-string v0, "onButtonAddClickAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->getButtonAdd()Lcom/iMe/ui/custom/SmallActionButton;

    move-result-object v1

    new-instance v4, Lcom/iMe/ui/custom/cells/ProfileTwitterCell$setButtonClickListener$1;

    invoke-direct {v4, p1}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell$setButtonClickListener$1;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final setupWithTwitterStatus(Lcom/iMe/model/twitter/TwitterAccountStatus;)V
    .locals 3

    const-string v0, "twitterAccountStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    instance-of v0, p1, Lcom/iMe/model/twitter/TwitterAccountStatus$Active;

    const/16 v1, 0x40

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/iMe/model/twitter/TwitterAccountStatus$Active;

    invoke-virtual {p1}, Lcom/iMe/model/twitter/TwitterAccountStatus$Active;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->drawer_social_network_twitter:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p0, p1, v0, v2}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 51
    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->getButtonAdd()Lcom/iMe/ui/custom/SmallActionButton;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    .line 52
    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->getImageView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    .line 53
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 54
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_drawer_social_twitter:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 55
    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$color;->twitter:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getColor(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 58
    :cond_0
    instance-of v0, p1, Lcom/iMe/model/twitter/TwitterAccountStatus$Error;

    if-eqz v0, :cond_1

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/iMe/model/twitter/TwitterAccountStatus$Error;

    invoke-virtual {p1}, Lcom/iMe/model/twitter/TwitterAccountStatus$Error;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->drawer_social_network_twitter:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p0, p1, v0, v2}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->getButtonAdd()Lcom/iMe/ui/custom/SmallActionButton;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    .line 65
    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->getImageView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    .line 66
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 67
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_report:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 68
    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$color;->common_red:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getColor(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 71
    :cond_1
    sget-object v0, Lcom/iMe/model/twitter/TwitterAccountStatus$None;->INSTANCE:Lcom/iMe/model/twitter/TwitterAccountStatus$None;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 73
    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->profile_twitter_not_connected:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->drawer_social_network_twitter:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {p0, p1, v0, v2}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 77
    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->getImageView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    .line 78
    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/ProfileTwitterCell;->getButtonAdd()Lcom/iMe/ui/custom/SmallActionButton;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method
