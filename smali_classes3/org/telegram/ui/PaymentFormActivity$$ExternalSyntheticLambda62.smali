.class public final synthetic Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda62;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PaymentFormActivity;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PaymentFormActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda62;->f$0:Lorg/telegram/ui/PaymentFormActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda62;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda62;->f$0:Lorg/telegram/ui/PaymentFormActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda62;->f$1:Z

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->$r8$lambda$fOqX-GDh_rw9O-6g_C0RGmBdGw8(Lorg/telegram/ui/PaymentFormActivity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
