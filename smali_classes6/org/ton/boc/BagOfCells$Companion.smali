.class public final Lorg/ton/boc/BagOfCells$Companion;
.super Ljava/lang/Object;
.source "BagOfCells.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/boc/BagOfCells;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBagOfCells.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BagOfCells.kt\norg/ton/boc/BagOfCells$Companion\n+ 2 ByteReadPacket.kt\nio/ktor/utils/io/core/ByteReadPacketKt\n+ 3 ByteReadPacketExtensions.kt\nio/ktor/utils/io/core/ByteReadPacketExtensionsKt\n+ 4 hex.kt\norg/ton/crypto/HexKt\n*L\n1#1,55:1\n57#2,2:56\n57#2,2:60\n15#3:58\n15#3:62\n54#4:59\n*S KotlinDebug\n*F\n+ 1 BagOfCells.kt\norg/ton/boc/BagOfCells$Companion\n*L\n45#1:56,2\n52#1:60,2\n45#1:58\n52#1:62\n47#1:59\n*E\n"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/boc/BagOfCells$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/boc/BagOfCells$Companion;

    invoke-direct {v0}, Lorg/ton/boc/BagOfCells$Companion;-><init>()V

    sput-object v0, Lorg/ton/boc/BagOfCells$Companion;->$$INSTANCE:Lorg/ton/boc/BagOfCells$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final of(Ljava/lang/Iterable;)Lorg/ton/boc/BagOfCells;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/ton/cell/Cell;",
            ">;)",
            "Lorg/ton/boc/BagOfCells;"
        }
    .end annotation

    const-string v0, "roots"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 33
    new-instance v0, Lorg/ton/boc/CachedBagOfCells;

    invoke-direct {v0, p1}, Lorg/ton/boc/CachedBagOfCells;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final of([B)Lorg/ton/boc/BagOfCells;
    .locals 4

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 57
    :try_start_0
    array-length v1, p1

    .line 15
    invoke-static {p1, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "wrap(array, offset, length)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/ton/boc/BagOfCells$Companion$of$$inlined$ByteReadPacket$default$1;

    invoke-direct {v1, p1}, Lorg/ton/boc/BagOfCells$Companion$of$$inlined$ByteReadPacket$default$1;-><init>([B)V

    invoke-static {v0, v1}, Lio/ktor/utils/io/core/ByteReadPacketExtensionsKt;->ByteReadPacket(Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function1;)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Lorg/ton/boc/BagOfCells$Companion;->read(Lio/ktor/utils/io/core/Input;)Lorg/ton/boc/BagOfCells;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t load BoC: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {p1}, Lorg/ton/crypto/HexKt;->hex([B)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final varargs of([Lorg/ton/cell/Cell;)Lorg/ton/boc/BagOfCells;
    .locals 1

    const-string v0, "roots"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 39
    new-instance v0, Lorg/ton/boc/CachedBagOfCells;

    invoke-direct {v0, p1}, Lorg/ton/boc/CachedBagOfCells;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final read(Lio/ktor/utils/io/core/Input;)Lorg/ton/boc/BagOfCells;
    .locals 2

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Lio/ktor/utils/io/core/StringsKt;->readBytes(Lio/ktor/utils/io/core/Input;)[B

    move-result-object p1

    .line 57
    array-length v0, p1

    const/4 v1, 0x0

    .line 15
    invoke-static {p1, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "wrap(array, offset, length)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/ton/boc/BagOfCells$Companion$read$$inlined$ByteReadPacket$default$1;

    invoke-direct {v1, p1}, Lorg/ton/boc/BagOfCells$Companion$read$$inlined$ByteReadPacket$default$1;-><init>([B)V

    invoke-static {v0, v1}, Lio/ktor/utils/io/core/ByteReadPacketExtensionsKt;->ByteReadPacket(Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function1;)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p1

    .line 52
    invoke-static {p1}, Lorg/ton/boc/BagOfCellsUtilsKt;->readBagOfCell(Lio/ktor/utils/io/core/ByteReadPacket;)Lorg/ton/boc/BagOfCells;

    move-result-object p1

    return-object p1
.end method
