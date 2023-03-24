.class public final Lwallet/core/jni/proto/TheOpenNetwork;
.super Ljava/lang/Object;
.source "TheOpenNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;,
        Lwallet/core/jni/proto/TheOpenNetwork$SigningOutputOrBuilder;,
        Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;,
        Lwallet/core/jni/proto/TheOpenNetwork$SigningInputOrBuilder;,
        Lwallet/core/jni/proto/TheOpenNetwork$Transfer;,
        Lwallet/core/jni/proto/TheOpenNetwork$TransferOrBuilder;,
        Lwallet/core/jni/proto/TheOpenNetwork$SendMode;,
        Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;
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
