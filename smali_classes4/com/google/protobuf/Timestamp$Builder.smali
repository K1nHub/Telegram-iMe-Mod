.class public final Lcom/google/protobuf/Timestamp$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Timestamp.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Timestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/protobuf/Timestamp;",
        "Lcom/google/protobuf/Timestamp$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 336
    invoke-static {}, Lcom/google/protobuf/Timestamp;->access$000()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Timestamp$1;)V
    .locals 0

    .line 329
    invoke-direct {p0}, Lcom/google/protobuf/Timestamp$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public setNanos(I)Lcom/google/protobuf/Timestamp$Builder;
    .locals 1

    .line 414
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 415
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, p1}, Lcom/google/protobuf/Timestamp;->access$300(Lcom/google/protobuf/Timestamp;I)V

    return-object p0
.end method

.method public setSeconds(J)Lcom/google/protobuf/Timestamp$Builder;
    .locals 1

    .line 366
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 367
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Timestamp;->access$100(Lcom/google/protobuf/Timestamp;J)V

    return-object p0
.end method
