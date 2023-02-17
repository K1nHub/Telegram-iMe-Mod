.class Lcom/google/firebase/firestore/local/MemoryBundleCache;
.super Ljava/lang/Object;
.source "MemoryBundleCache.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/BundleCache;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method
