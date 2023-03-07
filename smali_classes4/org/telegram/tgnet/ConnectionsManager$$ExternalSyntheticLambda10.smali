.class public final synthetic Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/ConnectionsManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/ConnectionsManager;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/tgnet/ConnectionsManager;

    iput p2, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda10;->f$1:I

    iput-boolean p3, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda10;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/tgnet/ConnectionsManager;

    iget v1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda10;->f$1:I

    iget-boolean v2, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda10;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->$r8$lambda$dEaswJ8pPZMDMYhhOQMAEbe5VRI(Lorg/telegram/tgnet/ConnectionsManager;IZ)V

    return-void
.end method
