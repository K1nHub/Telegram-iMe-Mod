.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda256;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$Updates;

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$Updates;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda256;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda256;->f$1:Z

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda256;->f$2:Lorg/telegram/tgnet/TLRPC$Updates;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda256;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda256;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda256;->f$1:Z

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda256;->f$2:Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda256;->f$3:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$HjSSB5DX_3TSTt2f6061mqKWf_g(Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$Updates;Ljava/util/ArrayList;)V

    return-void
.end method
