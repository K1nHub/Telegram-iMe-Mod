.class public final enum Lwallet/core/jni/StellarVersionByte;
.super Ljava/lang/Enum;
.source "StellarVersionByte.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/StellarVersionByte;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/StellarVersionByte;

.field public static final enum ACCOUNTID:Lwallet/core/jni/StellarVersionByte;

.field public static final enum PREAUTHTX:Lwallet/core/jni/StellarVersionByte;

.field public static final enum SEED:Lwallet/core/jni/StellarVersionByte;

.field public static final enum SHA256HASH:Lwallet/core/jni/StellarVersionByte;


# instance fields
.field private final value:S


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 17
    new-instance v0, Lwallet/core/jni/StellarVersionByte;

    const-string v1, "ACCOUNTID"

    const/4 v2, 0x0

    const/16 v3, 0x30

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/StellarVersionByte;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lwallet/core/jni/StellarVersionByte;->ACCOUNTID:Lwallet/core/jni/StellarVersionByte;

    .line 18
    new-instance v1, Lwallet/core/jni/StellarVersionByte;

    const-string v3, "SEED"

    const/4 v4, 0x1

    const/16 v5, 0xc0

    invoke-direct {v1, v3, v4, v5}, Lwallet/core/jni/StellarVersionByte;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lwallet/core/jni/StellarVersionByte;->SEED:Lwallet/core/jni/StellarVersionByte;

    .line 19
    new-instance v3, Lwallet/core/jni/StellarVersionByte;

    const-string v5, "PREAUTHTX"

    const/4 v6, 0x2

    const/16 v7, 0xc8

    invoke-direct {v3, v5, v6, v7}, Lwallet/core/jni/StellarVersionByte;-><init>(Ljava/lang/String;IS)V

    sput-object v3, Lwallet/core/jni/StellarVersionByte;->PREAUTHTX:Lwallet/core/jni/StellarVersionByte;

    .line 20
    new-instance v5, Lwallet/core/jni/StellarVersionByte;

    const-string v7, "SHA256HASH"

    const/4 v8, 0x3

    const/16 v9, 0x118

    invoke-direct {v5, v7, v8, v9}, Lwallet/core/jni/StellarVersionByte;-><init>(Ljava/lang/String;IS)V

    sput-object v5, Lwallet/core/jni/StellarVersionByte;->SHA256HASH:Lwallet/core/jni/StellarVersionByte;

    const/4 v7, 0x4

    new-array v7, v7, [Lwallet/core/jni/StellarVersionByte;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 16
    sput-object v7, Lwallet/core/jni/StellarVersionByte;->$VALUES:[Lwallet/core/jni/StellarVersionByte;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
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
            "(S)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-short p3, p0, Lwallet/core/jni/StellarVersionByte;->value:S

    return-void
.end method

.method public static createFromValue(S)Lwallet/core/jni/StellarVersionByte;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/16 v0, 0x30

    if-eq p0, v0, :cond_3

    const/16 v0, 0xc0

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x118

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_0
    sget-object p0, Lwallet/core/jni/StellarVersionByte;->SHA256HASH:Lwallet/core/jni/StellarVersionByte;

    return-object p0

    .line 32
    :cond_1
    sget-object p0, Lwallet/core/jni/StellarVersionByte;->PREAUTHTX:Lwallet/core/jni/StellarVersionByte;

    return-object p0

    .line 31
    :cond_2
    sget-object p0, Lwallet/core/jni/StellarVersionByte;->SEED:Lwallet/core/jni/StellarVersionByte;

    return-object p0

    .line 30
    :cond_3
    sget-object p0, Lwallet/core/jni/StellarVersionByte;->ACCOUNTID:Lwallet/core/jni/StellarVersionByte;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/StellarVersionByte;
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
    const-class v0, Lwallet/core/jni/StellarVersionByte;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/StellarVersionByte;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/StellarVersionByte;
    .locals 1

    .line 16
    sget-object v0, Lwallet/core/jni/StellarVersionByte;->$VALUES:[Lwallet/core/jni/StellarVersionByte;

    invoke-virtual {v0}, [Lwallet/core/jni/StellarVersionByte;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/StellarVersionByte;

    return-object v0
.end method


# virtual methods
.method public value()S
    .locals 1

    .line 26
    iget-short v0, p0, Lwallet/core/jni/StellarVersionByte;->value:S

    return v0
.end method
