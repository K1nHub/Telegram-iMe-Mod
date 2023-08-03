.class public final Lwallet/core/jni/proto/Cosmos$Message;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$Builder;,
        Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;,
        Lwallet/core/jni/proto/Cosmos$Message$MsgVote;,
        Lwallet/core/jni/proto/Cosmos$Message$MsgVoteOrBuilder;,
        Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;,
        Lwallet/core/jni/proto/Cosmos$Message$AuthRevokeOrBuilder;,
        Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;,
        Lwallet/core/jni/proto/Cosmos$Message$AuthGrantOrBuilder;,
        Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;,
        Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorizationOrBuilder;,
        Lwallet/core/jni/proto/Cosmos$Message$SignDirect;,
        Lwallet/core/jni/proto/Cosmos$Message$SignDirectOrBuilder;,
        Lwallet/core/jni/proto/Cosmos$Message$RawJSON;,
        Lwallet/core/jni/proto/Cosmos$Message$RawJSONOrBuilder;,
        Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;,
        Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGenericOrBuilder;,
        Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;,
        Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSendOrBuilder;,
        Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;,
        Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransferOrBuilder;,
        Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;,
        Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGenericOrBuilder;,
        Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;,
        Lwallet/core/jni/proto/Cosmos$Message$THORChainSendOrBuilder;,
        Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;,
        Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSendOrBuilder;,
        Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;,
        Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransferOrBuilder;,
        Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;,
        Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationRewardOrBuilder;,
        Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;,
        Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegateOrBuilder;,
        Lwallet/core/jni/proto/Cosmos$Message$Undelegate;,
        Lwallet/core/jni/proto/Cosmos$Message$UndelegateOrBuilder;,
        Lwallet/core/jni/proto/Cosmos$Message$Delegate;,
        Lwallet/core/jni/proto/Cosmos$Message$DelegateOrBuilder;,
        Lwallet/core/jni/proto/Cosmos$Message$Transfer;,
        Lwallet/core/jni/proto/Cosmos$Message$TransferOrBuilder;,
        Lwallet/core/jni/proto/Cosmos$Message$Send;,
        Lwallet/core/jni/proto/Cosmos$Message$SendOrBuilder;,
        Lwallet/core/jni/proto/Cosmos$Message$VoteOption;,
        Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Message;",
        "Lwallet/core/jni/proto/Cosmos$Message$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$MessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final AUTH_GRANT_FIELD_NUMBER:I = 0x10

.field public static final AUTH_REVOKE_FIELD_NUMBER:I = 0x11

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

.field public static final MSG_VOTE_FIELD_NUMBER:I = 0x12

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message;",
            ">;"
        }
    .end annotation
.end field

.field public static final RAW_JSON_MESSAGE_FIELD_NUMBER:I = 0x7

.field public static final RESTAKE_MESSAGE_FIELD_NUMBER:I = 0x5

.field public static final SEND_COINS_MESSAGE_FIELD_NUMBER:I = 0x1

.field public static final SIGN_DIRECT_MESSAGE_FIELD_NUMBER:I = 0xf

.field public static final STAKE_MESSAGE_FIELD_NUMBER:I = 0x3

.field public static final THORCHAIN_SEND_MESSAGE_FIELD_NUMBER:I = 0xa

.field public static final TRANSFER_TOKENS_MESSAGE_FIELD_NUMBER:I = 0x2

.field public static final UNSTAKE_MESSAGE_FIELD_NUMBER:I = 0x4

.field public static final WASM_EXECUTE_CONTRACT_GENERIC_FIELD_NUMBER:I = 0xe

.field public static final WASM_EXECUTE_CONTRACT_SEND_MESSAGE_FIELD_NUMBER:I = 0xd

.field public static final WASM_EXECUTE_CONTRACT_TRANSFER_MESSAGE_FIELD_NUMBER:I = 0xc

.field public static final WASM_TERRA_EXECUTE_CONTRACT_GENERIC_FIELD_NUMBER:I = 0xb

.field public static final WASM_TERRA_EXECUTE_CONTRACT_SEND_MESSAGE_FIELD_NUMBER:I = 0x9

.field public static final WASM_TERRA_EXECUTE_CONTRACT_TRANSFER_MESSAGE_FIELD_NUMBER:I = 0x8

.field public static final WITHDRAW_STAKE_REWARD_MESSAGE_FIELD_NUMBER:I = 0x6


# instance fields
.field private messageOneofCase_:I

.field private messageOneof_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18604
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message;-><init>()V

    .line 18607
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

    .line 18608
    const-class v1, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1937
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 16577
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method static synthetic access$30400()Lwallet/core/jni/proto/Cosmos$Message;
    .locals 1

    .line 1932
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

    return-object v0
.end method

.method static synthetic access$30500(Lwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 1932
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message;->clearMessageOneof()V

    return-void
.end method

.method static synthetic access$30600(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$Send;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->setSendCoinsMessage(Lwallet/core/jni/proto/Cosmos$Message$Send;)V

    return-void
.end method

.method static synthetic access$30700(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$Send;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->mergeSendCoinsMessage(Lwallet/core/jni/proto/Cosmos$Message$Send;)V

    return-void
.end method

.method static synthetic access$30800(Lwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 1932
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message;->clearSendCoinsMessage()V

    return-void
.end method

.method static synthetic access$30900(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->setTransferTokensMessage(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V

    return-void
.end method

.method static synthetic access$31000(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->mergeTransferTokensMessage(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V

    return-void
.end method

.method static synthetic access$31100(Lwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 1932
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message;->clearTransferTokensMessage()V

    return-void
.end method

.method static synthetic access$31200(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$Delegate;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->setStakeMessage(Lwallet/core/jni/proto/Cosmos$Message$Delegate;)V

    return-void
.end method

.method static synthetic access$31300(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$Delegate;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->mergeStakeMessage(Lwallet/core/jni/proto/Cosmos$Message$Delegate;)V

    return-void
.end method

.method static synthetic access$31400(Lwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 1932
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message;->clearStakeMessage()V

    return-void
.end method

.method static synthetic access$31500(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$Undelegate;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->setUnstakeMessage(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;)V

    return-void
.end method

.method static synthetic access$31600(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$Undelegate;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->mergeUnstakeMessage(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;)V

    return-void
.end method

.method static synthetic access$31700(Lwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 1932
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message;->clearUnstakeMessage()V

    return-void
.end method

.method static synthetic access$31800(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->setRestakeMessage(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)V

    return-void
.end method

.method static synthetic access$31900(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->mergeRestakeMessage(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)V

    return-void
.end method

.method static synthetic access$32000(Lwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 1932
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message;->clearRestakeMessage()V

    return-void
.end method

.method static synthetic access$32100(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->setWithdrawStakeRewardMessage(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;)V

    return-void
.end method

.method static synthetic access$32200(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->mergeWithdrawStakeRewardMessage(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;)V

    return-void
.end method

.method static synthetic access$32300(Lwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 1932
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message;->clearWithdrawStakeRewardMessage()V

    return-void
.end method

.method static synthetic access$32400(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$RawJSON;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->setRawJsonMessage(Lwallet/core/jni/proto/Cosmos$Message$RawJSON;)V

    return-void
.end method

.method static synthetic access$32500(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$RawJSON;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->mergeRawJsonMessage(Lwallet/core/jni/proto/Cosmos$Message$RawJSON;)V

    return-void
.end method

.method static synthetic access$32600(Lwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 1932
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message;->clearRawJsonMessage()V

    return-void
.end method

.method static synthetic access$32700(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->setWasmTerraExecuteContractTransferMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;)V

    return-void
.end method

.method static synthetic access$32800(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->mergeWasmTerraExecuteContractTransferMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;)V

    return-void
.end method

.method static synthetic access$32900(Lwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 1932
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message;->clearWasmTerraExecuteContractTransferMessage()V

    return-void
.end method

.method static synthetic access$33000(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->setWasmTerraExecuteContractSendMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)V

    return-void
.end method

.method static synthetic access$33100(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->mergeWasmTerraExecuteContractSendMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)V

    return-void
.end method

.method static synthetic access$33200(Lwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 1932
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message;->clearWasmTerraExecuteContractSendMessage()V

    return-void
.end method

.method static synthetic access$33300(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->setThorchainSendMessage(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;)V

    return-void
.end method

.method static synthetic access$33400(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->mergeThorchainSendMessage(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;)V

    return-void
.end method

.method static synthetic access$33500(Lwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 1932
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message;->clearThorchainSendMessage()V

    return-void
.end method

.method static synthetic access$33600(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->setWasmTerraExecuteContractGeneric(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;)V

    return-void
.end method

.method static synthetic access$33700(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->mergeWasmTerraExecuteContractGeneric(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;)V

    return-void
.end method

.method static synthetic access$33800(Lwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 1932
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message;->clearWasmTerraExecuteContractGeneric()V

    return-void
.end method

.method static synthetic access$33900(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->setWasmExecuteContractTransferMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;)V

    return-void
.end method

.method static synthetic access$34000(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->mergeWasmExecuteContractTransferMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;)V

    return-void
.end method

.method static synthetic access$34100(Lwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 1932
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message;->clearWasmExecuteContractTransferMessage()V

    return-void
.end method

.method static synthetic access$34200(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->setWasmExecuteContractSendMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)V

    return-void
.end method

.method static synthetic access$34300(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->mergeWasmExecuteContractSendMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)V

    return-void
.end method

.method static synthetic access$34400(Lwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 1932
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message;->clearWasmExecuteContractSendMessage()V

    return-void
.end method

.method static synthetic access$34500(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->setWasmExecuteContractGeneric(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;)V

    return-void
.end method

.method static synthetic access$34600(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->mergeWasmExecuteContractGeneric(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;)V

    return-void
.end method

.method static synthetic access$34700(Lwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 1932
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message;->clearWasmExecuteContractGeneric()V

    return-void
.end method

.method static synthetic access$34800(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$SignDirect;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->setSignDirectMessage(Lwallet/core/jni/proto/Cosmos$Message$SignDirect;)V

    return-void
.end method

.method static synthetic access$34900(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$SignDirect;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->mergeSignDirectMessage(Lwallet/core/jni/proto/Cosmos$Message$SignDirect;)V

    return-void
.end method

.method static synthetic access$35000(Lwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 1932
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message;->clearSignDirectMessage()V

    return-void
.end method

.method static synthetic access$35100(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->setAuthGrant(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)V

    return-void
.end method

.method static synthetic access$35200(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->mergeAuthGrant(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)V

    return-void
.end method

.method static synthetic access$35300(Lwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 1932
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message;->clearAuthGrant()V

    return-void
.end method

.method static synthetic access$35400(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->setAuthRevoke(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;)V

    return-void
.end method

.method static synthetic access$35500(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->mergeAuthRevoke(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;)V

    return-void
.end method

.method static synthetic access$35600(Lwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 1932
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message;->clearAuthRevoke()V

    return-void
.end method

.method static synthetic access$35700(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$MsgVote;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->setMsgVote(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;)V

    return-void
.end method

.method static synthetic access$35800(Lwallet/core/jni/proto/Cosmos$Message;Lwallet/core/jni/proto/Cosmos$Message$MsgVote;)V
    .locals 0

    .line 1932
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message;->mergeMsgVote(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;)V

    return-void
.end method

.method static synthetic access$35900(Lwallet/core/jni/proto/Cosmos$Message;)V
    .locals 0

    .line 1932
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message;->clearMsgVote()V

    return-void
.end method

.method private clearAuthGrant()V
    .locals 2

    .line 17446
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17447
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 17448
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearAuthRevoke()V
    .locals 2

    .line 17496
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17497
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 17498
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMessageOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 16648
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 16649
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearMsgVote()V
    .locals 2

    .line 17546
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17547
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 17548
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearRawJsonMessage()V
    .locals 2

    .line 16996
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 16997
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 16998
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearRestakeMessage()V
    .locals 2

    .line 16896
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 16897
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 16898
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearSendCoinsMessage()V
    .locals 2

    .line 16696
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 16697
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 16698
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearSignDirectMessage()V
    .locals 2

    .line 17396
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17397
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 17398
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearStakeMessage()V
    .locals 2

    .line 16796
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 16797
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 16798
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearThorchainSendMessage()V
    .locals 2

    .line 17146
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17147
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 17148
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTransferTokensMessage()V
    .locals 2

    .line 16746
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 16747
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 16748
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearUnstakeMessage()V
    .locals 2

    .line 16846
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 16847
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 16848
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearWasmExecuteContractGeneric()V
    .locals 2

    .line 17346
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17347
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 17348
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearWasmExecuteContractSendMessage()V
    .locals 2

    .line 17296
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17297
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 17298
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearWasmExecuteContractTransferMessage()V
    .locals 2

    .line 17246
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17247
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 17248
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearWasmTerraExecuteContractGeneric()V
    .locals 2

    .line 17196
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17197
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 17198
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearWasmTerraExecuteContractSendMessage()V
    .locals 2

    .line 17096
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17097
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 17098
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearWasmTerraExecuteContractTransferMessage()V
    .locals 2

    .line 17046
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17047
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 17048
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearWithdrawStakeRewardMessage()V
    .locals 2

    .line 16946
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 16947
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 16948
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message;
    .locals 1

    .line 18613
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

    return-object v0
.end method

.method private mergeAuthGrant(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17432
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17433
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17434
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17435
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->newBuilder(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;

    move-result-object v0

    .line 17436
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17438
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17440
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private mergeAuthRevoke(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17482
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17483
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17484
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17485
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->newBuilder(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;)Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;

    move-result-object v0

    .line 17486
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17488
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17490
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private mergeMsgVote(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17532
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17533
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17534
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17535
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->newBuilder(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;)Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;

    move-result-object v0

    .line 17536
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17538
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17540
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private mergeRawJsonMessage(Lwallet/core/jni/proto/Cosmos$Message$RawJSON;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16982
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16983
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 16984
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 16985
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->newBuilder(Lwallet/core/jni/proto/Cosmos$Message$RawJSON;)Lwallet/core/jni/proto/Cosmos$Message$RawJSON$Builder;

    move-result-object v0

    .line 16986
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$RawJSON$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 16988
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 16990
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private mergeRestakeMessage(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16882
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16883
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 16884
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 16885
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->newBuilder(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;

    move-result-object v0

    .line 16886
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 16888
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 16890
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private mergeSendCoinsMessage(Lwallet/core/jni/proto/Cosmos$Message$Send;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16682
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16683
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 16684
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Send;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Send;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 16685
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Send;->newBuilder(Lwallet/core/jni/proto/Cosmos$Message$Send;)Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;

    move-result-object v0

    .line 16686
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$Send$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 16688
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 16690
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private mergeSignDirectMessage(Lwallet/core/jni/proto/Cosmos$Message$SignDirect;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17382
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17383
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17384
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$SignDirect;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$SignDirect;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17385
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$SignDirect;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$SignDirect;->newBuilder(Lwallet/core/jni/proto/Cosmos$Message$SignDirect;)Lwallet/core/jni/proto/Cosmos$Message$SignDirect$Builder;

    move-result-object v0

    .line 17386
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$SignDirect$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17388
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17390
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private mergeStakeMessage(Lwallet/core/jni/proto/Cosmos$Message$Delegate;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16782
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16783
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 16784
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 16785
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->newBuilder(Lwallet/core/jni/proto/Cosmos$Message$Delegate;)Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;

    move-result-object v0

    .line 16786
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 16788
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 16790
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private mergeThorchainSendMessage(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17133
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17134
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17135
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->newBuilder(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;

    move-result-object v0

    .line 17136
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17138
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17140
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private mergeTransferTokensMessage(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16732
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16733
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 16734
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 16735
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->newBuilder(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;

    move-result-object v0

    .line 16736
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 16738
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 16740
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private mergeUnstakeMessage(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16832
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16833
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 16834
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 16835
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->newBuilder(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;

    move-result-object v0

    .line 16836
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 16838
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 16840
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private mergeWasmExecuteContractGeneric(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17333
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17334
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17335
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->newBuilder(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;

    move-result-object v0

    .line 17336
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17338
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17340
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private mergeWasmExecuteContractSendMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17282
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17283
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17284
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17285
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->newBuilder(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;

    move-result-object v0

    .line 17286
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17288
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17290
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private mergeWasmExecuteContractTransferMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17233
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17234
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17235
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->newBuilder(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;

    move-result-object v0

    .line 17236
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17238
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17240
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private mergeWasmTerraExecuteContractGeneric(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17183
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17184
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17185
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->newBuilder(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;

    move-result-object v0

    .line 17186
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17188
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17190
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private mergeWasmTerraExecuteContractSendMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17082
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17083
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17084
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17085
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->newBuilder(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;

    move-result-object v0

    .line 17086
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17088
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17090
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private mergeWasmTerraExecuteContractTransferMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17032
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17033
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17034
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17035
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->newBuilder(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;

    move-result-object v0

    .line 17036
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17038
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 17040
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private mergeWithdrawStakeRewardMessage(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16932
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16933
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 16934
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 16935
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->newBuilder(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;)Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;

    move-result-object v0

    .line 16936
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 16938
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    .line 16940
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1

    .line 17627
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Message;)Lwallet/core/jni/proto/Cosmos$Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 17630
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17604
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17610
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17568
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17575
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17615
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17622
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17592
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17599
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17555
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17562
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17580
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17587
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message;",
            ">;"
        }
    .end annotation

    .line 18619
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAuthGrant(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17424
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17425
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    const/16 p1, 0x10

    .line 17426
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private setAuthRevoke(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17474
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17475
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    const/16 p1, 0x11

    .line 17476
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private setMsgVote(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17524
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17525
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    const/16 p1, 0x12

    .line 17526
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private setRawJsonMessage(Lwallet/core/jni/proto/Cosmos$Message$RawJSON;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16974
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16975
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 16976
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private setRestakeMessage(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16874
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16875
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 16876
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private setSendCoinsMessage(Lwallet/core/jni/proto/Cosmos$Message$Send;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16674
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16675
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 16676
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private setSignDirectMessage(Lwallet/core/jni/proto/Cosmos$Message$SignDirect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17374
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17375
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    const/16 p1, 0xf

    .line 17376
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private setStakeMessage(Lwallet/core/jni/proto/Cosmos$Message$Delegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16774
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16775
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 16776
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private setThorchainSendMessage(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17125
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    const/16 p1, 0xa

    .line 17126
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private setTransferTokensMessage(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16724
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16725
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 16726
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private setUnstakeMessage(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16824
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16825
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 16826
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private setWasmExecuteContractGeneric(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17324
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17325
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    const/16 p1, 0xe

    .line 17326
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private setWasmExecuteContractSendMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17274
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17275
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    const/16 p1, 0xd

    .line 17276
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private setWasmExecuteContractTransferMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17224
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17225
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    const/16 p1, 0xc

    .line 17226
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private setWasmTerraExecuteContractGeneric(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17175
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    const/16 p1, 0xb

    .line 17176
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private setWasmTerraExecuteContractSendMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17074
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17075
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    const/16 p1, 0x9

    .line 17076
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private setWasmTerraExecuteContractTransferMessage(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17024
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17025
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 17026
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method

.method private setWithdrawStakeRewardMessage(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16924
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16925
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 16926
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 18534
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 18597
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 18591
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 18576
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 18578
    const-class p2, Lwallet/core/jni/proto/Cosmos$Message;

    monitor-enter p2

    .line 18579
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 18581
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 18584
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Message;->PARSER:Lcom/google/protobuf/Parser;

    .line 18586
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 18573
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

    return-object p1

    :pswitch_4
    const/16 p1, 0x14

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "messageOneof_"

    aput-object v0, p1, p3

    const-string p3, "messageOneofCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 18542
    const-class p3, Lwallet/core/jni/proto/Cosmos$Message$Send;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-class p3, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-class p3, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-class p3, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-class p3, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-class p3, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-class p3, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-class p3, Lwallet/core/jni/proto/Cosmos$Message$SignDirect;

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-class p3, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-class p3, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-class p3, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0012\u0001\u0000\u0001\u0012\u0012\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\u0008<\u0000\t<\u0000\n<\u0000\u000b<\u0000\u000c<\u0000\r<\u0000\u000e<\u0000\u000f<\u0000\u0010<\u0000\u0011<\u0000\u0012<\u0000"

    .line 18569
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18539
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$Message$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 18536
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Message;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAuthGrant()Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;
    .locals 2

    .line 17415
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 17416
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    return-object v0

    .line 17418
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    move-result-object v0

    return-object v0
.end method

.method public getAuthRevoke()Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;
    .locals 2

    .line 17465
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 17466
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    return-object v0

    .line 17468
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    move-result-object v0

    return-object v0
.end method

.method public getMessageOneofCase()Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;
    .locals 1

    .line 16643
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->forNumber(I)Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getMsgVote()Lwallet/core/jni/proto/Cosmos$Message$MsgVote;
    .locals 2

    .line 17515
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 17516
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    return-object v0

    .line 17518
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    move-result-object v0

    return-object v0
.end method

.method public getRawJsonMessage()Lwallet/core/jni/proto/Cosmos$Message$RawJSON;
    .locals 2

    .line 16965
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 16966
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    return-object v0

    .line 16968
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    move-result-object v0

    return-object v0
.end method

.method public getRestakeMessage()Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;
    .locals 2

    .line 16865
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 16866
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    return-object v0

    .line 16868
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    move-result-object v0

    return-object v0
.end method

.method public getSendCoinsMessage()Lwallet/core/jni/proto/Cosmos$Message$Send;
    .locals 2

    .line 16665
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 16666
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Send;

    return-object v0

    .line 16668
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Send;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Send;

    move-result-object v0

    return-object v0
.end method

.method public getSignDirectMessage()Lwallet/core/jni/proto/Cosmos$Message$SignDirect;
    .locals 2

    .line 17365
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 17366
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$SignDirect;

    return-object v0

    .line 17368
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$SignDirect;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$SignDirect;

    move-result-object v0

    return-object v0
.end method

.method public getStakeMessage()Lwallet/core/jni/proto/Cosmos$Message$Delegate;
    .locals 2

    .line 16765
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 16766
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    return-object v0

    .line 16768
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public getThorchainSendMessage()Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;
    .locals 2

    .line 17115
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 17116
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    return-object v0

    .line 17118
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    move-result-object v0

    return-object v0
.end method

.method public getTransferTokensMessage()Lwallet/core/jni/proto/Cosmos$Message$Transfer;
    .locals 2

    .line 16715
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 16716
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    return-object v0

    .line 16718
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public getUnstakeMessage()Lwallet/core/jni/proto/Cosmos$Message$Undelegate;
    .locals 2

    .line 16815
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 16816
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    return-object v0

    .line 16818
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    move-result-object v0

    return-object v0
.end method

.method public getWasmExecuteContractGeneric()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;
    .locals 2

    .line 17315
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 17316
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    return-object v0

    .line 17318
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractGeneric;

    move-result-object v0

    return-object v0
.end method

.method public getWasmExecuteContractSendMessage()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;
    .locals 2

    .line 17265
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 17266
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    return-object v0

    .line 17268
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractSend;

    move-result-object v0

    return-object v0
.end method

.method public getWasmExecuteContractTransferMessage()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;
    .locals 2

    .line 17215
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 17216
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    return-object v0

    .line 17218
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    move-result-object v0

    return-object v0
.end method

.method public getWasmTerraExecuteContractGeneric()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;
    .locals 2

    .line 17165
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 17166
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    return-object v0

    .line 17168
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractGeneric;

    move-result-object v0

    return-object v0
.end method

.method public getWasmTerraExecuteContractSendMessage()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;
    .locals 2

    .line 17065
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 17066
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    return-object v0

    .line 17068
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractSend;

    move-result-object v0

    return-object v0
.end method

.method public getWasmTerraExecuteContractTransferMessage()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;
    .locals 2

    .line 17015
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 17016
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    return-object v0

    .line 17018
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    move-result-object v0

    return-object v0
.end method

.method public getWithdrawStakeRewardMessage()Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;
    .locals 2

    .line 16915
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 16916
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    return-object v0

    .line 16918
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    move-result-object v0

    return-object v0
.end method

.method public hasAuthGrant()Z
    .locals 2

    .line 17408
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAuthRevoke()Z
    .locals 2

    .line 17458
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMsgVote()Z
    .locals 2

    .line 17508
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRawJsonMessage()Z
    .locals 2

    .line 16958
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRestakeMessage()Z
    .locals 2

    .line 16858
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSendCoinsMessage()Z
    .locals 2

    .line 16658
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSignDirectMessage()Z
    .locals 2

    .line 17358
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStakeMessage()Z
    .locals 2

    .line 16758
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasThorchainSendMessage()Z
    .locals 2

    .line 17108
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransferTokensMessage()Z
    .locals 2

    .line 16708
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUnstakeMessage()Z
    .locals 2

    .line 16808
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWasmExecuteContractGeneric()Z
    .locals 2

    .line 17308
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWasmExecuteContractSendMessage()Z
    .locals 2

    .line 17258
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWasmExecuteContractTransferMessage()Z
    .locals 2

    .line 17208
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWasmTerraExecuteContractGeneric()Z
    .locals 2

    .line 17158
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWasmTerraExecuteContractSendMessage()Z
    .locals 2

    .line 17058
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWasmTerraExecuteContractTransferMessage()Z
    .locals 2

    .line 17008
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWithdrawStakeRewardMessage()Z
    .locals 2

    .line 16908
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message;->messageOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
