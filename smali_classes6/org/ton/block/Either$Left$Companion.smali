.class public final Lorg/ton/block/Either$Left$Companion;
.super Ljava/lang/Object;
.source "Either.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/Either$Left;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/block/Either$Left$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TT0;>;",
            "Lkotlinx/serialization/KSerializer<",
            "TT1;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/Either$Left<",
            "TT0;TT1;>;>;"
        }
    .end annotation

    const-string v0, "typeSerial0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeSerial1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lorg/ton/block/Either$Left$$serializer;

    invoke-direct {v0, p1, p2}, Lorg/ton/block/Either$Left$$serializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method
