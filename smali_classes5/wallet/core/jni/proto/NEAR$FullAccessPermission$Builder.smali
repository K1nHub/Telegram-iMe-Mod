.class public final Lwallet/core/jni/proto/NEAR$FullAccessPermission$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$FullAccessPermissionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR$FullAccessPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NEAR$FullAccessPermission;",
        "Lwallet/core/jni/proto/NEAR$FullAccessPermission$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$FullAccessPermissionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1099
    invoke-static {}, Lwallet/core/jni/proto/NEAR$FullAccessPermission;->access$1800()Lwallet/core/jni/proto/NEAR$FullAccessPermission;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NEAR$1;)V
    .locals 0

    .line 1092
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$FullAccessPermission$Builder;-><init>()V

    return-void
.end method
