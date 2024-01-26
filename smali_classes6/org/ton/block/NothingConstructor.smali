.class final Lorg/ton/block/NothingConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "Maybe.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/Nothing<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaybe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Maybe.kt\norg/ton/block/NothingConstructor\n+ 2 BitString.kt\norg/ton/bitstring/BitStringKt\n*L\n1#1,114:1\n13#2:115\n*S KotlinDebug\n*F\n+ 1 Maybe.kt\norg/ton/block/NothingConstructor\n*L\n75#1:115\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/NothingConstructor;

.field private static final nothing:Lorg/ton/block/Nothing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Nothing<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/NothingConstructor;

    invoke-direct {v0}, Lorg/ton/block/NothingConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/NothingConstructor;->INSTANCE:Lorg/ton/block/NothingConstructor;

    .line 77
    new-instance v0, Lorg/ton/block/Nothing;

    invoke-direct {v0}, Lorg/ton/block/Nothing;-><init>()V

    sput-object v0, Lorg/ton/block/NothingConstructor;->nothing:Lorg/ton/block/Nothing;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 13
    sget-object v2, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/ton/bitstring/BitString$Companion;->of([Z)Lorg/ton/bitstring/BitString;

    move-result-object v0

    const-string v1, "nothing$0 {X:Type} = Maybe X;"

    .line 73
    invoke-direct {p0, v1, v0}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lorg/ton/block/NothingConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/Nothing;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/Nothing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/block/Nothing<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object p1, Lorg/ton/block/NothingConstructor;->nothing:Lorg/ton/block/Nothing;

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p2, Lorg/ton/block/Nothing;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/NothingConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/Nothing;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/Nothing;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "Lorg/ton/block/Nothing<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
