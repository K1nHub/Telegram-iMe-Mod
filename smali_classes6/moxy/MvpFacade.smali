.class public final Lmoxy/MvpFacade;
.super Ljava/lang/Object;
.source "MvpFacade.java"


# static fields
.field private static volatile instance:Lmoxy/MvpFacade;

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private mvpProcessor:Lmoxy/MvpProcessor;

.field private presenterStore:Lmoxy/PresenterStore;

.field private presentersCounter:Lmoxy/PresentersCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmoxy/MvpFacade;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lmoxy/PresentersCounter;

    invoke-direct {v0}, Lmoxy/PresentersCounter;-><init>()V

    iput-object v0, p0, Lmoxy/MvpFacade;->presentersCounter:Lmoxy/PresentersCounter;

    .line 14
    new-instance v0, Lmoxy/PresenterStore;

    invoke-direct {v0}, Lmoxy/PresenterStore;-><init>()V

    iput-object v0, p0, Lmoxy/MvpFacade;->presenterStore:Lmoxy/PresenterStore;

    .line 15
    new-instance v0, Lmoxy/MvpProcessor;

    invoke-direct {v0}, Lmoxy/MvpProcessor;-><init>()V

    iput-object v0, p0, Lmoxy/MvpFacade;->mvpProcessor:Lmoxy/MvpProcessor;

    return-void
.end method

.method public static getInstance()Lmoxy/MvpFacade;
    .locals 2

    .line 19
    sget-object v0, Lmoxy/MvpFacade;->instance:Lmoxy/MvpFacade;

    if-nez v0, :cond_1

    .line 20
    sget-object v0, Lmoxy/MvpFacade;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lmoxy/MvpFacade;->instance:Lmoxy/MvpFacade;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lmoxy/MvpFacade;

    invoke-direct {v1}, Lmoxy/MvpFacade;-><init>()V

    sput-object v1, Lmoxy/MvpFacade;->instance:Lmoxy/MvpFacade;

    .line 24
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 26
    :cond_1
    :goto_0
    sget-object v0, Lmoxy/MvpFacade;->instance:Lmoxy/MvpFacade;

    return-object v0
.end method

.method public static init()V
    .locals 0

    .line 30
    invoke-static {}, Lmoxy/MvpFacade;->getInstance()Lmoxy/MvpFacade;

    return-void
.end method


# virtual methods
.method public getMvpProcessor()Lmoxy/MvpProcessor;
    .locals 1

    .line 42
    iget-object v0, p0, Lmoxy/MvpFacade;->mvpProcessor:Lmoxy/MvpProcessor;

    return-object v0
.end method

.method public getPresenterStore()Lmoxy/PresenterStore;
    .locals 1

    .line 34
    iget-object v0, p0, Lmoxy/MvpFacade;->presenterStore:Lmoxy/PresenterStore;

    return-object v0
.end method

.method public getPresentersCounter()Lmoxy/PresentersCounter;
    .locals 1

    .line 50
    iget-object v0, p0, Lmoxy/MvpFacade;->presentersCounter:Lmoxy/PresentersCounter;

    return-object v0
.end method

.method public setMvpProcessor(Lmoxy/MvpProcessor;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lmoxy/MvpFacade;->mvpProcessor:Lmoxy/MvpProcessor;

    return-void
.end method

.method public setPresenterStore(Lmoxy/PresenterStore;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lmoxy/MvpFacade;->presenterStore:Lmoxy/PresenterStore;

    return-void
.end method

.method public setPresentersCounter(Lmoxy/PresentersCounter;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lmoxy/MvpFacade;->presentersCounter:Lmoxy/PresentersCounter;

    return-void
.end method
