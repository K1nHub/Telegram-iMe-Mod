.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatParticipant;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iput p3, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda10;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda10;->f$3:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p5, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda10;->f$4:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iput-boolean p6, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda10;->f$5:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda10;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda10;->f$3:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda10;->f$4:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-boolean v5, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda10;->f$5:Z

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$0qT3I-UDqBhsNxRuIvHNivMJFYg(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatParticipant;ZLandroid/content/DialogInterface;I)V

    return-void
.end method
