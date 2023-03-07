.class public abstract Lorg/koin/core/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.kt"


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

.method private final canLog(Lorg/koin/core/logger/Level;)Z
    .locals 1

    .line 27
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

.method private final doLog(Lorg/koin/core/logger/Level;Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Lorg/koin/core/logger/Logger;->canLog(Lorg/koin/core/logger/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0, p1, p2}, Lorg/koin/core/logger/Logger;->log(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final debug(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    invoke-direct {p0, v0, p1}, Lorg/koin/core/logger/Logger;->doLog(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lorg/koin/core/logger/Level;->ERROR:Lorg/koin/core/logger/Level;

    invoke-direct {p0, v0, p1}, Lorg/koin/core/logger/Logger;->doLog(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    return-void
.end method

.method public final getLevel()Lorg/koin/core/logger/Level;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/koin/core/logger/Logger;->level:Lorg/koin/core/logger/Level;

    return-object v0
.end method

.method public final info(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    invoke-direct {p0, v0, p1}, Lorg/koin/core/logger/Logger;->doLog(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    return-void
.end method

.method public final isAt(Lorg/koin/core/logger/Level;)Z
    .locals 1

    const-string v0, "lvl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
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

.method public abstract log(Lorg/koin/core/logger/Level;Ljava/lang/String;)V
.end method

.method public final log(Lorg/koin/core/logger/Level;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/logger/Level;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lvl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/koin/core/logger/Logger;->doLog(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
