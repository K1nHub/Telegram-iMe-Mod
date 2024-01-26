.class public final Lkotlinx/atomicfu/AtomicBoolean;
.super Ljava/lang/Object;
.source "AtomicFU.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/atomicfu/AtomicBoolean$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtomicFU.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtomicFU.kt\nkotlinx/atomicfu/AtomicBoolean\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,434:1\n1#2:435\n*E\n"
.end annotation


# instance fields
.field private volatile _value:I

.field private final trace:Lkotlinx/atomicfu/TraceBase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/atomicfu/AtomicBoolean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/atomicfu/AtomicBoolean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 185
    const-class v0, Lkotlinx/atomicfu/AtomicBoolean;

    const-string v1, "_value"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(ZLkotlinx/atomicfu/TraceBase;)V
    .locals 1

    const-string/jumbo v0, "trace"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p2, p0, Lkotlinx/atomicfu/AtomicBoolean;->trace:Lkotlinx/atomicfu/TraceBase;

    .line 136
    iput p1, p0, Lkotlinx/atomicfu/AtomicBoolean;->_value:I

    return-void
.end method


# virtual methods
.method public final getValue()Z
    .locals 1

    .line 146
    iget v0, p0, Lkotlinx/atomicfu/AtomicBoolean;->_value:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setValue(Z)V
    .locals 3

    .line 148
    iput p1, p0, Lkotlinx/atomicfu/AtomicBoolean;->_value:I

    .line 149
    iget-object v0, p0, Lkotlinx/atomicfu/AtomicBoolean;->trace:Lkotlinx/atomicfu/TraceBase;

    sget-object v1, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlinx/atomicfu/TraceBase;->append(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 182
    invoke-virtual {p0}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
