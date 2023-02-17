.class public final synthetic Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/NotificationsController;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Landroidx/collection/LongSparseArray;

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda34;->f$0:Lorg/telegram/messenger/NotificationsController;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda34;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda34;->f$2:Landroidx/collection/LongSparseArray;

    iput-object p4, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda34;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda34;->f$0:Lorg/telegram/messenger/NotificationsController;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda34;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda34;->f$2:Landroidx/collection/LongSparseArray;

    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda34;->f$3:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/NotificationsController;->$r8$lambda$JAWOeL8wgj0-2SF5vIt5qkc6DYw(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;)V

    return-void
.end method
