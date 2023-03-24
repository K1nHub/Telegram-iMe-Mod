.class public final Lwallet/core/jni/proto/NEAR$CreateAccount$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$CreateAccountOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR$CreateAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NEAR$CreateAccount;",
        "Lwallet/core/jni/proto/NEAR$CreateAccount$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$CreateAccountOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1846
    invoke-static {}, Lwallet/core/jni/proto/NEAR$CreateAccount;->access$3100()Lwallet/core/jni/proto/NEAR$CreateAccount;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NEAR$1;)V
    .locals 0

    .line 1839
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$CreateAccount$Builder;-><init>()V

    return-void
.end method
