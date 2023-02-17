.class public final synthetic Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ManageLinksActivity;

.field public final synthetic f$1:Lorg/telegram/ui/Components/LinkActionView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda39;->f$0:Lorg/telegram/ui/ManageLinksActivity;

    iput-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda39;->f$1:Lorg/telegram/ui/Components/LinkActionView;

    return-void
.end method


# virtual methods
.method public final didSelectContact(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda39;->f$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda39;->f$1:Lorg/telegram/ui/Components/LinkActionView;

    invoke-static {v0, v1, p1, p2, p3}, Lorg/telegram/ui/ManageLinksActivity;->$r8$lambda$nHUQl00JNSrpDHxth8sx3585eAM(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V

    return-void
.end method
