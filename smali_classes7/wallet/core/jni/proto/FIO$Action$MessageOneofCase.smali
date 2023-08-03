.class public final enum Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;
.super Ljava/lang/Enum;
.source "FIO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

.field public static final enum ADD_PUB_ADDRESS_MESSAGE:Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

.field public static final enum MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

.field public static final enum NEW_FUNDS_REQUEST_MESSAGE:Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

.field public static final enum REGISTER_FIO_ADDRESS_MESSAGE:Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

.field public static final enum RENEW_FIO_ADDRESS_MESSAGE:Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

.field public static final enum TRANSFER_MESSAGE:Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 5128
    new-instance v0, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    const-string v1, "REGISTER_FIO_ADDRESS_MESSAGE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;->REGISTER_FIO_ADDRESS_MESSAGE:Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    .line 5129
    new-instance v1, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    const-string v4, "ADD_PUB_ADDRESS_MESSAGE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;->ADD_PUB_ADDRESS_MESSAGE:Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    .line 5130
    new-instance v4, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    const-string v6, "TRANSFER_MESSAGE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;->TRANSFER_MESSAGE:Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    .line 5131
    new-instance v6, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    const-string v8, "RENEW_FIO_ADDRESS_MESSAGE"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;->RENEW_FIO_ADDRESS_MESSAGE:Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    .line 5132
    new-instance v8, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    const-string v10, "NEW_FUNDS_REQUEST_MESSAGE"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;->NEW_FUNDS_REQUEST_MESSAGE:Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    .line 5133
    new-instance v10, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    const-string v12, "MESSAGEONEOF_NOT_SET"

    invoke-direct {v10, v12, v11, v2}, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;->MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    const/4 v12, 0x6

    new-array v12, v12, [Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    .line 5127
    sput-object v12, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;->$VALUES:[Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

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

    .line 5135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5136
    iput p3, p0, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5152
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;->NEW_FUNDS_REQUEST_MESSAGE:Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    return-object p0

    .line 5151
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;->RENEW_FIO_ADDRESS_MESSAGE:Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    return-object p0

    .line 5150
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;->TRANSFER_MESSAGE:Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    return-object p0

    .line 5149
    :cond_3
    sget-object p0, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;->ADD_PUB_ADDRESS_MESSAGE:Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    return-object p0

    .line 5148
    :cond_4
    sget-object p0, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;->REGISTER_FIO_ADDRESS_MESSAGE:Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    return-object p0

    .line 5153
    :cond_5
    sget-object p0, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;->MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    return-object p0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;
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

    .line 5143
    invoke-static {p0}, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;->forNumber(I)Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 5127
    const-class v0, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;
    .locals 1

    .line 5127
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;->$VALUES:[Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 5158
    iget v0, p0, Lwallet/core/jni/proto/FIO$Action$MessageOneofCase;->value:I

    return v0
.end method
