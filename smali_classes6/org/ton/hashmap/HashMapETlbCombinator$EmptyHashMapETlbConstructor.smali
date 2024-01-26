.class final Lorg/ton/hashmap/HashMapETlbCombinator$EmptyHashMapETlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "HashMapE.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/HashMapETlbCombinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyHashMapETlbConstructor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/hashmap/HmeEmpty<",
        "*>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHashMapE.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HashMapE.kt\norg/ton/hashmap/HashMapETlbCombinator$EmptyHashMapETlbConstructor\n+ 2 BitString.kt\norg/ton/bitstring/BitStringKt\n*L\n1#1,76:1\n13#2:77\n*S KotlinDebug\n*F\n+ 1 HashMapE.kt\norg/ton/hashmap/HashMapETlbCombinator$EmptyHashMapETlbConstructor\n*L\n64#1:77\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/hashmap/HashMapETlbCombinator$EmptyHashMapETlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/hashmap/HashMapETlbCombinator$EmptyHashMapETlbConstructor;

    invoke-direct {v0}, Lorg/ton/hashmap/HashMapETlbCombinator$EmptyHashMapETlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/hashmap/HashMapETlbCombinator$EmptyHashMapETlbConstructor;->INSTANCE:Lorg/ton/hashmap/HashMapETlbCombinator$EmptyHashMapETlbConstructor;

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

    const-string v1, "hme_empty$0 {n:#} {X:Type} = HashmapE n X;"

    .line 62
    invoke-direct {p0, v1, v0}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lorg/ton/hashmap/HashMapETlbCombinator$EmptyHashMapETlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HmeEmpty;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HmeEmpty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/hashmap/HmeEmpty<",
            "*>;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance p1, Lorg/ton/hashmap/HmeEmpty;

    invoke-direct {p1}, Lorg/ton/hashmap/HmeEmpty;-><init>()V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p2, Lorg/ton/hashmap/HmeEmpty;

    invoke-virtual {p0, p1, p2}, Lorg/ton/hashmap/HashMapETlbCombinator$EmptyHashMapETlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HmeEmpty;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HmeEmpty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "Lorg/ton/hashmap/HmeEmpty<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
