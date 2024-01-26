.class public final enum Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;
.super Ljava/lang/Enum;
.source "Harmony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;

.field public static final enum MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;

.field public static final enum STAKING_MESSAGE:Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;

.field public static final enum TRANSACTION_MESSAGE:Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 78
    new-instance v0, Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;

    const-string v1, "TRANSACTION_MESSAGE"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;->TRANSACTION_MESSAGE:Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;

    .line 79
    new-instance v1, Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;

    const-string v4, "STAKING_MESSAGE"

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-direct {v1, v4, v5, v6}, Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;->STAKING_MESSAGE:Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;

    .line 80
    new-instance v4, Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;

    const-string v6, "MESSAGEONEOF_NOT_SET"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v2}, Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;->MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;

    new-array v3, v3, [Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    .line 77
    sput-object v3, Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;->$VALUES:[Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;

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

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    iput p3, p0, Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;->STAKING_MESSAGE:Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;

    return-object p0

    .line 95
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;->TRANSACTION_MESSAGE:Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;

    return-object p0

    .line 97
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;->MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;

    return-object p0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    invoke-static {p0}, Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;->forNumber(I)Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 77
    const-class v0, Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;
    .locals 1

    .line 77
    sget-object v0, Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;->$VALUES:[Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 102
    iget v0, p0, Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;->value:I

    return v0
.end method
