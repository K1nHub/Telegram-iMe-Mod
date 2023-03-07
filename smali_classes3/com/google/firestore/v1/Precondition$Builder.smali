.class public final Lcom/google/firestore/v1/Precondition$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Precondition.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Precondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/Precondition;",
        "Lcom/google/firestore/v1/Precondition$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 278
    invoke-static {}, Lcom/google/firestore/v1/Precondition;->access$000()Lcom/google/firestore/v1/Precondition;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/Precondition$1;)V
    .locals 0

    .line 271
    invoke-direct {p0}, Lcom/google/firestore/v1/Precondition$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public setExists(Z)Lcom/google/firestore/v1/Precondition$Builder;
    .locals 1

    .line 318
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 319
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Precondition;->access$200(Lcom/google/firestore/v1/Precondition;Z)V

    return-object p0
.end method

.method public setUpdateTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Precondition$Builder;
    .locals 1

    .line 370
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 371
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Precondition;->access$400(Lcom/google/firestore/v1/Precondition;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method
