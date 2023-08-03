.class public final Lwallet/core/jni/proto/Aptos$TransactionAuthenticator$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Aptos.java"

# interfaces
.implements Lwallet/core/jni/proto/Aptos$TransactionAuthenticatorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;",
        "Lwallet/core/jni/proto/Aptos$TransactionAuthenticator$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aptos$TransactionAuthenticatorOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7675
    invoke-static {}, Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;->access$13600()Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Aptos$1;)V
    .locals 0

    .line 7668
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$TransactionAuthenticator$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPublicKey()Lwallet/core/jni/proto/Aptos$TransactionAuthenticator$Builder;
    .locals 1

    .line 7754
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7755
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;->access$14000(Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;)V

    return-object p0
.end method

.method public clearSignature()Lwallet/core/jni/proto/Aptos$TransactionAuthenticator$Builder;
    .locals 1

    .line 7714
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7715
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;->access$13800(Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;)V

    return-object p0
.end method

.method public getPublicKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7729
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;->getPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7689
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setPublicKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$TransactionAuthenticator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7741
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7742
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;->access$13900(Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$TransactionAuthenticator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7701
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7702
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;->access$13700(Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
