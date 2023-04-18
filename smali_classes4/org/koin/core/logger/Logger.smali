.class public abstract Lorg/koin/core/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Logger.kt\norg/koin/core/logger/Logger\n*L\n1#1,60:1\n46#1,2:61\n46#1,2:63\n46#1,2:65\n46#1,2:67\n*S KotlinDebug\n*F\n+ 1 Logger.kt\norg/koin/core/logger/Logger\n*L\n28#1:61,2\n32#1:63,2\n36#1:65,2\n40#1:67,2\n*E\n"
.end annotation


# instance fields
.field private level:Lorg/koin/core/logger/Level;


# direct methods
.method public constructor <init>(Lorg/koin/core/logger/Level;)V
    .locals 1

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/koin/core/logger/Logger;->level:Lorg/koin/core/logger/Level;

    return-void
.end method


# virtual methods
.method public abstract display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V
.end method

.method public final isAt(Lorg/koin/core/logger/Level;)Z
    .locals 1

    const-string v0, "lvl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lorg/koin/core/logger/Logger;->level:Lorg/koin/core/logger/Level;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
