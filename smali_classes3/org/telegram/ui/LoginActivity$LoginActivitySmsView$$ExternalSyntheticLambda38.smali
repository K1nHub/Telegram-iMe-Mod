.class public final synthetic Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda38;->f$0:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda38;->f$1:Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda38;->f$0:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda38;->f$1:Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->$r8$lambda$kc-Jsqd4IOjw7EetE7WQrzZySTg(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
