.class Lorg/telegram/ui/StatisticActivity$MemberData$1;
.super Lorg/telegram/ui/ChatRightsEditActivity;
.source "StatisticActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StatisticActivity$MemberData;->lambda$onLongClick$4(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;ZLorg/telegram/ui/StatisticActivity;Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/StatisticActivity$MemberData;

.field final synthetic val$fragment:Lorg/telegram/ui/StatisticActivity;

.field final synthetic val$needShowBulletin:[Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/StatisticActivity$MemberData;JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;[ZLorg/telegram/ui/StatisticActivity;)V
    .locals 14

    move-object v13, p0

    move-object v0, p1

    .line 3200
    iput-object v0, v13, Lorg/telegram/ui/StatisticActivity$MemberData$1;->this$0:Lorg/telegram/ui/StatisticActivity$MemberData;

    move-object/from16 v0, p14

    iput-object v0, v13, Lorg/telegram/ui/StatisticActivity$MemberData$1;->val$needShowBulletin:[Z

    move-object/from16 v0, p15

    iput-object v0, v13, Lorg/telegram/ui/StatisticActivity$MemberData$1;->val$fragment:Lorg/telegram/ui/StatisticActivity;

    move-object v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/ChatRightsEditActivity;-><init>(JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 3203
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$MemberData$1;->val$needShowBulletin:[Z

    const/4 p2, 0x0

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$MemberData$1;->val$fragment:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3204
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$MemberData$1;->val$fragment:Lorg/telegram/ui/StatisticActivity;

    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$MemberData$1;->this$0:Lorg/telegram/ui/StatisticActivity$MemberData;

    iget-object p2, p2, Lorg/telegram/ui/StatisticActivity$MemberData;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createPromoteToAdminBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method
