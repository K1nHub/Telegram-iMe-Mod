.class public final enum Lwallet/core/jni/StoredKeyEncryptionLevel;
.super Ljava/lang/Enum;
.source "StoredKeyEncryptionLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/StoredKeyEncryptionLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/StoredKeyEncryptionLevel;

.field public static final enum DEFAULT:Lwallet/core/jni/StoredKeyEncryptionLevel;

.field public static final enum MINIMAL:Lwallet/core/jni/StoredKeyEncryptionLevel;

.field public static final enum STANDARD:Lwallet/core/jni/StoredKeyEncryptionLevel;

.field public static final enum WEAK:Lwallet/core/jni/StoredKeyEncryptionLevel;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 17
    new-instance v0, Lwallet/core/jni/StoredKeyEncryptionLevel;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lwallet/core/jni/StoredKeyEncryptionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/StoredKeyEncryptionLevel;->DEFAULT:Lwallet/core/jni/StoredKeyEncryptionLevel;

    .line 18
    new-instance v1, Lwallet/core/jni/StoredKeyEncryptionLevel;

    const-string v3, "MINIMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lwallet/core/jni/StoredKeyEncryptionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/StoredKeyEncryptionLevel;->MINIMAL:Lwallet/core/jni/StoredKeyEncryptionLevel;

    .line 19
    new-instance v3, Lwallet/core/jni/StoredKeyEncryptionLevel;

    const-string v5, "WEAK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lwallet/core/jni/StoredKeyEncryptionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/StoredKeyEncryptionLevel;->WEAK:Lwallet/core/jni/StoredKeyEncryptionLevel;

    .line 20
    new-instance v5, Lwallet/core/jni/StoredKeyEncryptionLevel;

    const-string v7, "STANDARD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lwallet/core/jni/StoredKeyEncryptionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/StoredKeyEncryptionLevel;->STANDARD:Lwallet/core/jni/StoredKeyEncryptionLevel;

    const/4 v7, 0x4

    new-array v7, v7, [Lwallet/core/jni/StoredKeyEncryptionLevel;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 16
    sput-object v7, Lwallet/core/jni/StoredKeyEncryptionLevel;->$VALUES:[Lwallet/core/jni/StoredKeyEncryptionLevel;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lwallet/core/jni/StoredKeyEncryptionLevel;->value:I

    return-void
.end method

.method public static createFromValue(I)Lwallet/core/jni/StoredKeyEncryptionLevel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_0
    sget-object p0, Lwallet/core/jni/StoredKeyEncryptionLevel;->STANDARD:Lwallet/core/jni/StoredKeyEncryptionLevel;

    return-object p0

    .line 32
    :cond_1
    sget-object p0, Lwallet/core/jni/StoredKeyEncryptionLevel;->WEAK:Lwallet/core/jni/StoredKeyEncryptionLevel;

    return-object p0

    .line 31
    :cond_2
    sget-object p0, Lwallet/core/jni/StoredKeyEncryptionLevel;->MINIMAL:Lwallet/core/jni/StoredKeyEncryptionLevel;

    return-object p0

    .line 30
    :cond_3
    sget-object p0, Lwallet/core/jni/StoredKeyEncryptionLevel;->DEFAULT:Lwallet/core/jni/StoredKeyEncryptionLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/StoredKeyEncryptionLevel;
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
    const-class v0, Lwallet/core/jni/StoredKeyEncryptionLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/StoredKeyEncryptionLevel;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/StoredKeyEncryptionLevel;
    .locals 1

    .line 16
    sget-object v0, Lwallet/core/jni/StoredKeyEncryptionLevel;->$VALUES:[Lwallet/core/jni/StoredKeyEncryptionLevel;

    invoke-virtual {v0}, [Lwallet/core/jni/StoredKeyEncryptionLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/StoredKeyEncryptionLevel;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 26
    iget v0, p0, Lwallet/core/jni/StoredKeyEncryptionLevel;->value:I

    return v0
.end method
