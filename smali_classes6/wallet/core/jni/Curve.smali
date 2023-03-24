.class public final enum Lwallet/core/jni/Curve;
.super Ljava/lang/Enum;
.source "Curve.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/Curve;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/Curve;

.field public static final enum CURVE25519:Lwallet/core/jni/Curve;

.field public static final enum ED25519:Lwallet/core/jni/Curve;

.field public static final enum ED25519BLAKE2BNANO:Lwallet/core/jni/Curve;

.field public static final enum ED25519EXTENDEDCARDANO:Lwallet/core/jni/Curve;

.field public static final enum NIST256P1:Lwallet/core/jni/Curve;

.field public static final enum SECP256K1:Lwallet/core/jni/Curve;

.field public static final enum STARKEX:Lwallet/core/jni/Curve;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 17
    new-instance v0, Lwallet/core/jni/Curve;

    const-string v1, "SECP256K1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lwallet/core/jni/Curve;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/Curve;->SECP256K1:Lwallet/core/jni/Curve;

    .line 18
    new-instance v1, Lwallet/core/jni/Curve;

    const-string v3, "ED25519"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lwallet/core/jni/Curve;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/Curve;->ED25519:Lwallet/core/jni/Curve;

    .line 19
    new-instance v3, Lwallet/core/jni/Curve;

    const-string v5, "ED25519BLAKE2BNANO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lwallet/core/jni/Curve;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/Curve;->ED25519BLAKE2BNANO:Lwallet/core/jni/Curve;

    .line 20
    new-instance v5, Lwallet/core/jni/Curve;

    const-string v7, "CURVE25519"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lwallet/core/jni/Curve;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/Curve;->CURVE25519:Lwallet/core/jni/Curve;

    .line 21
    new-instance v7, Lwallet/core/jni/Curve;

    const-string v9, "NIST256P1"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lwallet/core/jni/Curve;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/Curve;->NIST256P1:Lwallet/core/jni/Curve;

    .line 22
    new-instance v9, Lwallet/core/jni/Curve;

    const-string v11, "ED25519EXTENDEDCARDANO"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lwallet/core/jni/Curve;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lwallet/core/jni/Curve;->ED25519EXTENDEDCARDANO:Lwallet/core/jni/Curve;

    .line 23
    new-instance v11, Lwallet/core/jni/Curve;

    const-string v13, "STARKEX"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lwallet/core/jni/Curve;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lwallet/core/jni/Curve;->STARKEX:Lwallet/core/jni/Curve;

    const/4 v13, 0x7

    new-array v13, v13, [Lwallet/core/jni/Curve;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 16
    sput-object v13, Lwallet/core/jni/Curve;->$VALUES:[Lwallet/core/jni/Curve;

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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lwallet/core/jni/Curve;->value:I

    return-void
.end method

.method public static createFromValue(I)Lwallet/core/jni/Curve;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 39
    :pswitch_0
    sget-object p0, Lwallet/core/jni/Curve;->STARKEX:Lwallet/core/jni/Curve;

    return-object p0

    .line 38
    :pswitch_1
    sget-object p0, Lwallet/core/jni/Curve;->ED25519EXTENDEDCARDANO:Lwallet/core/jni/Curve;

    return-object p0

    .line 37
    :pswitch_2
    sget-object p0, Lwallet/core/jni/Curve;->NIST256P1:Lwallet/core/jni/Curve;

    return-object p0

    .line 36
    :pswitch_3
    sget-object p0, Lwallet/core/jni/Curve;->CURVE25519:Lwallet/core/jni/Curve;

    return-object p0

    .line 35
    :pswitch_4
    sget-object p0, Lwallet/core/jni/Curve;->ED25519BLAKE2BNANO:Lwallet/core/jni/Curve;

    return-object p0

    .line 34
    :pswitch_5
    sget-object p0, Lwallet/core/jni/Curve;->ED25519:Lwallet/core/jni/Curve;

    return-object p0

    .line 33
    :pswitch_6
    sget-object p0, Lwallet/core/jni/Curve;->SECP256K1:Lwallet/core/jni/Curve;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/Curve;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 16
    const-class v0, Lwallet/core/jni/Curve;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/Curve;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/Curve;
    .locals 1

    .line 16
    sget-object v0, Lwallet/core/jni/Curve;->$VALUES:[Lwallet/core/jni/Curve;

    invoke-virtual {v0}, [Lwallet/core/jni/Curve;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/Curve;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    sget-object v0, Lwallet/core/jni/Curve$1;->$SwitchMap$wallet$core$jni$Curve:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    const-string v0, "starkex"

    return-object v0

    :pswitch_1
    const-string v0, "ed25519-cardano-seed"

    return-object v0

    :pswitch_2
    const-string v0, "nist256p1"

    return-object v0

    :pswitch_3
    const-string v0, "curve25519"

    return-object v0

    :pswitch_4
    const-string v0, "ed25519-blake2b-nano"

    return-object v0

    :pswitch_5
    const-string v0, "ed25519"

    return-object v0

    :pswitch_6
    const-string v0, "secp256k1"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public value()I
    .locals 1

    .line 29
    iget v0, p0, Lwallet/core/jni/Curve;->value:I

    return v0
.end method
