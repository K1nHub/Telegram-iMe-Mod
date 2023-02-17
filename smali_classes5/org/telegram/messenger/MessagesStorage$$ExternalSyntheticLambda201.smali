.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda201;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$photos_Photos;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:J

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$photos_Photos;Ljava/util/ArrayList;JIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda201;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda201;->f$1:Lorg/telegram/tgnet/TLRPC$photos_Photos;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda201;->f$2:Ljava/util/ArrayList;

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda201;->f$3:J

    iput p6, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda201;->f$4:I

    iput p7, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda201;->f$5:I

    iput p8, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda201;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda201;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda201;->f$1:Lorg/telegram/tgnet/TLRPC$photos_Photos;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda201;->f$2:Ljava/util/ArrayList;

    iget-wide v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda201;->f$3:J

    iget v5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda201;->f$4:I

    iget v6, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda201;->f$5:I

    iget v7, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda201;->f$6:I

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$cZhnTu420o2FD2Vr3uWa6IaX7qY(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$photos_Photos;Ljava/util/ArrayList;JIII)V

    return-void
.end method
