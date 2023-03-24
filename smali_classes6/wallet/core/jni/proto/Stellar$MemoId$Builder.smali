.class public final Lwallet/core/jni/proto/Stellar$MemoId$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Stellar.java"

# interfaces
.implements Lwallet/core/jni/proto/Stellar$MemoIdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar$MemoId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Stellar$MemoId;",
        "Lwallet/core/jni/proto/Stellar$MemoId$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Stellar$MemoIdOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4241
    invoke-static {}, Lwallet/core/jni/proto/Stellar$MemoId;->access$6400()Lwallet/core/jni/proto/Stellar$MemoId;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Stellar$1;)V
    .locals 0

    .line 4234
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$MemoId$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearId()Lwallet/core/jni/proto/Stellar$MemoId$Builder;
    .locals 1

    .line 4268
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4269
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$MemoId;->access$6600(Lwallet/core/jni/proto/Stellar$MemoId;)V

    return-object p0
.end method

.method public getId()J
    .locals 2

    .line 4251
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$MemoId;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public setId(J)Lwallet/core/jni/proto/Stellar$MemoId$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4259
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4260
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Stellar$MemoId;->access$6500(Lwallet/core/jni/proto/Stellar$MemoId;J)V

    return-object p0
.end method
