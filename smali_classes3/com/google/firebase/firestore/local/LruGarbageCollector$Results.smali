.class public Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;
.super Ljava/lang/Object;
.source "LruGarbageCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/LruGarbageCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Results"
.end annotation


# direct methods
.method constructor <init>(ZIII)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static DidNotRun()Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;
    .locals 2

    .line 82
    new-instance v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;-><init>(ZIII)V

    return-object v0
.end method
