.class public final synthetic Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PassportActivity$8;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/PassportActivity$8;

    iput-object p2, p0, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/PassportActivity$8;

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PassportActivity$8;->$r8$lambda$f2W_nna-7Bu3iYhHqAGuxlsJQHE(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
