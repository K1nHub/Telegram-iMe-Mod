.class public final Lwallet/core/jni/proto/Ontology$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ontology.java"

# interfaces
.implements Lwallet/core/jni/proto/Ontology$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ontology$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Ontology$SigningOutput;",
        "Lwallet/core/jni/proto/Ontology$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ontology$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1535
    invoke-static {}, Lwallet/core/jni/proto/Ontology$SigningOutput;->access$2600()Lwallet/core/jni/proto/Ontology$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Ontology$1;)V
    .locals 0

    .line 1528
    invoke-direct {p0}, Lwallet/core/jni/proto/Ontology$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEncoded()Lwallet/core/jni/proto/Ontology$SigningOutput$Builder;
    .locals 1

    .line 1574
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1575
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ontology$SigningOutput;->access$2800(Lwallet/core/jni/proto/Ontology$SigningOutput;)V

    return-object p0
.end method

.method public getEncoded()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1549
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ontology$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setEncoded(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ontology$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1561
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1562
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ontology$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ontology$SigningOutput;->access$2700(Lwallet/core/jni/proto/Ontology$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
