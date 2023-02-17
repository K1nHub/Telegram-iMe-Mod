.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda123;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda123;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda123;->f$1:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda123;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda123;->f$3:Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    return-void
.end method


# virtual methods
.method public final didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda123;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda123;->f$1:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda123;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda123;->f$3:Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$DK7edy754c00XCnlgz0Mh-w2Sdc(Lorg/telegram/ui/LaunchActivity;Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z

    move-result p1

    return p1
.end method
