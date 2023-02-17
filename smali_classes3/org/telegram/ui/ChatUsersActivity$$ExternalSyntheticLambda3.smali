.class public final synthetic Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatUsersActivity;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$3:J

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$6:I

.field public final synthetic f$7:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

.field public final synthetic f$8:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;JZLorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/ChatUsersActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/tgnet/TLRPC$User;

    iput-wide p4, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;->f$3:J

    iput-boolean p6, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;->f$4:Z

    iput-object p7, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;->f$5:Lorg/telegram/tgnet/TLObject;

    iput p8, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;->f$6:I

    iput-object p9, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;->f$7:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iput-object p10, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;->f$8:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iput-object p11, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;->f$9:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/ChatUsersActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;->f$3:J

    iget-boolean v5, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;->f$4:Z

    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;->f$5:Lorg/telegram/tgnet/TLObject;

    iget v7, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;->f$6:I

    iget-object v8, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;->f$7:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-object v9, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;->f$8:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-object v10, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;->f$9:Ljava/lang/String;

    move-object v11, p1

    move v12, p2

    invoke-static/range {v0 .. v12}, Lorg/telegram/ui/ChatUsersActivity;->$r8$lambda$yzxnLK9ZKgqo3tgVPuwlJD53TQk(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;JZLorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
