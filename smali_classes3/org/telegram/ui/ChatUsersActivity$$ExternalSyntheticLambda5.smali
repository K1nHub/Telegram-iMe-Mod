.class public final synthetic Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatUsersActivity;

.field public final synthetic f$1:[Ljava/lang/CharSequence;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$6:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatUsersActivity;[Ljava/lang/CharSequence;JLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/ChatUsersActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda5;->f$1:[Ljava/lang/CharSequence;

    iput-wide p3, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda5;->f$2:J

    iput-object p5, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda5;->f$3:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iput-object p6, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda5;->f$4:Ljava/lang/String;

    iput-object p7, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda5;->f$5:Lorg/telegram/tgnet/TLObject;

    iput-object p8, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda5;->f$6:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/ChatUsersActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda5;->f$1:[Ljava/lang/CharSequence;

    iget-wide v2, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda5;->f$2:J

    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda5;->f$3:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda5;->f$4:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda5;->f$5:Lorg/telegram/tgnet/TLObject;

    iget-object v7, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda5;->f$6:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-object v8, p1

    move v9, p2

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/ChatUsersActivity;->$r8$lambda$zX4QURUlTSB-4sCE8P550u64opY(Lorg/telegram/ui/ChatUsersActivity;[Ljava/lang/CharSequence;JLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Landroid/content/DialogInterface;I)V

    return-void
.end method
