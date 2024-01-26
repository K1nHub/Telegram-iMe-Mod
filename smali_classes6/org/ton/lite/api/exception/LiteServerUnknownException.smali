.class public final Lorg/ton/lite/api/exception/LiteServerUnknownException;
.super Lorg/ton/lite/api/exception/LiteServerException;
.source "LiteServerException.kt"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lorg/ton/lite/api/exception/LiteServerException;-><init>(ILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
