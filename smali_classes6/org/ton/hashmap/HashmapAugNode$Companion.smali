.class public final Lorg/ton/hashmap/HashmapAugNode$Companion;
.super Ljava/lang/Object;
.source "HashmapAugNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/HashmapAugNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/hashmap/HashmapAugNode$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/hashmap/HashmapAugNode$Companion;

    invoke-direct {v0}, Lorg/ton/hashmap/HashmapAugNode$Companion;-><init>()V

    sput-object v0, Lorg/ton/hashmap/HashmapAugNode$Companion;->$$INSTANCE:Lorg/ton/hashmap/HashmapAugNode$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final tlbCodec(Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;I)Lorg/ton/tlb/TlbCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;",
            "Lorg/ton/tlb/TlbCodec<",
            "TY;>;I)",
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashmapAugNode<",
            "TX;TY;>;>;"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "y"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 85
    sget-object p3, Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;->Companion:Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf$Companion;

    invoke-virtual {p3, p1, p2}, Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object p1

    goto :goto_0

    .line 87
    :cond_0
    sget-object v0, Lorg/ton/hashmap/HashmapAugNode$AhmnFork;->Companion:Lorg/ton/hashmap/HashmapAugNode$AhmnFork$Companion;

    invoke-virtual {v0, p1, p2, p3}, Lorg/ton/hashmap/HashmapAugNode$AhmnFork$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;I)Lorg/ton/tlb/TlbCodec;

    move-result-object p1

    :goto_0
    const-string p2, "null cannot be cast to non-null type org.ton.tlb.TlbCodec<org.ton.hashmap.HashmapAugNode<X of org.ton.hashmap.HashmapAugNode.Companion.tlbCodec, Y of org.ton.hashmap.HashmapAugNode.Companion.tlbCodec>>"

    .line 84
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
