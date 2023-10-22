.class public final Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;
.super Ljava/lang/Object;
.source "ResettableLazyDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResettableLazyDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResettableLazyDelegate.kt\ncom/iMe/utils/extentions/delegate/ResettableLazyManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,92:1\n1855#2,2:93\n*S KotlinDebug\n*F\n+ 1 ResettableLazyDelegate.kt\ncom/iMe/utils/extentions/delegate/ResettableLazyManager\n*L\n22#1:93,2\n*E\n"
.end annotation


# instance fields
.field private final managedDelegates:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/iMe/utils/extentions/delegate/Resettable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;->managedDelegates:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;->managedDelegates:Ljava/util/LinkedList;

    monitor-enter v0

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;->managedDelegates:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 30
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final register(Lcom/iMe/utils/extentions/delegate/Resettable;)V
    .locals 2

    const-string/jumbo v0, "managed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;->managedDelegates:Ljava/util/LinkedList;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;->managedDelegates:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final reset()V
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;->managedDelegates:Ljava/util/LinkedList;

    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;->managedDelegates:Ljava/util/LinkedList;

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/utils/extentions/delegate/Resettable;

    .line 22
    invoke-interface {v2}, Lcom/iMe/utils/extentions/delegate/Resettable;->reset()V

    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;->managedDelegates:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 24
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
