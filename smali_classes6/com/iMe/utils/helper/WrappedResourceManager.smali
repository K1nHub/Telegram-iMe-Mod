.class public final Lcom/iMe/utils/helper/WrappedResourceManager;
.super Ljava/lang/Object;
.source "WrappedResourceManager.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWrappedResourceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WrappedResourceManager.kt\ncom/iMe/utils/helper/WrappedResourceManager\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,23:1\n56#2,6:24\n*S KotlinDebug\n*F\n+ 1 WrappedResourceManager.kt\ncom/iMe/utils/helper/WrappedResourceManager\n*L\n10#1:24,6\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/utils/helper/WrappedResourceManager;

.field private static final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/iMe/utils/helper/WrappedResourceManager;

    invoke-direct {v0}, Lcom/iMe/utils/helper/WrappedResourceManager;-><init>()V

    sput-object v0, Lcom/iMe/utils/helper/WrappedResourceManager;->INSTANCE:Lcom/iMe/utils/helper/WrappedResourceManager;

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/utils/helper/WrappedResourceManager$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/iMe/utils/helper/WrappedResourceManager$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 10
    sput-object v0, Lcom/iMe/utils/helper/WrappedResourceManager;->resourceManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 10
    sget-object v0, Lcom/iMe/utils/helper/WrappedResourceManager;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method public static final getString(I)Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/iMe/utils/helper/WrappedResourceManager;->INSTANCE:Lcom/iMe/utils/helper/WrappedResourceManager;

    invoke-direct {v0}, Lcom/iMe/utils/helper/WrappedResourceManager;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, "formatArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/iMe/utils/helper/WrappedResourceManager;->INSTANCE:Lcom/iMe/utils/helper/WrappedResourceManager;

    invoke-direct {v0}, Lcom/iMe/utils/helper/WrappedResourceManager;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 7
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method
