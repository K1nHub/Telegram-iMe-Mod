.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda160;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/Bulletin$UndoButton;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/Bulletin$UndoButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda160;->f$0:Lorg/telegram/ui/Components/Bulletin$UndoButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda160;->f$0:Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undo()V

    return-void
.end method
