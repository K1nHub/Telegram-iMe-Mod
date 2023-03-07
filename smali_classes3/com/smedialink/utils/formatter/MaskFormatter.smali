.class public final Lcom/smedialink/utils/formatter/MaskFormatter;
.super Ljava/lang/Object;
.source "MaskFormatter.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaskFormatter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaskFormatter.kt\ncom/smedialink/utils/formatter/MaskFormatter\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,30:1\n56#2,6:31\n*S KotlinDebug\n*F\n+ 1 MaskFormatter.kt\ncom/smedialink/utils/formatter/MaskFormatter\n*L\n12#1:31,6\n*E\n"
.end annotation


# static fields
.field private static final HIDDEN_MASK:Ljava/lang/String;

.field public static final INSTANCE:Lcom/smedialink/utils/formatter/MaskFormatter;

.field private static final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/smedialink/utils/formatter/MaskFormatter;

    invoke-direct {v0}, Lcom/smedialink/utils/formatter/MaskFormatter;-><init>()V

    sput-object v0, Lcom/smedialink/utils/formatter/MaskFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/MaskFormatter;

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/smedialink/utils/formatter/MaskFormatter$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/smedialink/utils/formatter/MaskFormatter$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 12
    sput-object v0, Lcom/smedialink/utils/formatter/MaskFormatter;->resourceManager$delegate:Lkotlin/Lazy;

    const-string v0, "*"

    const/4 v1, 0x4

    .line 15
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smedialink/utils/formatter/MaskFormatter;->HIDDEN_MASK:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final formatBalanceOrMask(ZLjava/lang/Number;II)Ljava/lang/String;
    .locals 1

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 21
    sget-object p0, Lcom/smedialink/utils/formatter/MaskFormatter;->HIDDEN_MASK:Ljava/lang/String;

    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/smedialink/utils/formatter/MaskFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/MaskFormatter;

    invoke-direct {p1}, Lcom/smedialink/utils/formatter/MaskFormatter;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private final getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 12
    sget-object v0, Lcom/smedialink/utils/formatter/MaskFormatter;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 9
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final textOrMask(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 25
    sget-object p2, Lcom/smedialink/utils/formatter/MaskFormatter;->HIDDEN_MASK:Ljava/lang/String;

    :cond_0
    return-object p2
.end method
