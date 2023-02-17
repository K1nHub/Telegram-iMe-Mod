.class public final Lcom/google/firestore/v1/DocumentMask$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DocumentMask.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/DocumentMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/DocumentMask;",
        "Lcom/google/firestore/v1/DocumentMask$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 262
    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->access$000()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/DocumentMask$1;)V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentMask$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addFieldPaths(Ljava/lang/String;)Lcom/google/firestore/v1/DocumentMask$Builder;
    .locals 1

    .line 352
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 353
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentMask;->access$200(Lcom/google/firestore/v1/DocumentMask;Ljava/lang/String;)V

    return-object p0
.end method
