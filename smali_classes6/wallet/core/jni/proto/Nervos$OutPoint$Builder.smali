.class public final Lwallet/core/jni/proto/Nervos$OutPoint$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$OutPointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos$OutPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Nervos$OutPoint;",
        "Lwallet/core/jni/proto/Nervos$OutPoint$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$OutPointOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2474
    invoke-static {}, Lwallet/core/jni/proto/Nervos$OutPoint;->access$3900()Lwallet/core/jni/proto/Nervos$OutPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Nervos$1;)V
    .locals 0

    .line 2467
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$OutPoint$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIndex()Lwallet/core/jni/proto/Nervos$OutPoint$Builder;
    .locals 1

    .line 2553
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2554
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$OutPoint;->access$4300(Lwallet/core/jni/proto/Nervos$OutPoint;)V

    return-object p0
.end method

.method public clearTxHash()Lwallet/core/jni/proto/Nervos$OutPoint$Builder;
    .locals 1

    .line 2513
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2514
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$OutPoint;->access$4100(Lwallet/core/jni/proto/Nervos$OutPoint;)V

    return-object p0
.end method

.method public getIndex()I
    .locals 1

    .line 2528
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$OutPoint;->getIndex()I

    move-result v0

    return v0
.end method

.method public getTxHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2488
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$OutPoint;->getTxHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setIndex(I)Lwallet/core/jni/proto/Nervos$OutPoint$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2540
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2541
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$OutPoint;->access$4200(Lwallet/core/jni/proto/Nervos$OutPoint;I)V

    return-object p0
.end method

.method public setTxHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$OutPoint$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2500
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2501
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$OutPoint;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$OutPoint;->access$4000(Lwallet/core/jni/proto/Nervos$OutPoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
