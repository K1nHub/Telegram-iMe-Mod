.class final Lorg/ton/block/MsgAddressTlbCombinator;
.super Lorg/ton/tlb/TlbCombinator;
.source "MsgAddress.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbCombinator<",
        "Lorg/ton/block/MsgAddress;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/MsgAddressTlbCombinator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/MsgAddressTlbCombinator;

    invoke-direct {v0}, Lorg/ton/block/MsgAddressTlbCombinator;-><init>()V

    sput-object v0, Lorg/ton/block/MsgAddressTlbCombinator;->INSTANCE:Lorg/ton/block/MsgAddressTlbCombinator;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 13
    const-class v0, Lorg/ton/block/MsgAddress;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    .line 15
    const-class v2, Lorg/ton/block/MsgAddressInt;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    sget-object v3, Lorg/ton/block/MsgAddressInt;->Companion:Lorg/ton/block/MsgAddressInt$Companion;

    invoke-virtual {v3}, Lorg/ton/block/MsgAddressInt$Companion;->tlbCodec()Lorg/ton/tlb/TlbCombinator;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lorg/ton/block/MsgAddressExt;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 16
    sget-object v3, Lorg/ton/block/MsgAddressExt;->Companion:Lorg/ton/block/MsgAddressExt$Companion;

    invoke-virtual {v3}, Lorg/ton/block/MsgAddressExt$Companion;->tlbCodec()Lorg/ton/tlb/TlbCombinator;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 13
    invoke-direct {p0, v0, v1}, Lorg/ton/tlb/TlbCombinator;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    return-void
.end method
