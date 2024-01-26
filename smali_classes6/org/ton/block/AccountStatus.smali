.class public enum Lorg/ton/block/AccountStatus;
.super Ljava/lang/Enum;
.source "AccountStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/AccountStatus$ACTIVE;,
        Lorg/ton/block/AccountStatus$Companion;,
        Lorg/ton/block/AccountStatus$FROZEN;,
        Lorg/ton/block/AccountStatus$NONEXIST;,
        Lorg/ton/block/AccountStatus$UNINIT;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ton/block/AccountStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ton/block/AccountStatus;

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

.field public static final enum ACTIVE:Lorg/ton/block/AccountStatus;

.field public static final Companion:Lorg/ton/block/AccountStatus$Companion;

.field public static final enum FROZEN:Lorg/ton/block/AccountStatus;

.field public static final enum NONEXIST:Lorg/ton/block/AccountStatus;

.field public static final enum UNINIT:Lorg/ton/block/AccountStatus;


# direct methods
.method private static final synthetic $values()[Lorg/ton/block/AccountStatus;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/ton/block/AccountStatus;

    sget-object v1, Lorg/ton/block/AccountStatus;->UNINIT:Lorg/ton/block/AccountStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/ton/block/AccountStatus;->FROZEN:Lorg/ton/block/AccountStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/ton/block/AccountStatus;->ACTIVE:Lorg/ton/block/AccountStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/ton/block/AccountStatus;->NONEXIST:Lorg/ton/block/AccountStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lorg/ton/block/AccountStatus$UNINIT;

    const-string v1, "UNINIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ton/block/AccountStatus$UNINIT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ton/block/AccountStatus;->UNINIT:Lorg/ton/block/AccountStatus;

    .line 18
    new-instance v0, Lorg/ton/block/AccountStatus$FROZEN;

    const-string v1, "FROZEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/ton/block/AccountStatus$FROZEN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ton/block/AccountStatus;->FROZEN:Lorg/ton/block/AccountStatus;

    .line 23
    new-instance v0, Lorg/ton/block/AccountStatus$ACTIVE;

    const-string v1, "ACTIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/ton/block/AccountStatus$ACTIVE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ton/block/AccountStatus;->ACTIVE:Lorg/ton/block/AccountStatus;

    .line 28
    new-instance v0, Lorg/ton/block/AccountStatus$NONEXIST;

    const-string v1, "NONEXIST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/ton/block/AccountStatus$NONEXIST;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ton/block/AccountStatus;->NONEXIST:Lorg/ton/block/AccountStatus;

    invoke-static {}, Lorg/ton/block/AccountStatus;->$values()[Lorg/ton/block/AccountStatus;

    move-result-object v0

    sput-object v0, Lorg/ton/block/AccountStatus;->$VALUES:[Lorg/ton/block/AccountStatus;

    new-instance v0, Lorg/ton/block/AccountStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/AccountStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/AccountStatus;->Companion:Lorg/ton/block/AccountStatus$Companion;

    .line 33
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lorg/ton/block/AccountStatus$Companion$1;->INSTANCE:Lorg/ton/block/AccountStatus$Companion$1;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lorg/ton/block/AccountStatus;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/ton/block/AccountStatus;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 11
    sget-object v0, Lorg/ton/block/AccountStatus;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ton/block/AccountStatus;
    .locals 1

    const-class v0, Lorg/ton/block/AccountStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/ton/block/AccountStatus;

    return-object p0
.end method

.method public static values()[Lorg/ton/block/AccountStatus;
    .locals 1

    sget-object v0, Lorg/ton/block/AccountStatus;->$VALUES:[Lorg/ton/block/AccountStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ton/block/AccountStatus;

    return-object v0
.end method
