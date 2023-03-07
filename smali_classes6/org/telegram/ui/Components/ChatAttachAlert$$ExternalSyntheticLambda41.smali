.class public final synthetic Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda41;->f$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-void
.end method


# virtual methods
.method public final didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda41;->f$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->$r8$lambda$L7lWxmb5pcT6eqSeuXMIYxLrkro(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    return-void
.end method
