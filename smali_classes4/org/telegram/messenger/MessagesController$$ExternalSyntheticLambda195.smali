.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda195;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Dialog;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda195;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda195;->f$1:Lorg/telegram/tgnet/TLRPC$Dialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda195;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda195;->f$1:Lorg/telegram/tgnet/TLRPC$Dialog;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$7Qrw_LAMC3p56RNCZAsb9I_CrOI(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    return-void
.end method
