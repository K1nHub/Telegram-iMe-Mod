.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SendMessagesHelper;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Message;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$Peer;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/util/ArrayList;

.field public final synthetic f$6:J

.field public final synthetic f$7:Lorg/telegram/tgnet/TLRPC$Message;

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Peer;IILjava/util/ArrayList;JLorg/telegram/tgnet/TLRPC$Message;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$1:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$2:Lorg/telegram/tgnet/TLRPC$Peer;

    iput p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$3:I

    iput p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$4:I

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$5:Ljava/util/ArrayList;

    iput-wide p7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$6:J

    iput-object p9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$7:Lorg/telegram/tgnet/TLRPC$Message;

    iput p10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$8:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$1:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$2:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$3:I

    iget v4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$4:I

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$5:Ljava/util/ArrayList;

    iget-wide v6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$6:J

    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$7:Lorg/telegram/tgnet/TLRPC$Message;

    iget v9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$8:I

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$xjkvcO-3-vfxsi6_IgeiBWgsSUg(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Peer;IILjava/util/ArrayList;JLorg/telegram/tgnet/TLRPC$Message;I)V

    return-void
.end method
