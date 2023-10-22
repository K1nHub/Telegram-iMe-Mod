.class public final enum Lwallet/core/jni/SS58AddressType;
.super Ljava/lang/Enum;
.source "SS58AddressType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/SS58AddressType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/SS58AddressType;

.field public static final enum KUSAMA:Lwallet/core/jni/SS58AddressType;

.field public static final enum POLKADOT:Lwallet/core/jni/SS58AddressType;


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 19
    new-instance v0, Lwallet/core/jni/SS58AddressType;

    const-string v1, "POLKADOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lwallet/core/jni/SS58AddressType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lwallet/core/jni/SS58AddressType;->POLKADOT:Lwallet/core/jni/SS58AddressType;

    .line 20
    new-instance v1, Lwallet/core/jni/SS58AddressType;

    const-string v3, "KUSAMA"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lwallet/core/jni/SS58AddressType;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lwallet/core/jni/SS58AddressType;->KUSAMA:Lwallet/core/jni/SS58AddressType;

    new-array v3, v5, [Lwallet/core/jni/SS58AddressType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 18
    sput-object v3, Lwallet/core/jni/SS58AddressType;->$VALUES:[Lwallet/core/jni/SS58AddressType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
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
            "(B)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-byte p3, p0, Lwallet/core/jni/SS58AddressType;->value:B

    return-void
.end method

.method public static createFromValue(B)Lwallet/core/jni/SS58AddressType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 31
    :cond_0
    sget-object p0, Lwallet/core/jni/SS58AddressType;->KUSAMA:Lwallet/core/jni/SS58AddressType;

    return-object p0

    .line 30
    :cond_1
    sget-object p0, Lwallet/core/jni/SS58AddressType;->POLKADOT:Lwallet/core/jni/SS58AddressType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/SS58AddressType;
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
    const-class v0, Lwallet/core/jni/SS58AddressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/SS58AddressType;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/SS58AddressType;
    .locals 1

    .line 18
    sget-object v0, Lwallet/core/jni/SS58AddressType;->$VALUES:[Lwallet/core/jni/SS58AddressType;

    invoke-virtual {v0}, [Lwallet/core/jni/SS58AddressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/SS58AddressType;

    return-object v0
.end method


# virtual methods
.method public value()B
    .locals 1

    .line 26
    iget-byte v0, p0, Lwallet/core/jni/SS58AddressType;->value:B

    return v0
.end method
