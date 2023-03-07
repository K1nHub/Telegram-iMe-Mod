.class public final Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery$Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/StructuredQuery$Filter;",
        "Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1039
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$Filter;->access$700()Lcom/google/firestore/v1/StructuredQuery$Filter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/StructuredQuery$1;)V
    .locals 0

    .line 1032
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public setCompositeFilter(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;)Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;
    .locals 1

    .line 1098
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1099
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->access$900(Lcom/google/firestore/v1/StructuredQuery$Filter;Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;)V

    return-object p0
.end method

.method public setFieldFilter(Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;)Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;
    .locals 1

    .line 1170
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1171
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->access$1200(Lcom/google/firestore/v1/StructuredQuery$Filter;Lcom/google/firestore/v1/StructuredQuery$FieldFilter;)V

    return-object p0
.end method

.method public setUnaryFilter(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;)Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;
    .locals 1

    .line 1242
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1243
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->access$1500(Lcom/google/firestore/v1/StructuredQuery$Filter;Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)V

    return-object p0
.end method
