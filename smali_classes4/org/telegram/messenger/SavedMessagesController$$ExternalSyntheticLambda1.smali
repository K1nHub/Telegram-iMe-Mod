.class public final synthetic Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SavedMessagesController;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SavedMessagesController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/SavedMessagesController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/SavedMessagesController;

    invoke-virtual {v0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    return-void
.end method
