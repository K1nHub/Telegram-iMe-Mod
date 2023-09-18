.class public final enum Lwallet/core/jni/Purpose;
.super Ljava/lang/Enum;
.source "Purpose.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/Purpose;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/Purpose;

.field public static final enum BIP1852:Lwallet/core/jni/Purpose;

.field public static final enum BIP44:Lwallet/core/jni/Purpose;

.field public static final enum BIP49:Lwallet/core/jni/Purpose;

.field public static final enum BIP84:Lwallet/core/jni/Purpose;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 21
    new-instance v0, Lwallet/core/jni/Purpose;

    const-string v1, "BIP44"

    const/4 v2, 0x0

    const/16 v3, 0x2c

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/Purpose;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/Purpose;->BIP44:Lwallet/core/jni/Purpose;

    .line 22
    new-instance v1, Lwallet/core/jni/Purpose;

    const-string v3, "BIP49"

    const/4 v4, 0x1

    const/16 v5, 0x31

    invoke-direct {v1, v3, v4, v5}, Lwallet/core/jni/Purpose;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/Purpose;->BIP49:Lwallet/core/jni/Purpose;

    .line 23
    new-instance v3, Lwallet/core/jni/Purpose;

    const-string v5, "BIP84"

    const/4 v6, 0x2

    const/16 v7, 0x54

    invoke-direct {v3, v5, v6, v7}, Lwallet/core/jni/Purpose;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/Purpose;->BIP84:Lwallet/core/jni/Purpose;

    .line 24
    new-instance v5, Lwallet/core/jni/Purpose;

    const-string v7, "BIP1852"

    const/4 v8, 0x3

    const/16 v9, 0x73c

    invoke-direct {v5, v7, v8, v9}, Lwallet/core/jni/Purpose;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/Purpose;->BIP1852:Lwallet/core/jni/Purpose;

    const/4 v7, 0x4

    new-array v7, v7, [Lwallet/core/jni/Purpose;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 20
    sput-object v7, Lwallet/core/jni/Purpose;->$VALUES:[Lwallet/core/jni/Purpose;

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

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lwallet/core/jni/Purpose;->value:I

    return-void
.end method

.method public static createFromValue(I)Lwallet/core/jni/Purpose;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_3

    const/16 v0, 0x31

    if-eq p0, v0, :cond_2

    const/16 v0, 0x54

    if-eq p0, v0, :cond_1

    const/16 v0, 0x73c

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    sget-object p0, Lwallet/core/jni/Purpose;->BIP1852:Lwallet/core/jni/Purpose;

    return-object p0

    .line 36
    :cond_1
    sget-object p0, Lwallet/core/jni/Purpose;->BIP84:Lwallet/core/jni/Purpose;

    return-object p0

    .line 35
    :cond_2
    sget-object p0, Lwallet/core/jni/Purpose;->BIP49:Lwallet/core/jni/Purpose;

    return-object p0

    .line 34
    :cond_3
    sget-object p0, Lwallet/core/jni/Purpose;->BIP44:Lwallet/core/jni/Purpose;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/Purpose;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 20
    const-class v0, Lwallet/core/jni/Purpose;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/Purpose;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/Purpose;
    .locals 1

    .line 20
    sget-object v0, Lwallet/core/jni/Purpose;->$VALUES:[Lwallet/core/jni/Purpose;

    invoke-virtual {v0}, [Lwallet/core/jni/Purpose;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/Purpose;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 30
    iget v0, p0, Lwallet/core/jni/Purpose;->value:I

    return v0
.end method
