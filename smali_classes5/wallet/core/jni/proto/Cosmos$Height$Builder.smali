.class public final Lwallet/core/jni/proto/Cosmos$Height$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$HeightOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Height;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Height;",
        "Lwallet/core/jni/proto/Cosmos$Height$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$HeightOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1561
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Height;->access$1800()Lwallet/core/jni/proto/Cosmos$Height;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 1554
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Height$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRevisionHeight()Lwallet/core/jni/proto/Cosmos$Height$Builder;
    .locals 1

    .line 1640
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1641
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Height;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Height;->access$2200(Lwallet/core/jni/proto/Cosmos$Height;)V

    return-object p0
.end method

.method public clearRevisionNumber()Lwallet/core/jni/proto/Cosmos$Height$Builder;
    .locals 1

    .line 1600
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1601
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Height;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Height;->access$2000(Lwallet/core/jni/proto/Cosmos$Height;)V

    return-object p0
.end method

.method public getRevisionHeight()J
    .locals 2

    .line 1615
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Height;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Height;->getRevisionHeight()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRevisionNumber()J
    .locals 2

    .line 1575
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Height;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Height;->getRevisionNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public setRevisionHeight(J)Lwallet/core/jni/proto/Cosmos$Height$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1627
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1628
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Height;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Height;->access$2100(Lwallet/core/jni/proto/Cosmos$Height;J)V

    return-object p0
.end method

.method public setRevisionNumber(J)Lwallet/core/jni/proto/Cosmos$Height$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1587
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1588
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Height;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Height;->access$1900(Lwallet/core/jni/proto/Cosmos$Height;J)V

    return-object p0
.end method
