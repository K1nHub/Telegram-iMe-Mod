.class public final Lcom/smedialink/ui/custom/NetworkTypeView;
.super Landroid/widget/TextView;
.source "NetworkTypeView.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/custom/NetworkTypeView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkTypeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkTypeView.kt\ncom/smedialink/ui/custom/NetworkTypeView\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,55:1\n56#2,6:56\n*S KotlinDebug\n*F\n+ 1 NetworkTypeView.kt\ncom/smedialink/ui/custom/NetworkTypeView\n*L\n26#1:56,6\n*E\n"
.end annotation


# instance fields
.field private networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/custom/NetworkTypeView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/custom/NetworkTypeView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/custom/NetworkTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/smedialink/ui/custom/NetworkTypeView$special$$inlined$inject$default$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p3}, Lcom/smedialink/ui/custom/NetworkTypeView$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/smedialink/ui/custom/NetworkTypeView;->resourceManager$delegate:Lkotlin/Lazy;

    .line 29
    sget-object p1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iput-object p1, p0, Lcom/smedialink/ui/custom/NetworkTypeView;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    const/high16 p1, 0x41400000    # 12.0f

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x11

    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 44
    invoke-static {p0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/4 p1, 0x4

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setVerticalPadding(Landroid/view/View;Ljava/lang/Number;)V

    const/16 p1, 0xa

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    const-string p1, "network_type_view"

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/custom/NetworkTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/smedialink/ui/custom/NetworkTypeView;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 19
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/smedialink/ui/custom/NetworkTypeView;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final setNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/smedialink/ui/custom/NetworkTypeView;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    const/high16 v0, 0x41700000    # 15.0f

    .line 32
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-direct {p0}, Lcom/smedialink/ui/custom/NetworkTypeView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getBackgroundColor()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 33
    invoke-direct {p0}, Lcom/smedialink/ui/custom/NetworkTypeView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getTitle()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-direct {p0}, Lcom/smedialink/ui/custom/NetworkTypeView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getTextColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getSmallIcon()I

    move-result v0

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_arrow_down_16:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/4 v0, 0x4

    .line 36
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 37
    invoke-direct {p0}, Lcom/smedialink/ui/custom/NetworkTypeView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getTextColor()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getColor(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setCompoundDrawablesColor(Landroid/widget/TextView;I)V

    return-void
.end method
