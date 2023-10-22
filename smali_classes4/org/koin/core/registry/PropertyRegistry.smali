.class public final Lorg/koin/core/registry/PropertyRegistry;
.super Ljava/lang/Object;
.source "PropertyRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPropertyRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PropertyRegistry.kt\norg/koin/core/registry/PropertyRegistry\n+ 2 Logger.kt\norg/koin/core/logger/Logger\n*L\n1#1,68:1\n28#2:69\n46#2,2:70\n29#2:72\n*S KotlinDebug\n*F\n+ 1 PropertyRegistry.kt\norg/koin/core/registry/PropertyRegistry\n*L\n38#1:69\n38#1:70,2\n38#1:72\n*E\n"
.end annotation


# instance fields
.field private final _values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/koin/core/Koin;)V
    .locals 1

    const-string v0, "_koin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->safeHashMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/koin/core/registry/PropertyRegistry;->_values:Ljava/util/Map;

    return-void
.end method
