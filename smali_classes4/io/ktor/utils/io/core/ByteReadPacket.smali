.class public final Lio/ktor/utils/io/core/ByteReadPacket;
.super Lio/ktor/utils/io/core/Input;
.source "ByteReadPacket.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/core/ByteReadPacket$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/utils/io/core/ByteReadPacket$Companion;

.field private static final Empty:Lio/ktor/utils/io/core/ByteReadPacket;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/ktor/utils/io/core/ByteReadPacket$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/utils/io/core/ByteReadPacket$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/utils/io/core/ByteReadPacket;->Companion:Lio/ktor/utils/io/core/ByteReadPacket$Companion;

    .line 45
    new-instance v0, Lio/ktor/utils/io/core/ByteReadPacket;

    sget-object v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmptyPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lio/ktor/utils/io/core/ByteReadPacket;-><init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;JLio/ktor/utils/io/pool/ObjectPool;)V

    sput-object v0, Lio/ktor/utils/io/core/ByteReadPacket;->Empty:Lio/ktor/utils/io/core/ByteReadPacket;

    return-void
.end method

.method public constructor <init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;JLio/ktor/utils/io/pool/ObjectPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            "J",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "head"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pool"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/core/Input;-><init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;JLio/ktor/utils/io/pool/ObjectPool;)V

    .line 22
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->markNoMoreChunksAvailable()V

    return-void
.end method

.method public constructor <init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "head"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pool"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Lio/ktor/utils/io/core/BuffersKt;->remainingAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p2}, Lio/ktor/utils/io/core/ByteReadPacket;-><init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;JLio/ktor/utils/io/pool/ObjectPool;)V

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 1

    .line 14
    sget-object v0, Lio/ktor/utils/io/core/ByteReadPacket;->Empty:Lio/ktor/utils/io/core/ByteReadPacket;

    return-object v0
.end method


# virtual methods
.method protected final closeSource()V
    .locals 0

    return-void
.end method

.method public final copy()Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 5

    .line 29
    new-instance v0, Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHead()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    invoke-static {v1}, Lio/ktor/utils/io/core/BuffersKt;->copyAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v2

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/ktor/utils/io/core/ByteReadPacket;-><init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;JLio/ktor/utils/io/pool/ObjectPool;)V

    return-object v0
.end method

.method protected final fill()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ByteReadPacket("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes remaining)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
