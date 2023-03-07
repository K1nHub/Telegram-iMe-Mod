.class public final Lcom/google/firestore/v1/Document$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Document.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/Document;",
        "Lcom/google/firestore/v1/Document$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 555
    invoke-static {}, Lcom/google/firestore/v1/Document;->access$000()Lcom/google/firestore/v1/Document;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/Document$1;)V
    .locals 0

    .line 548
    invoke-direct {p0}, Lcom/google/firestore/v1/Document$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public putAllFields(Ljava/util/Map;)Lcom/google/firestore/v1/Document$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/Document$Builder;"
        }
    .end annotation

    .line 880
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 881
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0}, Lcom/google/firestore/v1/Document;->access$400(Lcom/google/firestore/v1/Document;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firestore/v1/Document$Builder;
    .locals 1

    .line 598
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 599
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Document;->access$100(Lcom/google/firestore/v1/Document;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUpdateTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Document$Builder;
    .locals 1

    .line 1013
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1014
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Document;->access$800(Lcom/google/firestore/v1/Document;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method
