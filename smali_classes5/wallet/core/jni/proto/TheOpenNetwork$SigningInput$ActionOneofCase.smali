.class public final enum Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;
.super Ljava/lang/Enum;
.source "TheOpenNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;

.field public static final enum ACTIONONEOF_NOT_SET:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;

.field public static final enum TRANSFER:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1299
    new-instance v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;

    const-string v1, "TRANSFER"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;->TRANSFER:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;

    .line 1300
    new-instance v1, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;

    const-string v4, "ACTIONONEOF_NOT_SET"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;->ACTIONONEOF_NOT_SET:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;

    new-array v3, v3, [Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    .line 1298
    sput-object v3, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;->$VALUES:[Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;

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

    .line 1302
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1303
    iput p3, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;
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

    .line 1315
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;->TRANSFER:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;

    return-object p0

    .line 1316
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;->ACTIONONEOF_NOT_SET:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;

    return-object p0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;
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

    .line 1310
    invoke-static {p0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;->forNumber(I)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1298
    const-class v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;
    .locals 1

    .line 1298
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;->$VALUES:[Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1321
    iget v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;->value:I

    return v0
.end method
