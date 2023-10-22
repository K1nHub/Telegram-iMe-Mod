.class public final Lorg/koin/core/KoinApplication;
.super Ljava/lang/Object;
.source "KoinApplication.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/koin/core/KoinApplication$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKoinApplication.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KoinApplication.kt\norg/koin/core/KoinApplication\n+ 2 Measure.kt\norg/koin/core/time/MeasureKt\n*L\n1#1,138:1\n34#2:139\n48#2,4:140\n*S KotlinDebug\n*F\n+ 1 KoinApplication.kt\norg/koin/core/KoinApplication\n*L\n61#1:139\n61#1:140,4\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/koin/core/KoinApplication$Companion;


# instance fields
.field private allowOverride:Z

.field private final koin:Lorg/koin/core/Koin;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/koin/core/KoinApplication$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/koin/core/KoinApplication$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/koin/core/KoinApplication;->Companion:Lorg/koin/core/KoinApplication$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/koin/core/Koin;

    invoke-direct {v0}, Lorg/koin/core/Koin;-><init>()V

    iput-object v0, p0, Lorg/koin/core/KoinApplication;->koin:Lorg/koin/core/Koin;

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lorg/koin/core/KoinApplication;->allowOverride:Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/koin/core/KoinApplication;-><init>()V

    return-void
.end method

.method private final loadModules(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;)V"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/koin/core/KoinApplication;->koin:Lorg/koin/core/Koin;

    iget-boolean v1, p0, Lorg/koin/core/KoinApplication;->allowOverride:Z

    invoke-virtual {v0, p1, v1}, Lorg/koin/core/Koin;->loadModules(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final createEagerInstances()V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/koin/core/KoinApplication;->koin:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->createEagerInstances()V

    return-void
.end method

.method public final getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/koin/core/KoinApplication;->koin:Lorg/koin/core/Koin;

    return-object v0
.end method

.method public final modules(Ljava/util/List;)Lorg/koin/core/KoinApplication;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;)",
            "Lorg/koin/core/KoinApplication;"
        }
    .end annotation

    const-string/jumbo v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lorg/koin/core/KoinApplication;->koin:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v0

    sget-object v1, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    invoke-virtual {v0, v1}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lorg/koin/mp/KoinPlatformTimeTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTimeTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTimeTools;->getTimeInNanoSeconds()J

    move-result-wide v2

    .line 61
    invoke-direct {p0, p1}, Lorg/koin/core/KoinApplication;->loadModules(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 50
    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTimeTools;->getTimeInNanoSeconds()J

    move-result-wide v4

    .line 51
    new-instance v0, Lkotlin/Pair;

    sub-long/2addr v4, v2

    long-to-double v2, v4

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 62
    iget-object p1, p0, Lorg/koin/core/KoinApplication;->koin:Lorg/koin/core/Koin;

    invoke-virtual {p1}, Lorg/koin/core/Koin;->getInstanceRegistry()Lorg/koin/core/registry/InstanceRegistry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/koin/core/registry/InstanceRegistry;->size()I

    move-result p1

    .line 63
    iget-object v0, p0, Lorg/koin/core/KoinApplication;->koin:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loaded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " definitions in "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-direct {p0, p1}, Lorg/koin/core/KoinApplication;->loadModules(Ljava/util/List;)V

    :goto_0
    return-object p0
.end method
