.class public final synthetic Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_updates;


# direct methods
.method public synthetic constructor <init>(ILorg/telegram/tgnet/TLRPC$TL_updates;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda3;->f$0:I

    iput-object p2, p0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/TLRPC$TL_updates;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda3;->f$0:I

    iget-object v1, p0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-static {v0, v1}, Lorg/telegram/messenger/PushListenerController;->$r8$lambda$swoE-5CRXa6sDNZ8FzJJacZD9ck(ILorg/telegram/tgnet/TLRPC$TL_updates;)V

    return-void
.end method
