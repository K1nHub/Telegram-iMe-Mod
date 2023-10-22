.class public final Lio/ktor/utils/io/bits/DefaultAllocator;
.super Ljava/lang/Object;
.source "MemoryFactoryJvm.kt"

# interfaces
.implements Lio/ktor/utils/io/bits/Allocator;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMemoryFactoryJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/DefaultAllocator\n+ 2 Numbers.kt\nio/ktor/utils/io/core/internal/NumbersKt\n*L\n1#1,48:1\n6#2,2:49\n*S KotlinDebug\n*F\n+ 1 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/DefaultAllocator\n*L\n43#1:49,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/utils/io/bits/DefaultAllocator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/utils/io/bits/DefaultAllocator;

    invoke-direct {v0}, Lio/ktor/utils/io/bits/DefaultAllocator;-><init>()V

    sput-object v0, Lio/ktor/utils/io/bits/DefaultAllocator;->INSTANCE:Lio/ktor/utils/io/bits/DefaultAllocator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alloc-gFv-Zug(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 41
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string v0, "allocate(size)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public free-3GNKZMM(Ljava/nio/ByteBuffer;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
