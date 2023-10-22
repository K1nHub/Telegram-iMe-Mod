.class final Lorg/ton/block/MsgAddressExtTlbCombinator;
.super Lorg/ton/tlb/TlbCombinator;
.source "MsgAddressExt.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbCombinator<",
        "Lorg/ton/block/MsgAddressExt;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/MsgAddressExtTlbCombinator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/MsgAddressExtTlbCombinator;

    invoke-direct {v0}, Lorg/ton/block/MsgAddressExtTlbCombinator;-><init>()V

    sput-object v0, Lorg/ton/block/MsgAddressExtTlbCombinator;->INSTANCE:Lorg/ton/block/MsgAddressExtTlbCombinator;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 37
    const-class v0, Lorg/ton/block/MsgAddressExt;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    .line 39
    const-class v2, Lorg/ton/block/AddrNone;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    sget-object v3, Lorg/ton/block/AddrNone;->INSTANCE:Lorg/ton/block/AddrNone;

    invoke-virtual {v3}, Lorg/ton/block/AddrNone;->tlbConstructor()Lorg/ton/tlb/TlbConstructor;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lorg/ton/block/AddrExtern;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 40
    sget-object v3, Lorg/ton/block/AddrExtern;->Companion:Lorg/ton/block/AddrExtern$Companion;

    invoke-virtual {v3}, Lorg/ton/block/AddrExtern$Companion;->tlbConstructor()Lorg/ton/tlb/TlbConstructor;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 37
    invoke-direct {p0, v0, v1}, Lorg/ton/tlb/TlbCombinator;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    return-void
.end method
