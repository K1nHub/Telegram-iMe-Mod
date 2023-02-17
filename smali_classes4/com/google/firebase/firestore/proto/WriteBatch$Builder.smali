.class public final Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "WriteBatch.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/proto/WriteBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/firestore/proto/WriteBatch;",
        "Lcom/google/firebase/firestore/proto/WriteBatch$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 592
    invoke-static {}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$000()Lcom/google/firebase/firestore/proto/WriteBatch;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/proto/WriteBatch$1;)V
    .locals 0

    .line 585
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;-><init>()V

    return-void
.end method
