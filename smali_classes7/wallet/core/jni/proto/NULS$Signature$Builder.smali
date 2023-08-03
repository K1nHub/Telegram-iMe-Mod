.class public final Lwallet/core/jni/proto/NULS$Signature$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NULS.java"

# interfaces
.implements Lwallet/core/jni/proto/NULS$SignatureOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NULS$Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NULS$Signature;",
        "Lwallet/core/jni/proto/NULS$Signature$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NULS$SignatureOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1825
    invoke-static {}, Lwallet/core/jni/proto/NULS$Signature;->access$2800()Lwallet/core/jni/proto/NULS$Signature;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NULS$1;)V
    .locals 0

    .line 1818
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$Signature$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPkeyLen()Lwallet/core/jni/proto/NULS$Signature$Builder;
    .locals 1

    .line 1864
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1865
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Signature;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$Signature;->access$3000(Lwallet/core/jni/proto/NULS$Signature;)V

    return-object p0
.end method

.method public clearPublicKey()Lwallet/core/jni/proto/NULS$Signature$Builder;
    .locals 1

    .line 1904
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1905
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Signature;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$Signature;->access$3200(Lwallet/core/jni/proto/NULS$Signature;)V

    return-object p0
.end method

.method public clearSigLen()Lwallet/core/jni/proto/NULS$Signature$Builder;
    .locals 1

    .line 1944
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1945
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Signature;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$Signature;->access$3400(Lwallet/core/jni/proto/NULS$Signature;)V

    return-object p0
.end method

.method public clearSignature()Lwallet/core/jni/proto/NULS$Signature$Builder;
    .locals 1

    .line 1984
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1985
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Signature;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$Signature;->access$3600(Lwallet/core/jni/proto/NULS$Signature;)V

    return-object p0
.end method

.method public getPkeyLen()I
    .locals 1

    .line 1839
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Signature;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$Signature;->getPkeyLen()I

    move-result v0

    return v0
.end method

.method public getPublicKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1879
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Signature;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$Signature;->getPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSigLen()I
    .locals 1

    .line 1919
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Signature;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$Signature;->getSigLen()I

    move-result v0

    return v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1959
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Signature;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$Signature;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setPkeyLen(I)Lwallet/core/jni/proto/NULS$Signature$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1851
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1852
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Signature;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$Signature;->access$2900(Lwallet/core/jni/proto/NULS$Signature;I)V

    return-object p0
.end method

.method public setPublicKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NULS$Signature$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1891
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1892
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Signature;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$Signature;->access$3100(Lwallet/core/jni/proto/NULS$Signature;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSigLen(I)Lwallet/core/jni/proto/NULS$Signature$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1931
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1932
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Signature;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$Signature;->access$3300(Lwallet/core/jni/proto/NULS$Signature;I)V

    return-object p0
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NULS$Signature$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1971
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1972
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Signature;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$Signature;->access$3500(Lwallet/core/jni/proto/NULS$Signature;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
