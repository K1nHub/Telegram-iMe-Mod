.class public final Lio/ktor/network/selector/InterestSuspensionsMap$Companion;
.super Ljava/lang/Object;
.source "InterestSuspensionsMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/selector/InterestSuspensionsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/ktor/network/selector/InterestSuspensionsMap$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$updater(Lio/ktor/network/selector/InterestSuspensionsMap$Companion;Lio/ktor/network/selector/SelectInterest;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lio/ktor/network/selector/InterestSuspensionsMap$Companion;->updater(Lio/ktor/network/selector/SelectInterest;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p0

    return-object p0
.end method

.method private final updater(Lio/ktor/network/selector/SelectInterest;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/SelectInterest;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/ktor/network/selector/InterestSuspensionsMap;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 81
    invoke-static {}, Lio/ktor/network/selector/InterestSuspensionsMap;->access$getUpdaters$cp()[Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method
