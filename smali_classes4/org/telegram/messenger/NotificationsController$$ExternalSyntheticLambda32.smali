.class public final synthetic Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/NotificationsController;

.field public final synthetic f$1:Landroidx/collection/LongSparseArray;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/NotificationsController;Landroidx/collection/LongSparseArray;ZLjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda32;->f$0:Lorg/telegram/messenger/NotificationsController;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda32;->f$1:Landroidx/collection/LongSparseArray;

    iput-boolean p3, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda32;->f$2:Z

    iput-object p4, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda32;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda32;->f$0:Lorg/telegram/messenger/NotificationsController;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda32;->f$1:Landroidx/collection/LongSparseArray;

    iget-boolean v2, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda32;->f$2:Z

    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda32;->f$3:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/NotificationsController;->$r8$lambda$3cZbqPU9Y3S06abw9ILH0N4Ep0s(Lorg/telegram/messenger/NotificationsController;Landroidx/collection/LongSparseArray;ZLjava/util/ArrayList;)V

    return-void
.end method
