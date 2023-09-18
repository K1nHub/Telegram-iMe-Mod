.class synthetic Lwallet/core/jni/StellarPassphrase$1;
.super Ljava/lang/Object;
.source "StellarPassphrase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/StellarPassphrase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$wallet$core$jni$StellarPassphrase:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    invoke-static {}, Lwallet/core/jni/StellarPassphrase;->values()[Lwallet/core/jni/StellarPassphrase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lwallet/core/jni/StellarPassphrase$1;->$SwitchMap$wallet$core$jni$StellarPassphrase:[I

    :try_start_0
    sget-object v1, Lwallet/core/jni/StellarPassphrase;->STELLAR:Lwallet/core/jni/StellarPassphrase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lwallet/core/jni/StellarPassphrase$1;->$SwitchMap$wallet$core$jni$StellarPassphrase:[I

    sget-object v1, Lwallet/core/jni/StellarPassphrase;->KIN:Lwallet/core/jni/StellarPassphrase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
