.class public interface abstract Lwallet/core/jni/proto/NEAR$AccessKeyOrBuilder;
.super Ljava/lang/Object;
.source "NEAR.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccessKeyOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getFullAccess()Lwallet/core/jni/proto/NEAR$FullAccessPermission;
.end method

.method public abstract getFunctionCall()Lwallet/core/jni/proto/NEAR$FunctionCallPermission;
.end method

.method public abstract getNonce()J
.end method

.method public abstract getPermissionCase()Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;
.end method

.method public abstract hasFullAccess()Z
.end method

.method public abstract hasFunctionCall()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
