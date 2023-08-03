.class public final enum Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;
.super Ljava/lang/Enum;
.source "Polkadot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$Balance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;

.field public static final enum MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;

.field public static final enum TRANSFER:Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 956
    new-instance v0, Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;

    const-string v1, "TRANSFER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;->TRANSFER:Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;

    .line 957
    new-instance v1, Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;

    const-string v4, "MESSAGEONEOF_NOT_SET"

    invoke-direct {v1, v4, v3, v2}, Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;->MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;

    const/4 v4, 0x2

    new-array v4, v4, [Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 955
    sput-object v4, Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;->$VALUES:[Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;

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

    .line 959
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 960
    iput p3, p0, Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;
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

    .line 972
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;->TRANSFER:Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;

    return-object p0

    .line 973
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;->MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;

    return-object p0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;
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

    .line 967
    invoke-static {p0}, Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;->forNumber(I)Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 955
    const-class v0, Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;
    .locals 1

    .line 955
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;->$VALUES:[Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 978
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;->value:I

    return v0
.end method
