.class public final Lcom/google/firestore/v1/DocumentRemove$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DocumentRemove.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/DocumentRemove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/DocumentRemove;",
        "Lcom/google/firestore/v1/DocumentRemove$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 364
    invoke-static {}, Lcom/google/firestore/v1/DocumentRemove;->access$000()Lcom/google/firestore/v1/DocumentRemove;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/DocumentRemove$1;)V
    .locals 0

    .line 357
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;-><init>()V

    return-void
.end method
