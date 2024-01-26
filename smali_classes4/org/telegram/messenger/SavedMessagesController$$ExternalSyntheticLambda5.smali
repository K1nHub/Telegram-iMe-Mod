.class public final synthetic Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SavedMessagesController;

.field public final synthetic f$1:Landroidx/collection/LongSparseArray;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SavedMessagesController;Landroidx/collection/LongSparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/SavedMessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda5;->f$1:Landroidx/collection/LongSparseArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/SavedMessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda5;->f$1:Landroidx/collection/LongSparseArray;

    invoke-static {v0, v1}, Lorg/telegram/messenger/SavedMessagesController;->$r8$lambda$oqNNcLYmgr9HpAKe0mDoSrJOCiI(Lorg/telegram/messenger/SavedMessagesController;Landroidx/collection/LongSparseArray;)V

    return-void
.end method
