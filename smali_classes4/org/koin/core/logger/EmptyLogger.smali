.class public final Lorg/koin/core/logger/EmptyLogger;
.super Lorg/koin/core/logger/Logger;
.source "EmptyLogger.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    sget-object v0, Lorg/koin/core/logger/Level;->NONE:Lorg/koin/core/logger/Level;

    invoke-direct {p0, v0}, Lorg/koin/core/logger/Logger;-><init>(Lorg/koin/core/logger/Level;)V

    return-void
.end method


# virtual methods
.method public display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "msg"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
