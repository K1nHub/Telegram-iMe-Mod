.class public final synthetic Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatUsersActivity;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

.field public final synthetic f$5:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Z

.field public final synthetic f$8:Ljava/util/ArrayList;

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatUsersActivity;JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZLjava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/ChatUsersActivity;

    iput-wide p2, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;->f$1:J

    iput p4, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;->f$2:I

    iput-object p5, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;->f$3:Lorg/telegram/tgnet/TLObject;

    iput-object p6, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;->f$4:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iput-object p7, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;->f$5:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iput-object p8, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;->f$6:Ljava/lang/String;

    iput-boolean p9, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;->f$7:Z

    iput-object p10, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;->f$8:Ljava/util/ArrayList;

    iput p11, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;->f$9:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/ChatUsersActivity;

    iget-wide v1, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;->f$1:J

    iget v3, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;->f$2:I

    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;->f$3:Lorg/telegram/tgnet/TLObject;

    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;->f$4:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;->f$5:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-object v7, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;->f$6:Ljava/lang/String;

    iget-boolean v8, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;->f$7:Z

    iget-object v9, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;->f$8:Ljava/util/ArrayList;

    iget v10, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;->f$9:I

    move-object v11, p1

    move v12, p2

    invoke-static/range {v0 .. v12}, Lorg/telegram/ui/ChatUsersActivity;->$r8$lambda$bVoAEhAewT3EKW6_FCSpyQF0u9I(Lorg/telegram/ui/ChatUsersActivity;JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/DialogInterface;I)V

    return-void
.end method
