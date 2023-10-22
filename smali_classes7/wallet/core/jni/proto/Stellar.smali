.class public final Lwallet/core/jni/proto/Stellar;
.super Ljava/lang/Object;
.source "Stellar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Stellar$SigningOutput;,
        Lwallet/core/jni/proto/Stellar$SigningOutputOrBuilder;,
        Lwallet/core/jni/proto/Stellar$SigningInput;,
        Lwallet/core/jni/proto/Stellar$SigningInputOrBuilder;,
        Lwallet/core/jni/proto/Stellar$MemoHash;,
        Lwallet/core/jni/proto/Stellar$MemoHashOrBuilder;,
        Lwallet/core/jni/proto/Stellar$MemoId;,
        Lwallet/core/jni/proto/Stellar$MemoIdOrBuilder;,
        Lwallet/core/jni/proto/Stellar$MemoText;,
        Lwallet/core/jni/proto/Stellar$MemoTextOrBuilder;,
        Lwallet/core/jni/proto/Stellar$MemoVoid;,
        Lwallet/core/jni/proto/Stellar$MemoVoidOrBuilder;,
        Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;,
        Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalanceOrBuilder;,
        Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;,
        Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalanceOrBuilder;,
        Lwallet/core/jni/proto/Stellar$Claimant;,
        Lwallet/core/jni/proto/Stellar$ClaimantOrBuilder;,
        Lwallet/core/jni/proto/Stellar$OperationChangeTrust;,
        Lwallet/core/jni/proto/Stellar$OperationChangeTrustOrBuilder;,
        Lwallet/core/jni/proto/Stellar$OperationPayment;,
        Lwallet/core/jni/proto/Stellar$OperationPaymentOrBuilder;,
        Lwallet/core/jni/proto/Stellar$OperationCreateAccount;,
        Lwallet/core/jni/proto/Stellar$OperationCreateAccountOrBuilder;,
        Lwallet/core/jni/proto/Stellar$Asset;,
        Lwallet/core/jni/proto/Stellar$AssetOrBuilder;,
        Lwallet/core/jni/proto/Stellar$ClaimPredicate;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    return-void
.end method
