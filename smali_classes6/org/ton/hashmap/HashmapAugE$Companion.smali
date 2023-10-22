.class public final Lorg/ton/hashmap/HashmapAugE$Companion;
.super Ljava/lang/Object;
.source "HashmapAugE.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/HashmapAugE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/hashmap/HashmapAugE$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/hashmap/HashmapAugE$Companion;

    invoke-direct {v0}, Lorg/ton/hashmap/HashmapAugE$Companion;-><init>()V

    sput-object v0, Lorg/ton/hashmap/HashmapAugE$Companion;->$$INSTANCE:Lorg/ton/hashmap/HashmapAugE$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final tlbCodec(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;
    .locals 9
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
            "Lorg/ton/hashmap/HashmapAugE<",
            "TX;TY;>;>;"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "y"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lorg/ton/hashmap/HashmapAugETlbCombinator;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lorg/ton/hashmap/HashmapAugETlbCombinator;-><init>(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
