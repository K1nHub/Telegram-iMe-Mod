.class public interface abstract Lwallet/core/jni/proto/Cosmos$Message$AuthGrantOrBuilder;
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
    name = "AuthGrantOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getExpiration()J
.end method

.method public abstract getGrantStake()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;
.end method

.method public abstract getGrantTypeCase()Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;
.end method

.method public abstract getGrantee()Ljava/lang/String;
.end method

.method public abstract getGranteeBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGranter()Ljava/lang/String;
.end method

.method public abstract getGranterBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasGrantStake()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
