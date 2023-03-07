.class public Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;
.super Ljava/lang/Object;
.source "ComponentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/ComponentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation


# instance fields
.field private final asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

.field private final context:Landroid/content/Context;

.field private final databaseInfo:Lcom/google/firebase/firestore/core/DatabaseInfo;

.field private final datastore:Lcom/google/firebase/firestore/remote/Datastore;

.field private final initialUser:Lcom/google/firebase/firestore/auth/User;

.field private final maxConcurrentLimboResolutions:I

.field private final settings:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/core/DatabaseInfo;Lcom/google/firebase/firestore/remote/Datastore;Lcom/google/firebase/firestore/auth/User;ILcom/google/firebase/firestore/FirebaseFirestoreSettings;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->context:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 66
    iput-object p3, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->databaseInfo:Lcom/google/firebase/firestore/core/DatabaseInfo;

    .line 67
    iput-object p4, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->datastore:Lcom/google/firebase/firestore/remote/Datastore;

    .line 68
    iput-object p5, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->initialUser:Lcom/google/firebase/firestore/auth/User;

    .line 69
    iput p6, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->maxConcurrentLimboResolutions:I

    .line 70
    iput-object p7, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->settings:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    return-void
.end method


# virtual methods
.method getAsyncQueue()Lcom/google/firebase/firestore/util/AsyncQueue;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->context:Landroid/content/Context;

    return-object v0
.end method

.method getDatabaseInfo()Lcom/google/firebase/firestore/core/DatabaseInfo;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->databaseInfo:Lcom/google/firebase/firestore/core/DatabaseInfo;

    return-object v0
.end method

.method getDatastore()Lcom/google/firebase/firestore/remote/Datastore;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->datastore:Lcom/google/firebase/firestore/remote/Datastore;

    return-object v0
.end method

.method getInitialUser()Lcom/google/firebase/firestore/auth/User;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->initialUser:Lcom/google/firebase/firestore/auth/User;

    return-object v0
.end method

.method getMaxConcurrentLimboResolutions()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->maxConcurrentLimboResolutions:I

    return v0
.end method

.method getSettings()Lcom/google/firebase/firestore/FirebaseFirestoreSettings;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;->settings:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    return-object v0
.end method
