.class public final synthetic Lorg/telegram/ui/SessionsActivity$3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/SessionsActivity$3;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_authorization;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/SessionsActivity$3;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$3$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/SessionsActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/SessionsActivity$3$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$3$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/SessionsActivity$3;

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$3$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/SessionsActivity$3;->$r8$lambda$hsc2s-dx3KmjljnZxKL0pACP0uI(Lorg/telegram/ui/SessionsActivity$3;Lorg/telegram/tgnet/TLRPC$TL_authorization;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
