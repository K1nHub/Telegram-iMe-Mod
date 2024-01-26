.class public final enum Lwallet/core/jni/proto/THORChainSwap$ErrorCode;
.super Ljava/lang/Enum;
.source "THORChainSwap.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/THORChainSwap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/THORChainSwap$ErrorCode$ErrorCodeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/THORChainSwap$ErrorCode;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

.field public static final enum Error_Input_proto_deserialization:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

.field public static final Error_Input_proto_deserialization_VALUE:I = 0x2

.field public static final enum Error_Invalid_from_address:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

.field public static final Error_Invalid_from_address_VALUE:I = 0xf

.field public static final enum Error_Invalid_router_address:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

.field public static final Error_Invalid_router_address_VALUE:I = 0x16

.field public static final enum Error_Invalid_to_address:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

.field public static final Error_Invalid_to_address_VALUE:I = 0x10

.field public static final enum Error_Invalid_vault_address:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

.field public static final Error_Invalid_vault_address_VALUE:I = 0x15

.field public static final enum Error_Unsupported_from_chain:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

.field public static final Error_Unsupported_from_chain_VALUE:I = 0xd

.field public static final enum Error_Unsupported_to_chain:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

.field public static final Error_Unsupported_to_chain_VALUE:I = 0xe

.field public static final enum Error_general:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

.field public static final Error_general_VALUE:I = 0x1

.field public static final enum OK:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

.field public static final OK_VALUE:I

.field public static final enum UNRECOGNIZED:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lwallet/core/jni/proto/THORChainSwap$ErrorCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 138
    new-instance v0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->OK:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    .line 142
    new-instance v1, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    const-string v3, "Error_general"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->Error_general:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    .line 146
    new-instance v3, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    const-string v5, "Error_Input_proto_deserialization"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->Error_Input_proto_deserialization:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    .line 150
    new-instance v5, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    const-string v7, "Error_Unsupported_from_chain"

    const/4 v8, 0x3

    const/16 v9, 0xd

    invoke-direct {v5, v7, v8, v9}, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->Error_Unsupported_from_chain:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    .line 154
    new-instance v7, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    const-string v9, "Error_Unsupported_to_chain"

    const/4 v10, 0x4

    const/16 v11, 0xe

    invoke-direct {v7, v9, v10, v11}, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->Error_Unsupported_to_chain:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    .line 158
    new-instance v9, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    const-string v11, "Error_Invalid_from_address"

    const/4 v12, 0x5

    const/16 v13, 0xf

    invoke-direct {v9, v11, v12, v13}, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->Error_Invalid_from_address:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    .line 162
    new-instance v11, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    const-string v13, "Error_Invalid_to_address"

    const/4 v14, 0x6

    const/16 v15, 0x10

    invoke-direct {v11, v13, v14, v15}, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->Error_Invalid_to_address:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    .line 166
    new-instance v13, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    const-string v15, "Error_Invalid_vault_address"

    const/4 v14, 0x7

    const/16 v12, 0x15

    invoke-direct {v13, v15, v14, v12}, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->Error_Invalid_vault_address:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    .line 170
    new-instance v12, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    const-string v15, "Error_Invalid_router_address"

    const/16 v14, 0x8

    const/16 v10, 0x16

    invoke-direct {v12, v15, v14, v10}, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->Error_Invalid_router_address:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    .line 171
    new-instance v10, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    const-string v15, "UNRECOGNIZED"

    const/16 v14, 0x9

    const/4 v8, -0x1

    invoke-direct {v10, v15, v14, v8}, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->UNRECOGNIZED:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    const/16 v8, 0xa

    new-array v8, v8, [Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v12, v8, v0

    aput-object v10, v8, v14

    .line 129
    sput-object v8, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->$VALUES:[Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    .line 255
    new-instance v0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode$1;

    invoke-direct {v0}, Lwallet/core/jni/proto/THORChainSwap$ErrorCode$1;-><init>()V

    sput-object v0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 279
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 280
    iput p3, p0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/THORChainSwap$ErrorCode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 243
    :pswitch_0
    sget-object p0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->Error_Invalid_to_address:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    return-object p0

    .line 242
    :pswitch_1
    sget-object p0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->Error_Invalid_from_address:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    return-object p0

    .line 241
    :pswitch_2
    sget-object p0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->Error_Unsupported_to_chain:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    return-object p0

    .line 240
    :pswitch_3
    sget-object p0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->Error_Unsupported_from_chain:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    return-object p0

    .line 245
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->Error_Invalid_router_address:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    return-object p0

    .line 244
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->Error_Invalid_vault_address:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    return-object p0

    .line 239
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->Error_Input_proto_deserialization:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    return-object p0

    .line 238
    :cond_3
    sget-object p0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->Error_general:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    return-object p0

    .line 237
    :cond_4
    sget-object p0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->OK:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lwallet/core/jni/proto/THORChainSwap$ErrorCode;",
            ">;"
        }
    .end annotation

    .line 252
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 265
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode$ErrorCodeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/THORChainSwap$ErrorCode;
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

    .line 232
    invoke-static {p0}, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->forNumber(I)Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/THORChainSwap$ErrorCode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 129
    const-class v0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/THORChainSwap$ErrorCode;
    .locals 1

    .line 129
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->$VALUES:[Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 218
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->UNRECOGNIZED:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    if-eq p0, v0, :cond_0

    .line 222
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->value:I

    return v0

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
