.class public final Lwallet/core/jni/proto/Ethereum;
.super Ljava/lang/Object;
.source "Ethereum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Ethereum$SigningOutput;,
        Lwallet/core/jni/proto/Ethereum$SigningOutputOrBuilder;,
        Lwallet/core/jni/proto/Ethereum$SigningInput;,
        Lwallet/core/jni/proto/Ethereum$SigningInputOrBuilder;,
        Lwallet/core/jni/proto/Ethereum$UserOperation;,
        Lwallet/core/jni/proto/Ethereum$UserOperationOrBuilder;,
        Lwallet/core/jni/proto/Ethereum$Transaction;,
        Lwallet/core/jni/proto/Ethereum$TransactionOrBuilder;,
        Lwallet/core/jni/proto/Ethereum$TransactionMode;
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
