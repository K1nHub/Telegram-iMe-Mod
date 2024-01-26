.class public final Lorg/ton/logger/Logger$DefaultImpls;
.super Ljava/lang/Object;
.source "Logger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/logger/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static debug(Lorg/ton/logger/Logger;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/logger/Logger;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lorg/ton/logger/Logger$Level;->DEBUG:Lorg/ton/logger/Logger$Level;

    invoke-interface {p0, v0, p1}, Lorg/ton/logger/Logger;->log(Lorg/ton/logger/Logger$Level;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static info(Lorg/ton/logger/Logger;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/logger/Logger;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lorg/ton/logger/Logger$Level;->INFO:Lorg/ton/logger/Logger$Level;

    invoke-interface {p0, v0, p1}, Lorg/ton/logger/Logger;->log(Lorg/ton/logger/Logger$Level;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static warn(Lorg/ton/logger/Logger;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/logger/Logger;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lorg/ton/logger/Logger$Level;->WARN:Lorg/ton/logger/Logger$Level;

    invoke-interface {p0, v0, p1}, Lorg/ton/logger/Logger;->log(Lorg/ton/logger/Logger$Level;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
