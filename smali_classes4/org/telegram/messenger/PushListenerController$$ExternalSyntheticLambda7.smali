.class public final synthetic Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/tgnet/TLRPC$TL_error;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-static {v0}, Lorg/telegram/messenger/PushListenerController;->$r8$lambda$y48jQHe_b7R5KuAuZEk92feq_1M(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
