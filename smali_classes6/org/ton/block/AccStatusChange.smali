.class public enum Lorg/ton/block/AccStatusChange;
.super Ljava/lang/Enum;
.source "AccStatusChange.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/AccStatusChange$Companion;,
        Lorg/ton/block/AccStatusChange$DELETED;,
        Lorg/ton/block/AccStatusChange$FROZEN;,
        Lorg/ton/block/AccStatusChange$UNCHANGED;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ton/block/AccStatusChange;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ton/block/AccStatusChange;

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

.field public static final Companion:Lorg/ton/block/AccStatusChange$Companion;

.field public static final enum DELETED:Lorg/ton/block/AccStatusChange;

.field public static final enum FROZEN:Lorg/ton/block/AccStatusChange;

.field public static final enum UNCHANGED:Lorg/ton/block/AccStatusChange;


# direct methods
.method private static final synthetic $values()[Lorg/ton/block/AccStatusChange;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/ton/block/AccStatusChange;

    sget-object v1, Lorg/ton/block/AccStatusChange;->UNCHANGED:Lorg/ton/block/AccStatusChange;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/ton/block/AccStatusChange;->FROZEN:Lorg/ton/block/AccStatusChange;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/ton/block/AccStatusChange;->DELETED:Lorg/ton/block/AccStatusChange;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lorg/ton/block/AccStatusChange$UNCHANGED;

    const-string v1, "UNCHANGED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ton/block/AccStatusChange$UNCHANGED;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ton/block/AccStatusChange;->UNCHANGED:Lorg/ton/block/AccStatusChange;

    .line 19
    new-instance v0, Lorg/ton/block/AccStatusChange$FROZEN;

    const-string v1, "FROZEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/ton/block/AccStatusChange$FROZEN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ton/block/AccStatusChange;->FROZEN:Lorg/ton/block/AccStatusChange;

    .line 24
    new-instance v0, Lorg/ton/block/AccStatusChange$DELETED;

    const-string v1, "DELETED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/ton/block/AccStatusChange$DELETED;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ton/block/AccStatusChange;->DELETED:Lorg/ton/block/AccStatusChange;

    invoke-static {}, Lorg/ton/block/AccStatusChange;->$values()[Lorg/ton/block/AccStatusChange;

    move-result-object v0

    sput-object v0, Lorg/ton/block/AccStatusChange;->$VALUES:[Lorg/ton/block/AccStatusChange;

    new-instance v0, Lorg/ton/block/AccStatusChange$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/AccStatusChange$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/AccStatusChange;->Companion:Lorg/ton/block/AccStatusChange$Companion;

    .line 30
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lorg/ton/block/AccStatusChange$Companion$1;->INSTANCE:Lorg/ton/block/AccStatusChange$Companion$1;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lorg/ton/block/AccStatusChange;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/ton/block/AccStatusChange;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 12
    sget-object v0, Lorg/ton/block/AccStatusChange;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ton/block/AccStatusChange;
    .locals 1

    const-class v0, Lorg/ton/block/AccStatusChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/ton/block/AccStatusChange;

    return-object p0
.end method

.method public static values()[Lorg/ton/block/AccStatusChange;
    .locals 1

    sget-object v0, Lorg/ton/block/AccStatusChange;->$VALUES:[Lorg/ton/block/AccStatusChange;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ton/block/AccStatusChange;

    return-object v0
.end method
