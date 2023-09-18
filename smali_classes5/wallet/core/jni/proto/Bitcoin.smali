.class public final Lwallet/core/jni/proto/Bitcoin;
.super Ljava/lang/Object;
.source "Bitcoin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;,
        Lwallet/core/jni/proto/Bitcoin$PreSigningOutputOrBuilder;,
        Lwallet/core/jni/proto/Bitcoin$HashPublicKey;,
        Lwallet/core/jni/proto/Bitcoin$HashPublicKeyOrBuilder;,
        Lwallet/core/jni/proto/Bitcoin$SigningOutput;,
        Lwallet/core/jni/proto/Bitcoin$SigningOutputOrBuilder;,
        Lwallet/core/jni/proto/Bitcoin$TransactionPlan;,
        Lwallet/core/jni/proto/Bitcoin$TransactionPlanOrBuilder;,
        Lwallet/core/jni/proto/Bitcoin$SigningInput;,
        Lwallet/core/jni/proto/Bitcoin$SigningInputOrBuilder;,
        Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;,
        Lwallet/core/jni/proto/Bitcoin$UnspentTransactionOrBuilder;,
        Lwallet/core/jni/proto/Bitcoin$TransactionOutput;,
        Lwallet/core/jni/proto/Bitcoin$TransactionOutputOrBuilder;,
        Lwallet/core/jni/proto/Bitcoin$OutPoint;,
        Lwallet/core/jni/proto/Bitcoin$OutPointOrBuilder;,
        Lwallet/core/jni/proto/Bitcoin$TransactionInput;,
        Lwallet/core/jni/proto/Bitcoin$TransactionInputOrBuilder;,
        Lwallet/core/jni/proto/Bitcoin$Transaction;,
        Lwallet/core/jni/proto/Bitcoin$TransactionOrBuilder;
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
