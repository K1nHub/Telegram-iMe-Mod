.class public final Lorg/ton/hashmap/HashmapAug$Companion;
.super Ljava/lang/Object;
.source "HashmapAug.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/HashmapAug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/hashmap/HashmapAug$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/hashmap/HashmapAug$Companion;

    invoke-direct {v0}, Lorg/ton/hashmap/HashmapAug$Companion;-><init>()V

    sput-object v0, Lorg/ton/hashmap/HashmapAug$Companion;->$$INSTANCE:Lorg/ton/hashmap/HashmapAug$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final edge(ILorg/ton/hashmap/HmLabel;Lorg/ton/hashmap/HashmapAugNode;)Lorg/ton/hashmap/HashmapAug$AhmEdge;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(I",
            "Lorg/ton/hashmap/HmLabel;",
            "Lorg/ton/hashmap/HashmapAugNode<",
            "TX;TY;>;)",
            "Lorg/ton/hashmap/HashmapAug$AhmEdge<",
            "TX;TY;>;"
        }
    .end annotation

    const-string v0, "label"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "node"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lorg/ton/hashmap/AhmeEdgeImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/ton/hashmap/AhmeEdgeImpl;-><init>(ILorg/ton/hashmap/HmLabel;Lorg/ton/hashmap/HashmapAugNode;)V

    return-object v0
.end method

.method public final tlbCodec(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(I",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;",
            "Lorg/ton/tlb/TlbCodec<",
            "TY;>;)",
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashmapAug<",
            "TX;TY;>;>;"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "y"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lorg/ton/hashmap/HashmapAug$AhmEdge;->Companion:Lorg/ton/hashmap/HashmapAug$AhmEdge$Companion;

    invoke-virtual {v0, p1, p2, p3}, Lorg/ton/hashmap/HashmapAug$AhmEdge$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type org.ton.tlb.TlbCodec<org.ton.hashmap.HashmapAug<X of org.ton.hashmap.HashmapAug.Companion.tlbCodec, Y of org.ton.hashmap.HashmapAug.Companion.tlbCodec>>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
