.class public final Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;",
        "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 412
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->access$000()Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/StructuredQuery$1;)V
    .locals 0

    .line 405
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public setAllDescendants(Z)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;
    .locals 1

    .line 516
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 517
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->access$400(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;Z)V

    return-object p0
.end method

.method public setCollectionId(Ljava/lang/String;)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;
    .locals 1

    .line 455
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 456
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->access$100(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;Ljava/lang/String;)V

    return-object p0
.end method
