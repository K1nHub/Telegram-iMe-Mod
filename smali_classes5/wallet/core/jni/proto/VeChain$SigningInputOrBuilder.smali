.class public interface abstract Lwallet/core/jni/proto/VeChain$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "VeChain.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/VeChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract getBlockRef()J
.end method

.method public abstract getChainTag()I
.end method

.method public abstract getClauses(I)Lwallet/core/jni/proto/VeChain$Clause;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getClausesCount()I
.end method

.method public abstract getClausesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/VeChain$Clause;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getDependsOn()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getExpiration()I
.end method

.method public abstract getGas()J
.end method

.method public abstract getGasPriceCoef()I
.end method

.method public abstract getNonce()J
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic isInitialized()Z
.end method
