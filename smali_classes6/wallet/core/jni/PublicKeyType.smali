.class public final enum Lwallet/core/jni/PublicKeyType;
.super Ljava/lang/Enum;
.source "PublicKeyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/PublicKeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/PublicKeyType;

.field public static final enum CURVE25519:Lwallet/core/jni/PublicKeyType;

.field public static final enum ED25519:Lwallet/core/jni/PublicKeyType;

.field public static final enum ED25519BLAKE2B:Lwallet/core/jni/PublicKeyType;

.field public static final enum ED25519CARDANO:Lwallet/core/jni/PublicKeyType;

.field public static final enum NIST256P1:Lwallet/core/jni/PublicKeyType;

.field public static final enum NIST256P1EXTENDED:Lwallet/core/jni/PublicKeyType;

.field public static final enum SECP256K1:Lwallet/core/jni/PublicKeyType;

.field public static final enum SECP256K1EXTENDED:Lwallet/core/jni/PublicKeyType;

.field public static final enum STARKEX:Lwallet/core/jni/PublicKeyType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 17
    new-instance v0, Lwallet/core/jni/PublicKeyType;

    const-string v1, "SECP256K1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lwallet/core/jni/PublicKeyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/PublicKeyType;->SECP256K1:Lwallet/core/jni/PublicKeyType;

    .line 18
    new-instance v1, Lwallet/core/jni/PublicKeyType;

    const-string v3, "SECP256K1EXTENDED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lwallet/core/jni/PublicKeyType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/PublicKeyType;->SECP256K1EXTENDED:Lwallet/core/jni/PublicKeyType;

    .line 19
    new-instance v3, Lwallet/core/jni/PublicKeyType;

    const-string v5, "NIST256P1"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lwallet/core/jni/PublicKeyType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/PublicKeyType;->NIST256P1:Lwallet/core/jni/PublicKeyType;

    .line 20
    new-instance v5, Lwallet/core/jni/PublicKeyType;

    const-string v7, "NIST256P1EXTENDED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lwallet/core/jni/PublicKeyType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/PublicKeyType;->NIST256P1EXTENDED:Lwallet/core/jni/PublicKeyType;

    .line 21
    new-instance v7, Lwallet/core/jni/PublicKeyType;

    const-string v9, "ED25519"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lwallet/core/jni/PublicKeyType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/PublicKeyType;->ED25519:Lwallet/core/jni/PublicKeyType;

    .line 22
    new-instance v9, Lwallet/core/jni/PublicKeyType;

    const-string v11, "ED25519BLAKE2B"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lwallet/core/jni/PublicKeyType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lwallet/core/jni/PublicKeyType;->ED25519BLAKE2B:Lwallet/core/jni/PublicKeyType;

    .line 23
    new-instance v11, Lwallet/core/jni/PublicKeyType;

    const-string v13, "CURVE25519"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lwallet/core/jni/PublicKeyType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lwallet/core/jni/PublicKeyType;->CURVE25519:Lwallet/core/jni/PublicKeyType;

    .line 24
    new-instance v13, Lwallet/core/jni/PublicKeyType;

    const-string v15, "ED25519CARDANO"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lwallet/core/jni/PublicKeyType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lwallet/core/jni/PublicKeyType;->ED25519CARDANO:Lwallet/core/jni/PublicKeyType;

    .line 25
    new-instance v15, Lwallet/core/jni/PublicKeyType;

    const-string v14, "STARKEX"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lwallet/core/jni/PublicKeyType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lwallet/core/jni/PublicKeyType;->STARKEX:Lwallet/core/jni/PublicKeyType;

    const/16 v14, 0x9

    new-array v14, v14, [Lwallet/core/jni/PublicKeyType;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 16
    sput-object v14, Lwallet/core/jni/PublicKeyType;->$VALUES:[Lwallet/core/jni/PublicKeyType;

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

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lwallet/core/jni/PublicKeyType;->value:I

    return-void
.end method

.method public static createFromValue(I)Lwallet/core/jni/PublicKeyType;
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

    .line 43
    :pswitch_0
    sget-object p0, Lwallet/core/jni/PublicKeyType;->STARKEX:Lwallet/core/jni/PublicKeyType;

    return-object p0

    .line 42
    :pswitch_1
    sget-object p0, Lwallet/core/jni/PublicKeyType;->ED25519CARDANO:Lwallet/core/jni/PublicKeyType;

    return-object p0

    .line 41
    :pswitch_2
    sget-object p0, Lwallet/core/jni/PublicKeyType;->CURVE25519:Lwallet/core/jni/PublicKeyType;

    return-object p0

    .line 40
    :pswitch_3
    sget-object p0, Lwallet/core/jni/PublicKeyType;->ED25519BLAKE2B:Lwallet/core/jni/PublicKeyType;

    return-object p0

    .line 39
    :pswitch_4
    sget-object p0, Lwallet/core/jni/PublicKeyType;->ED25519:Lwallet/core/jni/PublicKeyType;

    return-object p0

    .line 38
    :pswitch_5
    sget-object p0, Lwallet/core/jni/PublicKeyType;->NIST256P1EXTENDED:Lwallet/core/jni/PublicKeyType;

    return-object p0

    .line 37
    :pswitch_6
    sget-object p0, Lwallet/core/jni/PublicKeyType;->NIST256P1:Lwallet/core/jni/PublicKeyType;

    return-object p0

    .line 36
    :pswitch_7
    sget-object p0, Lwallet/core/jni/PublicKeyType;->SECP256K1EXTENDED:Lwallet/core/jni/PublicKeyType;

    return-object p0

    .line 35
    :pswitch_8
    sget-object p0, Lwallet/core/jni/PublicKeyType;->SECP256K1:Lwallet/core/jni/PublicKeyType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/PublicKeyType;
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
    const-class v0, Lwallet/core/jni/PublicKeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/PublicKeyType;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/PublicKeyType;
    .locals 1

    .line 16
    sget-object v0, Lwallet/core/jni/PublicKeyType;->$VALUES:[Lwallet/core/jni/PublicKeyType;

    invoke-virtual {v0}, [Lwallet/core/jni/PublicKeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/PublicKeyType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 31
    iget v0, p0, Lwallet/core/jni/PublicKeyType;->value:I

    return v0
.end method
