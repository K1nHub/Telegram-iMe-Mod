.class public final synthetic Lorg/telegram/ui/ManageLinksActivity$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ManageLinksActivity$3;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ManageLinksActivity$3;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$3$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ManageLinksActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$3$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$3$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ManageLinksActivity$3;

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$3$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0, v1}, Lorg/telegram/ui/ManageLinksActivity$3;->$r8$lambda$NOpiLEQu_YAF2Pt3bm5lOAn9htI(Lorg/telegram/ui/ManageLinksActivity$3;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method
