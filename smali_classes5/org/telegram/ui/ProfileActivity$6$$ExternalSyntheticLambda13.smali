.class public final synthetic Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/MessagesStorage$BooleanCallback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity$6;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity$6;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/ProfileActivity$6;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda13;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method


# virtual methods
.method public final run(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/ProfileActivity$6;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda13;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ProfileActivity$6;->$r8$lambda$lR_5sAWhMND4EbVBCrrZBg6I2zI(Lorg/telegram/ui/ProfileActivity$6;Lorg/telegram/tgnet/TLRPC$User;Z)V

    return-void
.end method
