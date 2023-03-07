.class public final synthetic Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/fork/utils/Callbacks$Callback2;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ManageLinksActivity;

.field public final synthetic f$1:Lorg/telegram/ui/Components/LinkActionView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/ui/ManageLinksActivity;

    iput-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda26;->f$1:Lorg/telegram/ui/Components/LinkActionView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda26;->f$1:Lorg/telegram/ui/Components/LinkActionView;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->$r8$lambda$9NwjXqJTwbOcGVUkDsgAW5Y_5Sk(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V

    return-void
.end method
