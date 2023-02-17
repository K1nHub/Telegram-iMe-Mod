.class final Lio/grpc/PersistentHashArrayMappedTrie;
.super Ljava/lang/Object;
.source "PersistentHashArrayMappedTrie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/PersistentHashArrayMappedTrie$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lio/grpc/PersistentHashArrayMappedTrie;-><init>(Lio/grpc/PersistentHashArrayMappedTrie$Node;)V

    return-void
.end method

.method private constructor <init>(Lio/grpc/PersistentHashArrayMappedTrie$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
