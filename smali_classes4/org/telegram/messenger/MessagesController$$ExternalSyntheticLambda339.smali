.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda339;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$4:J

.field public final synthetic f$5:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Ljava/lang/Runnable;ZLorg/telegram/tgnet/TLRPC$User;JLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda339;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda339;->f$1:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda339;->f$2:Z

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda339;->f$3:Lorg/telegram/tgnet/TLRPC$User;

    iput-wide p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda339;->f$4:J

    iput-object p7, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda339;->f$5:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda339;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda339;->f$1:Ljava/lang/Runnable;

    iget-boolean v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda339;->f$2:Z

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda339;->f$3:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda339;->f$4:J

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda339;->f$5:Ljava/lang/Runnable;

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$8DzjoU8ThiVZLisuZQQvDvhRUUo(Lorg/telegram/messenger/MessagesController;Ljava/lang/Runnable;ZLorg/telegram/tgnet/TLRPC$User;JLjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
