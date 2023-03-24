.class public final enum Lwallet/core/jni/proto/TheOpenNetwork$SendMode;
.super Ljava/lang/Enum;
.source "TheOpenNetwork.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/TheOpenNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SendMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/TheOpenNetwork$SendMode$SendModeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/TheOpenNetwork$SendMode;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

.field public static final enum ATTACH_ALL_CONTRACT_BALANCE:Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

.field public static final ATTACH_ALL_CONTRACT_BALANCE_VALUE:I = 0x80

.field public static final enum ATTACH_ALL_INBOUND_MESSAGE_VALUE:Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

.field public static final ATTACH_ALL_INBOUND_MESSAGE_VALUE_VALUE:I = 0x40

.field public static final enum DEFAULT:Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

.field public static final DEFAULT_VALUE:I = 0x0

.field public static final enum DESTROY_ON_ZERO_BALANCE:Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

.field public static final DESTROY_ON_ZERO_BALANCE_VALUE:I = 0x20

.field public static final enum IGNORE_ACTION_PHASE_ERRORS:Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

.field public static final IGNORE_ACTION_PHASE_ERRORS_VALUE:I = 0x2

.field public static final enum PAY_FEES_SEPARATELY:Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

.field public static final PAY_FEES_SEPARATELY_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lwallet/core/jni/proto/TheOpenNetwork$SendMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 117
    new-instance v0, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->DEFAULT:Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    .line 121
    new-instance v1, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    const-string v3, "PAY_FEES_SEPARATELY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->PAY_FEES_SEPARATELY:Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    .line 125
    new-instance v3, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    const-string v5, "IGNORE_ACTION_PHASE_ERRORS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->IGNORE_ACTION_PHASE_ERRORS:Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    .line 129
    new-instance v5, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    const-string v7, "DESTROY_ON_ZERO_BALANCE"

    const/4 v8, 0x3

    const/16 v9, 0x20

    invoke-direct {v5, v7, v8, v9}, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->DESTROY_ON_ZERO_BALANCE:Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    .line 133
    new-instance v7, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    const-string v9, "ATTACH_ALL_INBOUND_MESSAGE_VALUE"

    const/4 v10, 0x4

    const/16 v11, 0x40

    invoke-direct {v7, v9, v10, v11}, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->ATTACH_ALL_INBOUND_MESSAGE_VALUE:Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    .line 137
    new-instance v9, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    const-string v11, "ATTACH_ALL_CONTRACT_BALANCE"

    const/4 v12, 0x5

    const/16 v13, 0x80

    invoke-direct {v9, v11, v12, v13}, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->ATTACH_ALL_CONTRACT_BALANCE:Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    .line 138
    new-instance v11, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    const-string v13, "UNRECOGNIZED"

    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-direct {v11, v13, v14, v15}, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->UNRECOGNIZED:Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    const/4 v13, 0x7

    new-array v13, v13, [Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 112
    sput-object v13, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->$VALUES:[Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    .line 203
    new-instance v0, Lwallet/core/jni/proto/TheOpenNetwork$SendMode$1;

    invoke-direct {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SendMode$1;-><init>()V

    sput-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 228
    iput p3, p0, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/TheOpenNetwork$SendMode;
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

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1

    const/16 v0, 0x80

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 193
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->ATTACH_ALL_CONTRACT_BALANCE:Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    return-object p0

    .line 192
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->ATTACH_ALL_INBOUND_MESSAGE_VALUE:Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    return-object p0

    .line 191
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->DESTROY_ON_ZERO_BALANCE:Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    return-object p0

    .line 190
    :cond_3
    sget-object p0, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->IGNORE_ACTION_PHASE_ERRORS:Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    return-object p0

    .line 189
    :cond_4
    sget-object p0, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->PAY_FEES_SEPARATELY:Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    return-object p0

    .line 188
    :cond_5
    sget-object p0, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->DEFAULT:Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lwallet/core/jni/proto/TheOpenNetwork$SendMode;",
            ">;"
        }
    .end annotation

    .line 200
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 213
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SendMode$SendModeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/TheOpenNetwork$SendMode;
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

    .line 183
    invoke-static {p0}, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->forNumber(I)Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/TheOpenNetwork$SendMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 112
    const-class v0, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/TheOpenNetwork$SendMode;
    .locals 1

    .line 112
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->$VALUES:[Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 169
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->UNRECOGNIZED:Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    if-eq p0, v0, :cond_0

    .line 173
    iget v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->value:I

    return v0

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
