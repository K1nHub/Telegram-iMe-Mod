.class public enum Lorg/ton/block/ComputeSkipReason;
.super Ljava/lang/Enum;
.source "ComputeSkipReason.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/ComputeSkipReason$BAD_STATE;,
        Lorg/ton/block/ComputeSkipReason$Companion;,
        Lorg/ton/block/ComputeSkipReason$NO_GAS;,
        Lorg/ton/block/ComputeSkipReason$NO_STATE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ton/block/ComputeSkipReason;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ton/block/ComputeSkipReason;

.field private static final $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final enum BAD_STATE:Lorg/ton/block/ComputeSkipReason;

.field public static final Companion:Lorg/ton/block/ComputeSkipReason$Companion;

.field public static final enum NO_GAS:Lorg/ton/block/ComputeSkipReason;

.field public static final enum NO_STATE:Lorg/ton/block/ComputeSkipReason;


# direct methods
.method private static final synthetic $values()[Lorg/ton/block/ComputeSkipReason;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/ton/block/ComputeSkipReason;

    sget-object v1, Lorg/ton/block/ComputeSkipReason;->NO_STATE:Lorg/ton/block/ComputeSkipReason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/ton/block/ComputeSkipReason;->BAD_STATE:Lorg/ton/block/ComputeSkipReason;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/ton/block/ComputeSkipReason;->NO_GAS:Lorg/ton/block/ComputeSkipReason;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lorg/ton/block/ComputeSkipReason$NO_STATE;

    const-string v1, "NO_STATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ton/block/ComputeSkipReason$NO_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ton/block/ComputeSkipReason;->NO_STATE:Lorg/ton/block/ComputeSkipReason;

    .line 20
    new-instance v0, Lorg/ton/block/ComputeSkipReason$BAD_STATE;

    const-string v1, "BAD_STATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/ton/block/ComputeSkipReason$BAD_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ton/block/ComputeSkipReason;->BAD_STATE:Lorg/ton/block/ComputeSkipReason;

    .line 25
    new-instance v0, Lorg/ton/block/ComputeSkipReason$NO_GAS;

    const-string v1, "NO_GAS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/ton/block/ComputeSkipReason$NO_GAS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ton/block/ComputeSkipReason;->NO_GAS:Lorg/ton/block/ComputeSkipReason;

    invoke-static {}, Lorg/ton/block/ComputeSkipReason;->$values()[Lorg/ton/block/ComputeSkipReason;

    move-result-object v0

    sput-object v0, Lorg/ton/block/ComputeSkipReason;->$VALUES:[Lorg/ton/block/ComputeSkipReason;

    new-instance v0, Lorg/ton/block/ComputeSkipReason$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/ComputeSkipReason$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/ComputeSkipReason;->Companion:Lorg/ton/block/ComputeSkipReason$Companion;

    .line 31
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lorg/ton/block/ComputeSkipReason$Companion$1;->INSTANCE:Lorg/ton/block/ComputeSkipReason$Companion$1;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lorg/ton/block/ComputeSkipReason;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/ton/block/ComputeSkipReason;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 13
    sget-object v0, Lorg/ton/block/ComputeSkipReason;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final tlbCodec()Lorg/ton/tlb/TlbCombinator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbCombinator<",
            "Lorg/ton/block/ComputeSkipReason;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/ton/block/ComputeSkipReason;->Companion:Lorg/ton/block/ComputeSkipReason$Companion;

    invoke-virtual {v0}, Lorg/ton/block/ComputeSkipReason$Companion;->tlbCodec()Lorg/ton/tlb/TlbCombinator;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ton/block/ComputeSkipReason;
    .locals 1

    const-class v0, Lorg/ton/block/ComputeSkipReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/ton/block/ComputeSkipReason;

    return-object p0
.end method

.method public static values()[Lorg/ton/block/ComputeSkipReason;
    .locals 1

    sget-object v0, Lorg/ton/block/ComputeSkipReason;->$VALUES:[Lorg/ton/block/ComputeSkipReason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ton/block/ComputeSkipReason;

    return-object v0
.end method
