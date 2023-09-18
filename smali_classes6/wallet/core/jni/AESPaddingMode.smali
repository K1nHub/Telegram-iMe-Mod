.class public final enum Lwallet/core/jni/AESPaddingMode;
.super Ljava/lang/Enum;
.source "AESPaddingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/AESPaddingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/AESPaddingMode;

.field public static final enum PKCS7:Lwallet/core/jni/AESPaddingMode;

.field public static final enum ZERO:Lwallet/core/jni/AESPaddingMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lwallet/core/jni/AESPaddingMode;

    const-string v1, "ZERO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lwallet/core/jni/AESPaddingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/AESPaddingMode;->ZERO:Lwallet/core/jni/AESPaddingMode;

    .line 18
    new-instance v1, Lwallet/core/jni/AESPaddingMode;

    const-string v3, "PKCS7"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lwallet/core/jni/AESPaddingMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/AESPaddingMode;->PKCS7:Lwallet/core/jni/AESPaddingMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lwallet/core/jni/AESPaddingMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 16
    sput-object v3, Lwallet/core/jni/AESPaddingMode;->$VALUES:[Lwallet/core/jni/AESPaddingMode;

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
    iput p3, p0, Lwallet/core/jni/AESPaddingMode;->value:I

    return-void
.end method

.method public static createFromValue(I)Lwallet/core/jni/AESPaddingMode;
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
    sget-object p0, Lwallet/core/jni/AESPaddingMode;->PKCS7:Lwallet/core/jni/AESPaddingMode;

    return-object p0

    .line 28
    :cond_1
    sget-object p0, Lwallet/core/jni/AESPaddingMode;->ZERO:Lwallet/core/jni/AESPaddingMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/AESPaddingMode;
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
    const-class v0, Lwallet/core/jni/AESPaddingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/AESPaddingMode;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/AESPaddingMode;
    .locals 1

    .line 16
    sget-object v0, Lwallet/core/jni/AESPaddingMode;->$VALUES:[Lwallet/core/jni/AESPaddingMode;

    invoke-virtual {v0}, [Lwallet/core/jni/AESPaddingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/AESPaddingMode;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 24
    iget v0, p0, Lwallet/core/jni/AESPaddingMode;->value:I

    return v0
.end method
