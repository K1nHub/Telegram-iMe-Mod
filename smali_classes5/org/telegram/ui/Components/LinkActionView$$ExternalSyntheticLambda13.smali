.class public final synthetic Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/LinkActionView;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/Components/LinkActionView;

    iput-object p2, p0, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda13;->f$1:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/Components/LinkActionView;

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda13;->f$1:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->$r8$lambda$2M2D1PIbReecasIXmLkEpKYhFSw(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
