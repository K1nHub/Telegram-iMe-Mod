.class public final Lcom/google/firestore/v1/MapValue$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MapValue.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/MapValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/MapValue;",
        "Lcom/google/firestore/v1/MapValue$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 248
    invoke-static {}, Lcom/google/firestore/v1/MapValue;->access$000()Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/MapValue$1;)V
    .locals 0

    .line 241
    invoke-direct {p0}, Lcom/google/firestore/v1/MapValue$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public containsFields(Ljava/lang/String;)Z
    .locals 1

    .line 272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/MapValue;

    invoke-virtual {v0}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public putAllFields(Ljava/util/Map;)Lcom/google/firestore/v1/MapValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/MapValue$Builder;"
        }
    .end annotation

    .line 401
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 402
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/MapValue;

    invoke-static {v0}, Lcom/google/firestore/v1/MapValue;->access$100(Lcom/google/firestore/v1/MapValue;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/MapValue$Builder;
    .locals 1

    .line 382
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 385
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/MapValue;

    invoke-static {v0}, Lcom/google/firestore/v1/MapValue;->access$100(Lcom/google/firestore/v1/MapValue;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeFields(Ljava/lang/String;)Lcom/google/firestore/v1/MapValue$Builder;
    .locals 1

    .line 295
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 297
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/MapValue;

    invoke-static {v0}, Lcom/google/firestore/v1/MapValue;->access$100(Lcom/google/firestore/v1/MapValue;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
