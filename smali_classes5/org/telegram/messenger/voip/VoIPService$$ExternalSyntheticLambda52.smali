.class public final synthetic Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/voip/VoIPService;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda52;->f$0:Lorg/telegram/messenger/voip/VoIPService;

    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda52;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda52;->f$2:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda52;->f$0:Lorg/telegram/messenger/voip/VoIPService;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda52;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda52;->f$2:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->$r8$lambda$3bqH4KXIMtggm_j1RUg3ZWKZ2WA(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method
