.class public final synthetic Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_account_verifyPhone;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_account_verifyPhone;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    iput-object p2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda6;->f$2:Lorg/telegram/tgnet/TLRPC$TL_account_verifyPhone;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda6;->f$2:Lorg/telegram/tgnet/TLRPC$TL_account_verifyPhone;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->$r8$lambda$wQ0txCw0HJCXZxrUyBZZHA5iszQ(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_account_verifyPhone;)V

    return-void
.end method
