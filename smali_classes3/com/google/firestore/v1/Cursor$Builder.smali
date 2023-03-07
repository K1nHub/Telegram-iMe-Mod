.class public final Lcom/google/firestore/v1/Cursor$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cursor.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/Cursor;",
        "Lcom/google/firestore/v1/Cursor$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 317
    invoke-static {}, Lcom/google/firestore/v1/Cursor;->access$000()Lcom/google/firestore/v1/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/Cursor$1;)V
    .locals 0

    .line 310
    invoke-direct {p0}, Lcom/google/firestore/v1/Cursor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllValues(Ljava/lang/Iterable;)Lcom/google/firestore/v1/Cursor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/Cursor$Builder;"
        }
    .end annotation

    .line 462
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 463
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Cursor;->access$400(Lcom/google/firestore/v1/Cursor;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public setBefore(Z)Lcom/google/firestore/v1/Cursor$Builder;
    .locals 1

    .line 519
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 520
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Cursor;->access$700(Lcom/google/firestore/v1/Cursor;Z)V

    return-object p0
.end method
