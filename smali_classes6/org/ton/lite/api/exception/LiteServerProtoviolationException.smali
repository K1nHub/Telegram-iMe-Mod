.class public final Lorg/ton/lite/api/exception/LiteServerProtoviolationException;
.super Lorg/ton/lite/api/exception/LiteServerException;
.source "LiteServerException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/lite/api/exception/LiteServerProtoviolationException$Companion;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/lite/api/exception/LiteServerProtoviolationException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/lite/api/exception/LiteServerProtoviolationException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x26d

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, v0, p1, v1}, Lorg/ton/lite/api/exception/LiteServerException;-><init>(ILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
