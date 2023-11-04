.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda341;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$3:J

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$Chat;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda341;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda341;->f$1:J

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda341;->f$2:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-wide p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda341;->f$3:J

    iput p7, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda341;->f$4:I

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda341;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-wide v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda341;->f$1:J

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda341;->f$2:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda341;->f$3:J

    iget v6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda341;->f$4:I

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$Am3WSnRICoe-A8O0VStoZsX9uVE(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$Chat;JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
