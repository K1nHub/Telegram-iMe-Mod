.class public final Lcom/google/firestore/v1/Write$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Write.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Write;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/Write;",
        "Lcom/google/firestore/v1/Write$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 818
    invoke-static {}, Lcom/google/firestore/v1/Write;->access$000()Lcom/google/firestore/v1/Write;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/Write$1;)V
    .locals 0

    .line 811
    invoke-direct {p0}, Lcom/google/firestore/v1/Write$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addUpdateTransforms(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 1336
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1337
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$1800(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    return-object p0
.end method

.method public setCurrentDocument(Lcom/google/firestore/v1/Precondition;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 1469
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1470
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$2300(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/Precondition;)V

    return-object p0
.end method

.method public setDelete(Ljava/lang/String;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 945
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 946
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$500(Lcom/google/firestore/v1/Write;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUpdate(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 864
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 865
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$200(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/Document;)V

    return-object p0
.end method

.method public setUpdateMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 1185
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1186
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$1400(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentMask;)V

    return-object p0
.end method

.method public setVerify(Ljava/lang/String;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 1022
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1023
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$800(Lcom/google/firestore/v1/Write;Ljava/lang/String;)V

    return-object p0
.end method
