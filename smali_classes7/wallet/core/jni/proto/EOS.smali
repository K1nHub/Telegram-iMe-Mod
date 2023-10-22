.class public final Lwallet/core/jni/proto/EOS;
.super Ljava/lang/Object;
.source "EOS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/EOS$SigningOutput;,
        Lwallet/core/jni/proto/EOS$SigningOutputOrBuilder;,
        Lwallet/core/jni/proto/EOS$SigningInput;,
        Lwallet/core/jni/proto/EOS$SigningInputOrBuilder;,
        Lwallet/core/jni/proto/EOS$Asset;,
        Lwallet/core/jni/proto/EOS$AssetOrBuilder;,
        Lwallet/core/jni/proto/EOS$KeyType;
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
