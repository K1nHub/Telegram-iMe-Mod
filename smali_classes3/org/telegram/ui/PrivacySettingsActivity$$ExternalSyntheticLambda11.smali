.class public final synthetic Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PrivacySettingsActivity;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/PrivacySettingsActivity;

    iput-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p3, p0, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/tgnet/TLObject;

    iput-object p4, p0, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda11;->f$3:Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/PrivacySettingsActivity;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/tgnet/TLObject;

    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda11;->f$3:Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/PrivacySettingsActivity;->$r8$lambda$lDYN46mGz5fKHCzMAVuZApOmR6E(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;)V

    return-void
.end method
