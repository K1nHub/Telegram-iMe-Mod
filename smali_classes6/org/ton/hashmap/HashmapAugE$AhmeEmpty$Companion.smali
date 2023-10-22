.class public final Lorg/ton/hashmap/HashmapAugE$AhmeEmpty$Companion;
.super Ljava/lang/Object;
.source "HashmapAugE.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/HashmapAugE$AhmeEmpty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/hashmap/HashmapAugE$AhmeEmpty$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/hashmap/HashmapAugE$AhmeEmpty$Companion;

    invoke-direct {v0}, Lorg/ton/hashmap/HashmapAugE$AhmeEmpty$Companion;-><init>()V

    sput-object v0, Lorg/ton/hashmap/HashmapAugE$AhmeEmpty$Companion;->$$INSTANCE:Lorg/ton/hashmap/HashmapAugE$AhmeEmpty$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final tlbCodec(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(I",
            "Lorg/ton/tlb/TlbCodec<",
            "TY;>;)",
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashmapAugE$AhmeEmpty<",
            "TX;TY;>;>;"
        }
    .end annotation

    const-string v0, "y"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lorg/ton/hashmap/AhmeEmptyTlbConstructor;

    invoke-direct {v0, p1, p2}, Lorg/ton/hashmap/AhmeEmptyTlbConstructor;-><init>(ILorg/ton/tlb/TlbCodec;)V

    return-object v0
.end method
