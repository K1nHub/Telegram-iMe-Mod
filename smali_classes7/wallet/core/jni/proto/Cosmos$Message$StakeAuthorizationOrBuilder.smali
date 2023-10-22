.class public interface abstract Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorizationOrBuilder;
.super Ljava/lang/Object;
.source "Cosmos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StakeAuthorizationOrBuilder"
.end annotation


# virtual methods
.method public abstract getAllowList()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
.end method

.method public abstract getAuthorizationType()Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;
.end method

.method public abstract getAuthorizationTypeValue()I
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getDenyList()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
.end method

.method public abstract getMaxTokens()Lwallet/core/jni/proto/Cosmos$Amount;
.end method

.method public abstract getValidatorsCase()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$ValidatorsCase;
.end method

.method public abstract hasAllowList()Z
.end method

.method public abstract hasDenyList()Z
.end method

.method public abstract hasMaxTokens()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
