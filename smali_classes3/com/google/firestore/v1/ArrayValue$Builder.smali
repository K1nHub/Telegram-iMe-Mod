.class public final Lcom/google/firestore/v1/ArrayValue$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ArrayValue.java"

# interfaces
.implements Lcom/google/firestore/v1/ArrayValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/ArrayValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/ArrayValue;",
        "Lcom/google/firestore/v1/ArrayValue$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ArrayValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 254
    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->access$000()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/ArrayValue$1;)V
    .locals 0

    .line 247
    invoke-direct {p0}, Lcom/google/firestore/v1/ArrayValue$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllValues(Ljava/lang/Iterable;)Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/ArrayValue$Builder;"
        }
    .end annotation

    .line 379
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 380
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ArrayValue;->access$400(Lcom/google/firestore/v1/ArrayValue;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addValues(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 327
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ArrayValue;->access$200(Lcom/google/firestore/v1/ArrayValue;Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public getValues(I)Lcom/google/firestore/v1/Value;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/ArrayValue;->getValues(I)Lcom/google/firestore/v1/Value;

    move-result-object p1

    return-object p1
.end method

.method public getValuesCount()I
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v0

    return v0
.end method

.method public getValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    .line 268
    invoke-virtual {v0}, Lcom/google/firestore/v1/ArrayValue;->getValuesList()Ljava/util/List;

    move-result-object v0

    .line 267
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeValues(I)Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1

    .line 403
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 404
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ArrayValue;->access$600(Lcom/google/firestore/v1/ArrayValue;I)V

    return-object p0
.end method
