.class public final Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;
.super Lio/ktor/utils/io/internal/ReadWriteBufferState;
.source "ReadWriteBufferState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/ReadWriteBufferState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IdleEmpty"
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    invoke-direct {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;-><init>()V

    sput-object v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 28
    invoke-static {}, Lio/ktor/utils/io/internal/ReadWriteBufferStateKt;->getEmptyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Lio/ktor/utils/io/internal/ReadWriteBufferStateKt;->getEmptyCapacity()Lio/ktor/utils/io/internal/RingBufferCapacity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lio/ktor/utils/io/internal/ReadWriteBufferState;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getIdle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "IDLE(empty)"

    return-object v0
.end method
