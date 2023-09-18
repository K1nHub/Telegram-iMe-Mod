.class public final enum Lwallet/core/jni/PrivateKeyType;
.super Ljava/lang/Enum;
.source "PrivateKeyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/PrivateKeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/PrivateKeyType;

.field public static final enum CARDANO:Lwallet/core/jni/PrivateKeyType;

.field public static final enum DEFAULT:Lwallet/core/jni/PrivateKeyType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lwallet/core/jni/PrivateKeyType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lwallet/core/jni/PrivateKeyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/PrivateKeyType;->DEFAULT:Lwallet/core/jni/PrivateKeyType;

    .line 18
    new-instance v1, Lwallet/core/jni/PrivateKeyType;

    const-string v3, "CARDANO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lwallet/core/jni/PrivateKeyType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/PrivateKeyType;->CARDANO:Lwallet/core/jni/PrivateKeyType;

    const/4 v3, 0x2

    new-array v3, v3, [Lwallet/core/jni/PrivateKeyType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 16
    sput-object v3, Lwallet/core/jni/PrivateKeyType;->$VALUES:[Lwallet/core/jni/PrivateKeyType;

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

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lwallet/core/jni/PrivateKeyType;->value:I

    return-void
.end method

.method public static createFromValue(I)Lwallet/core/jni/PrivateKeyType;
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

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 29
    :cond_0
    sget-object p0, Lwallet/core/jni/PrivateKeyType;->CARDANO:Lwallet/core/jni/PrivateKeyType;

    return-object p0

    .line 28
    :cond_1
    sget-object p0, Lwallet/core/jni/PrivateKeyType;->DEFAULT:Lwallet/core/jni/PrivateKeyType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/PrivateKeyType;
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
    const-class v0, Lwallet/core/jni/PrivateKeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/PrivateKeyType;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/PrivateKeyType;
    .locals 1

    .line 16
    sget-object v0, Lwallet/core/jni/PrivateKeyType;->$VALUES:[Lwallet/core/jni/PrivateKeyType;

    invoke-virtual {v0}, [Lwallet/core/jni/PrivateKeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/PrivateKeyType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 24
    iget v0, p0, Lwallet/core/jni/PrivateKeyType;->value:I

    return v0
.end method
