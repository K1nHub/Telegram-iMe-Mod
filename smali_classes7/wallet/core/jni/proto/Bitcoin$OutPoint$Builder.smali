.class public final Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Bitcoin.java"

# interfaces
.implements Lwallet/core/jni/proto/Bitcoin$OutPointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Bitcoin$OutPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Bitcoin$OutPoint;",
        "Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Bitcoin$OutPointOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1801
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->access$2700()Lwallet/core/jni/proto/Bitcoin$OutPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Bitcoin$1;)V
    .locals 0

    .line 1794
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHash()Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;
    .locals 1

    .line 1840
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1841
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->access$2900(Lwallet/core/jni/proto/Bitcoin$OutPoint;)V

    return-object p0
.end method

.method public clearIndex()Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;
    .locals 1

    .line 1880
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1881
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->access$3100(Lwallet/core/jni/proto/Bitcoin$OutPoint;)V

    return-object p0
.end method

.method public clearSequence()Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;
    .locals 1

    .line 1920
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1921
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->access$3300(Lwallet/core/jni/proto/Bitcoin$OutPoint;)V

    return-object p0
.end method

.method public getHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1815
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 1855
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->getIndex()I

    move-result v0

    return v0
.end method

.method public getSequence()I
    .locals 1

    .line 1895
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->getSequence()I

    move-result v0

    return v0
.end method

.method public setHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1827
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1828
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->access$2800(Lwallet/core/jni/proto/Bitcoin$OutPoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIndex(I)Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1867
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1868
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->access$3000(Lwallet/core/jni/proto/Bitcoin$OutPoint;I)V

    return-object p0
.end method

.method public setSequence(I)Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1907
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1908
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->access$3200(Lwallet/core/jni/proto/Bitcoin$OutPoint;I)V

    return-object p0
.end method
