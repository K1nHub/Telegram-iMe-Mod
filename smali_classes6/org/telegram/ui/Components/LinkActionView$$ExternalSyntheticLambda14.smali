.class public final synthetic Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/LinkActionView;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/Components/LinkActionView;

    iput-object p2, p0, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda14;->f$1:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-object p3, p0, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda14;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p4, p0, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda14;->f$3:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/Components/LinkActionView;

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda14;->f$1:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object v2, p0, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda14;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, p0, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda14;->f$3:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/LinkActionView;->$r8$lambda$IUacOpjWH8SwQr9KXW7J-7ElIl0(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method
