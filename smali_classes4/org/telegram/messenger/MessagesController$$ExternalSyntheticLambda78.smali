.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda78;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;JIILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda78;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda78;->f$1:J

    iput p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda78;->f$2:I

    iput p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda78;->f$3:I

    iput-object p6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda78;->f$4:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda78;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-wide v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda78;->f$1:J

    iget v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda78;->f$2:I

    iget v4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda78;->f$3:I

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda78;->f$4:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$fPjSqON6_PufwGstqDaanHyJ3Vc(Lorg/telegram/messenger/MessagesController;JIILjava/util/ArrayList;)V

    return-void
.end method
