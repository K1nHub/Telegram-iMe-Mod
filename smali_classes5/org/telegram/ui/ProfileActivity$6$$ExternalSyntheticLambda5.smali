.class public final synthetic Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity$6;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity$6;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/ProfileActivity$6;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/ProfileActivity$6;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ProfileActivity$6;->$r8$lambda$CJUVCQR3mudvHyrTS6Q7qqsbtBI(Lorg/telegram/ui/ProfileActivity$6;Lorg/telegram/tgnet/TLRPC$User;Landroid/content/DialogInterface;I)V

    return-void
.end method
