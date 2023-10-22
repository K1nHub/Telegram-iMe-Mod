.class public final Lio/ktor/network/sockets/TypeOfService;
.super Ljava/lang/Object;
.source "TypeOfService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/sockets/TypeOfService$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/network/sockets/TypeOfService$Companion;

.field private static final UNDEFINED:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/network/sockets/TypeOfService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/network/sockets/TypeOfService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/network/sockets/TypeOfService;->Companion:Lio/ktor/network/sockets/TypeOfService$Companion;

    const/4 v0, 0x0

    .line 27
    invoke-static {v0}, Lio/ktor/network/sockets/TypeOfService;->constructor-impl(B)B

    move-result v0

    sput-byte v0, Lio/ktor/network/sockets/TypeOfService;->UNDEFINED:B

    const/4 v0, 0x2

    .line 28
    invoke-static {v0}, Lio/ktor/network/sockets/TypeOfService;->constructor-impl(B)B

    const/4 v0, 0x4

    .line 29
    invoke-static {v0}, Lio/ktor/network/sockets/TypeOfService;->constructor-impl(B)B

    const/16 v0, 0x8

    .line 30
    invoke-static {v0}, Lio/ktor/network/sockets/TypeOfService;->constructor-impl(B)B

    const/16 v0, 0x10

    .line 31
    invoke-static {v0}, Lio/ktor/network/sockets/TypeOfService;->constructor-impl(B)B

    return-void
.end method

.method public static final synthetic access$getUNDEFINED$cp()B
    .locals 1

    .line 13
    sget-byte v0, Lio/ktor/network/sockets/TypeOfService;->UNDEFINED:B

    return v0
.end method

.method public static constructor-impl(B)B
    .locals 0

    return p0
.end method

.method public static final equals-impl0(BB)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
