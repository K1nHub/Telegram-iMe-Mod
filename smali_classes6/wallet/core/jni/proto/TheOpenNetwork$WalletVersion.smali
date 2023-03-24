.class public final enum Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;
.super Ljava/lang/Enum;
.source "TheOpenNetwork.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/TheOpenNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WalletVersion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion$WalletVersionVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

.field public static final enum UNRECOGNIZED:Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

.field public static final enum WALLET_V3_R1:Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

.field public static final WALLET_V3_R1_VALUE:I = 0x0

.field public static final enum WALLET_V3_R2:Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

.field public static final WALLET_V3_R2_VALUE:I = 0x1

.field public static final enum WALLET_V4_R2:Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

.field public static final WALLET_V4_R2_VALUE:I = 0x2

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 19
    new-instance v0, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    const-string v1, "WALLET_V3_R1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;->WALLET_V3_R1:Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    .line 23
    new-instance v1, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    const-string v3, "WALLET_V3_R2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;->WALLET_V3_R2:Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    .line 27
    new-instance v3, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    const-string v5, "WALLET_V4_R2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;->WALLET_V4_R2:Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    .line 28
    new-instance v5, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;->UNRECOGNIZED:Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    const/4 v7, 0x4

    new-array v7, v7, [Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 14
    sput-object v7, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;->$VALUES:[Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    .line 78
    new-instance v0, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion$1;

    invoke-direct {v0}, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion$1;-><init>()V

    sput-object v0, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput p3, p0, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;
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

    .line 68
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;->WALLET_V4_R2:Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    return-object p0

    .line 67
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;->WALLET_V3_R2:Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    return-object p0

    .line 66
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;->WALLET_V3_R1:Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;",
            ">;"
        }
    .end annotation

    .line 75
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 88
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion$WalletVersionVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;
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

    .line 61
    invoke-static {p0}, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;->forNumber(I)Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 14
    const-class v0, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;
    .locals 1

    .line 14
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;->$VALUES:[Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 47
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;->UNRECOGNIZED:Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    if-eq p0, v0, :cond_0

    .line 51
    iget v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;->value:I

    return v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
