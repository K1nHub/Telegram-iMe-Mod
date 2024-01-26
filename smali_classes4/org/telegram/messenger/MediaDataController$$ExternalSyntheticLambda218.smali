.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda218;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/messenger/MessagesStorage$BooleanCallback;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda218;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda218;->f$1:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;

    iput-object p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda218;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda218;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda218;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda218;->f$1:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;

    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda218;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda218;->f$3:Z

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$b752_vORwIrGcGrDNMhoU7AEOYw(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/messenger/MessagesStorage$BooleanCallback;Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
