.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda104;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Landroid/util/SparseBooleanArray;

.field public final synthetic f$2:I

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Landroid/util/SparseBooleanArray;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda104;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda104;->f$1:Landroid/util/SparseBooleanArray;

    iput p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda104;->f$2:I

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda104;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda104;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda104;->f$1:Landroid/util/SparseBooleanArray;

    iget v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda104;->f$2:I

    iget-wide v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda104;->f$3:J

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$Aetdp9Zlg0ghH5eArTcLgeK7G1U(Lorg/telegram/messenger/MessagesController;Landroid/util/SparseBooleanArray;IJ)V

    return-void
.end method
