.class public final enum Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;
.super Ljava/lang/Enum;
.source "Harmony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony$StakingMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StakeMsgCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

.field public static final enum COLLECT_REWARDS:Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

.field public static final enum CREATE_VALIDATOR_MESSAGE:Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

.field public static final enum DELEGATE_MESSAGE:Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

.field public static final enum EDIT_VALIDATOR_MESSAGE:Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

.field public static final enum STAKEMSG_NOT_SET:Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

.field public static final enum UNDELEGATE_MESSAGE:Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 2259
    new-instance v0, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    const-string v1, "CREATE_VALIDATOR_MESSAGE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;->CREATE_VALIDATOR_MESSAGE:Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    .line 2260
    new-instance v1, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    const-string v4, "EDIT_VALIDATOR_MESSAGE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;->EDIT_VALIDATOR_MESSAGE:Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    .line 2261
    new-instance v4, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    const-string v6, "DELEGATE_MESSAGE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;->DELEGATE_MESSAGE:Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    .line 2262
    new-instance v6, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    const-string v8, "UNDELEGATE_MESSAGE"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;->UNDELEGATE_MESSAGE:Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    .line 2263
    new-instance v8, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    const-string v10, "COLLECT_REWARDS"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;->COLLECT_REWARDS:Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    .line 2264
    new-instance v10, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    const-string v12, "STAKEMSG_NOT_SET"

    invoke-direct {v10, v12, v11, v2}, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;->STAKEMSG_NOT_SET:Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    const/4 v12, 0x6

    new-array v12, v12, [Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    .line 2258
    sput-object v12, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;->$VALUES:[Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

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

    .line 2266
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2267
    iput p3, p0, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;
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

    .line 2283
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;->COLLECT_REWARDS:Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    return-object p0

    .line 2282
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;->UNDELEGATE_MESSAGE:Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    return-object p0

    .line 2281
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;->DELEGATE_MESSAGE:Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    return-object p0

    .line 2280
    :cond_3
    sget-object p0, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;->EDIT_VALIDATOR_MESSAGE:Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    return-object p0

    .line 2279
    :cond_4
    sget-object p0, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;->CREATE_VALIDATOR_MESSAGE:Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    return-object p0

    .line 2284
    :cond_5
    sget-object p0, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;->STAKEMSG_NOT_SET:Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    return-object p0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;
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

    .line 2274
    invoke-static {p0}, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;->forNumber(I)Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 2258
    const-class v0, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;
    .locals 1

    .line 2258
    sget-object v0, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;->$VALUES:[Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 2289
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;->value:I

    return v0
.end method
