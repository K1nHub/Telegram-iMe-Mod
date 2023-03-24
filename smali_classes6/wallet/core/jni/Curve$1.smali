.class synthetic Lwallet/core/jni/Curve$1;
.super Ljava/lang/Object;
.source "Curve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/Curve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$wallet$core$jni$Curve:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    invoke-static {}, Lwallet/core/jni/Curve;->values()[Lwallet/core/jni/Curve;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lwallet/core/jni/Curve$1;->$SwitchMap$wallet$core$jni$Curve:[I

    :try_start_0
    sget-object v1, Lwallet/core/jni/Curve;->SECP256K1:Lwallet/core/jni/Curve;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lwallet/core/jni/Curve$1;->$SwitchMap$wallet$core$jni$Curve:[I

    sget-object v1, Lwallet/core/jni/Curve;->ED25519:Lwallet/core/jni/Curve;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lwallet/core/jni/Curve$1;->$SwitchMap$wallet$core$jni$Curve:[I

    sget-object v1, Lwallet/core/jni/Curve;->ED25519BLAKE2BNANO:Lwallet/core/jni/Curve;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lwallet/core/jni/Curve$1;->$SwitchMap$wallet$core$jni$Curve:[I

    sget-object v1, Lwallet/core/jni/Curve;->CURVE25519:Lwallet/core/jni/Curve;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lwallet/core/jni/Curve$1;->$SwitchMap$wallet$core$jni$Curve:[I

    sget-object v1, Lwallet/core/jni/Curve;->NIST256P1:Lwallet/core/jni/Curve;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lwallet/core/jni/Curve$1;->$SwitchMap$wallet$core$jni$Curve:[I

    sget-object v1, Lwallet/core/jni/Curve;->ED25519EXTENDEDCARDANO:Lwallet/core/jni/Curve;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lwallet/core/jni/Curve$1;->$SwitchMap$wallet$core$jni$Curve:[I

    sget-object v1, Lwallet/core/jni/Curve;->STARKEX:Lwallet/core/jni/Curve;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
