.class public final enum Lwallet/core/jni/BitcoinSigHashType;
.super Ljava/lang/Enum;
.source "BitcoinSigHashType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/BitcoinSigHashType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/BitcoinSigHashType;

.field public static final enum ALL:Lwallet/core/jni/BitcoinSigHashType;

.field public static final enum FORK:Lwallet/core/jni/BitcoinSigHashType;

.field public static final enum FORKBTG:Lwallet/core/jni/BitcoinSigHashType;

.field public static final enum NONE:Lwallet/core/jni/BitcoinSigHashType;

.field public static final enum SINGLE:Lwallet/core/jni/BitcoinSigHashType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 17
    new-instance v0, Lwallet/core/jni/BitcoinSigHashType;

    const-string v1, "ALL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/BitcoinSigHashType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/BitcoinSigHashType;->ALL:Lwallet/core/jni/BitcoinSigHashType;

    .line 18
    new-instance v1, Lwallet/core/jni/BitcoinSigHashType;

    const-string v4, "NONE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lwallet/core/jni/BitcoinSigHashType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/BitcoinSigHashType;->NONE:Lwallet/core/jni/BitcoinSigHashType;

    .line 19
    new-instance v4, Lwallet/core/jni/BitcoinSigHashType;

    const-string v6, "SINGLE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lwallet/core/jni/BitcoinSigHashType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/BitcoinSigHashType;->SINGLE:Lwallet/core/jni/BitcoinSigHashType;

    .line 20
    new-instance v6, Lwallet/core/jni/BitcoinSigHashType;

    const-string v8, "FORK"

    const/16 v9, 0x40

    invoke-direct {v6, v8, v7, v9}, Lwallet/core/jni/BitcoinSigHashType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/BitcoinSigHashType;->FORK:Lwallet/core/jni/BitcoinSigHashType;

    .line 21
    new-instance v8, Lwallet/core/jni/BitcoinSigHashType;

    const-string v9, "FORKBTG"

    const/4 v10, 0x4

    const/16 v11, 0x4f40

    invoke-direct {v8, v9, v10, v11}, Lwallet/core/jni/BitcoinSigHashType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/BitcoinSigHashType;->FORKBTG:Lwallet/core/jni/BitcoinSigHashType;

    const/4 v9, 0x5

    new-array v9, v9, [Lwallet/core/jni/BitcoinSigHashType;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v7

    aput-object v8, v9, v10

    .line 16
    sput-object v9, Lwallet/core/jni/BitcoinSigHashType;->$VALUES:[Lwallet/core/jni/BitcoinSigHashType;

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

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lwallet/core/jni/BitcoinSigHashType;->value:I

    return-void
.end method

.method public static createFromValue(I)Lwallet/core/jni/BitcoinSigHashType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4f40

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_0
    sget-object p0, Lwallet/core/jni/BitcoinSigHashType;->FORKBTG:Lwallet/core/jni/BitcoinSigHashType;

    return-object p0

    .line 34
    :cond_1
    sget-object p0, Lwallet/core/jni/BitcoinSigHashType;->FORK:Lwallet/core/jni/BitcoinSigHashType;

    return-object p0

    .line 33
    :cond_2
    sget-object p0, Lwallet/core/jni/BitcoinSigHashType;->SINGLE:Lwallet/core/jni/BitcoinSigHashType;

    return-object p0

    .line 32
    :cond_3
    sget-object p0, Lwallet/core/jni/BitcoinSigHashType;->NONE:Lwallet/core/jni/BitcoinSigHashType;

    return-object p0

    .line 31
    :cond_4
    sget-object p0, Lwallet/core/jni/BitcoinSigHashType;->ALL:Lwallet/core/jni/BitcoinSigHashType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/BitcoinSigHashType;
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
    const-class v0, Lwallet/core/jni/BitcoinSigHashType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/BitcoinSigHashType;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/BitcoinSigHashType;
    .locals 1

    .line 16
    sget-object v0, Lwallet/core/jni/BitcoinSigHashType;->$VALUES:[Lwallet/core/jni/BitcoinSigHashType;

    invoke-virtual {v0}, [Lwallet/core/jni/BitcoinSigHashType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/BitcoinSigHashType;

    return-object v0
.end method


# virtual methods
.method public native isNone()Z
.end method

.method public native isSingle()Z
.end method

.method public value()I
    .locals 1

    .line 27
    iget v0, p0, Lwallet/core/jni/BitcoinSigHashType;->value:I

    return v0
.end method
