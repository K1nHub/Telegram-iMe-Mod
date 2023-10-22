.class public final Lkotlinx/atomicfu/AtomicLong;
.super Ljava/lang/Object;
.source "AtomicFU.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/atomicfu/AtomicLong$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtomicFU.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtomicFU.kt\nkotlinx/atomicfu/AtomicLong\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,434:1\n1#2:435\n*E\n"
.end annotation


# instance fields
.field private final trace:Lkotlinx/atomicfu/TraceBase;

.field private volatile value:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/atomicfu/AtomicLong$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/atomicfu/AtomicLong$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 431
    const-class v0, Lkotlinx/atomicfu/AtomicLong;

    const-string/jumbo v1, "value"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(JLkotlinx/atomicfu/TraceBase;)V
    .locals 1

    const-string/jumbo v0, "trace"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lkotlinx/atomicfu/AtomicLong;->trace:Lkotlinx/atomicfu/TraceBase;

    .line 324
    iput-wide p1, p0, Lkotlinx/atomicfu/AtomicLong;->value:J

    return-void
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    .line 324
    iget-wide v0, p0, Lkotlinx/atomicfu/AtomicLong;->value:J

    return-wide v0
.end method

.method public final setValue(J)V
    .locals 3

    .line 326
    iput-wide p1, p0, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 327
    iget-object v0, p0, Lkotlinx/atomicfu/AtomicLong;->trace:Lkotlinx/atomicfu/TraceBase;

    sget-object v1, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlinx/atomicfu/TraceBase;->append(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 428
    iget-wide v0, p0, Lkotlinx/atomicfu/AtomicLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
