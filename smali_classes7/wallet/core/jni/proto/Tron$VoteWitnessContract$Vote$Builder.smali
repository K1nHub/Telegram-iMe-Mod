.class public final Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$VoteWitnessContract$VoteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;",
        "Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$VoteWitnessContract$VoteOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8216
    invoke-static {}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->access$13400()Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tron$1;)V
    .locals 0

    .line 8209
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearVoteAddress()Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote$Builder;
    .locals 1

    .line 8269
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8270
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->access$13600(Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)V

    return-object p0
.end method

.method public clearVoteCount()Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote$Builder;
    .locals 1

    .line 8324
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8325
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->access$13900(Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)V

    return-object p0
.end method

.method public getVoteAddress()Ljava/lang/String;
    .locals 1

    .line 8230
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->getVoteAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoteAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8243
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->getVoteAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVoteCount()J
    .locals 2

    .line 8299
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->getVoteCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public setVoteAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8256
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8257
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->access$13500(Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;Ljava/lang/String;)V

    return-object p0
.end method

.method public setVoteAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8284
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8285
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->access$13700(Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setVoteCount(J)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8311
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8312
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->access$13800(Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;J)V

    return-object p0
.end method
