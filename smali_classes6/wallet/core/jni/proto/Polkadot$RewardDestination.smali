.class public final enum Lwallet/core/jni/proto/Polkadot$RewardDestination;
.super Ljava/lang/Enum;
.source "Polkadot.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RewardDestination"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Polkadot$RewardDestination$RewardDestinationVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Polkadot$RewardDestination;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Polkadot$RewardDestination;

.field public static final enum CONTROLLER:Lwallet/core/jni/proto/Polkadot$RewardDestination;

.field public static final CONTROLLER_VALUE:I = 0x2

.field public static final enum STAKED:Lwallet/core/jni/proto/Polkadot$RewardDestination;

.field public static final STAKED_VALUE:I = 0x0

.field public static final enum STASH:Lwallet/core/jni/proto/Polkadot$RewardDestination;

.field public static final STASH_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Lwallet/core/jni/proto/Polkadot$RewardDestination;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lwallet/core/jni/proto/Polkadot$RewardDestination;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 23
    new-instance v0, Lwallet/core/jni/proto/Polkadot$RewardDestination;

    const-string v1, "STAKED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lwallet/core/jni/proto/Polkadot$RewardDestination;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Polkadot$RewardDestination;->STAKED:Lwallet/core/jni/proto/Polkadot$RewardDestination;

    .line 27
    new-instance v1, Lwallet/core/jni/proto/Polkadot$RewardDestination;

    const-string v3, "STASH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lwallet/core/jni/proto/Polkadot$RewardDestination;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Polkadot$RewardDestination;->STASH:Lwallet/core/jni/proto/Polkadot$RewardDestination;

    .line 31
    new-instance v3, Lwallet/core/jni/proto/Polkadot$RewardDestination;

    const-string v5, "CONTROLLER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lwallet/core/jni/proto/Polkadot$RewardDestination;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/proto/Polkadot$RewardDestination;->CONTROLLER:Lwallet/core/jni/proto/Polkadot$RewardDestination;

    .line 32
    new-instance v5, Lwallet/core/jni/proto/Polkadot$RewardDestination;

    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Lwallet/core/jni/proto/Polkadot$RewardDestination;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/proto/Polkadot$RewardDestination;->UNRECOGNIZED:Lwallet/core/jni/proto/Polkadot$RewardDestination;

    const/4 v7, 0x4

    new-array v7, v7, [Lwallet/core/jni/proto/Polkadot$RewardDestination;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 18
    sput-object v7, Lwallet/core/jni/proto/Polkadot$RewardDestination;->$VALUES:[Lwallet/core/jni/proto/Polkadot$RewardDestination;

    .line 82
    new-instance v0, Lwallet/core/jni/proto/Polkadot$RewardDestination$1;

    invoke-direct {v0}, Lwallet/core/jni/proto/Polkadot$RewardDestination$1;-><init>()V

    sput-object v0, Lwallet/core/jni/proto/Polkadot$RewardDestination;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput p3, p0, Lwallet/core/jni/proto/Polkadot$RewardDestination;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Polkadot$RewardDestination;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Polkadot$RewardDestination;->CONTROLLER:Lwallet/core/jni/proto/Polkadot$RewardDestination;

    return-object p0

    .line 71
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/Polkadot$RewardDestination;->STASH:Lwallet/core/jni/proto/Polkadot$RewardDestination;

    return-object p0

    .line 70
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/Polkadot$RewardDestination;->STAKED:Lwallet/core/jni/proto/Polkadot$RewardDestination;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lwallet/core/jni/proto/Polkadot$RewardDestination;",
            ">;"
        }
    .end annotation

    .line 79
    sget-object v0, Lwallet/core/jni/proto/Polkadot$RewardDestination;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 92
    sget-object v0, Lwallet/core/jni/proto/Polkadot$RewardDestination$RewardDestinationVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Polkadot$RewardDestination;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    invoke-static {p0}, Lwallet/core/jni/proto/Polkadot$RewardDestination;->forNumber(I)Lwallet/core/jni/proto/Polkadot$RewardDestination;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Polkadot$RewardDestination;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 18
    const-class v0, Lwallet/core/jni/proto/Polkadot$RewardDestination;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$RewardDestination;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Polkadot$RewardDestination;
    .locals 1

    .line 18
    sget-object v0, Lwallet/core/jni/proto/Polkadot$RewardDestination;->$VALUES:[Lwallet/core/jni/proto/Polkadot$RewardDestination;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Polkadot$RewardDestination;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Polkadot$RewardDestination;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 51
    sget-object v0, Lwallet/core/jni/proto/Polkadot$RewardDestination;->UNRECOGNIZED:Lwallet/core/jni/proto/Polkadot$RewardDestination;

    if-eq p0, v0, :cond_0

    .line 55
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$RewardDestination;->value:I

    return v0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
