.class public Lorg/telegram/ui/Components/GroupCreateSpan;
.super Landroid/view/View;
.source "GroupCreateSpan.java"


# static fields
.field private static backPaint:Landroid/graphics/Paint;

.field private static textPaint:Landroid/text/TextPaint;


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private colors:[I

.field private currentContact:Lorg/telegram/messenger/ContactsController$Contact;

.field private deleteDrawable:Landroid/graphics/drawable/Drawable;

.field private deleting:Z

.field private drawAvatarBackground:Z

.field private encryptedChatId:J

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private key:Ljava/lang/String;

.field private lastUpdateTime:J

.field private nameLayout:Landroid/text/StaticLayout;

.field private progress:F

.field private rect:Landroid/graphics/RectF;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private small:Z

.field private textWidth:I

.field private textX:F

.field private uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/messenger/ContactsController$Contact;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/messenger/ContactsController$Contact;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 97
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/messenger/ContactsController$Contact;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/messenger/ContactsController$Contact;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    .line 101
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->rect:Landroid/graphics/RectF;

    const/16 v5, 0x8

    new-array v6, v5, [I

    .line 79
    iput-object v6, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    const/4 v6, 0x1

    .line 82
    iput-boolean v6, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->drawAvatarBackground:Z

    .line 102
    iput-object v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 103
    iput-boolean v3, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    .line 105
    iput-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->currentContact:Lorg/telegram/messenger/ContactsController$Contact;

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->delete:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    sget-object v7, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    if-eqz v3, :cond_0

    const/16 v8, 0xd

    goto :goto_0

    :cond_0
    const/16 v8, 0xe

    :goto_0
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 114
    new-instance v7, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v7}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v8, 0x14

    .line 115
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 117
    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/16 v8, 0xa

    const/16 v9, 0xc

    const/4 v10, 0x2

    const/4 v11, 0x4

    const v12, 0x3f4ccccd    # 0.8f

    const/16 v13, 0x20

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-eqz v7, :cond_1

    .line 120
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 121
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 122
    check-cast v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 123
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v4, v2

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v4

    iput-wide v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->encryptedChatId:J

    .line 124
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object/from16 v16, v15

    move-object/from16 v22, v16

    goto/16 :goto_7

    .line 126
    :cond_1
    instance-of v7, v1, Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 129
    check-cast v1, Ljava/lang/String;

    .line 130
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v7, 0x7

    const/4 v12, 0x6

    const/4 v2, 0x5

    sparse-switch v4, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v4, "channels"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v6, 0x3

    goto :goto_3

    :sswitch_1
    const-string v4, "muted"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v6, v2

    goto :goto_3

    :sswitch_2
    const-string v4, "read"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v6, v12

    goto :goto_3

    :sswitch_3
    const-string v4, "bots"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v6, v11

    goto :goto_3

    :sswitch_4
    const-string v4, "contacts"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v6, v14

    goto :goto_3

    :sswitch_5
    const-string v4, "non_contacts"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :sswitch_6
    const-string v4, "groups"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v6, v10

    goto :goto_3

    :sswitch_7
    const-string v4, "archived"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v6, v7

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v6, -0x1

    :goto_3
    packed-switch v6, :pswitch_data_0

    .line 169
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v1, -0x7ffffffffffffff9L    # -3.5E-323

    .line 170
    iput-wide v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 171
    sget v1, Lorg/telegram/messenger/R$string;->FilterArchived:I

    const-string v2, "FilterArchived"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 163
    :pswitch_0
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v1, -0x7ffffffffffffffaL    # -3.0E-323

    .line 164
    iput-wide v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 165
    sget v1, Lorg/telegram/messenger/R$string;->FilterRead:I

    const-string v2, "FilterRead"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 158
    :pswitch_1
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v1, -0x7ffffffffffffffbL    # -2.5E-323

    .line 159
    iput-wide v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 160
    sget v1, Lorg/telegram/messenger/R$string;->FilterMuted:I

    const-string v2, "FilterMuted"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 153
    :pswitch_2
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v1, -0x7ffffffffffffffcL    # -2.0E-323

    .line 154
    iput-wide v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 155
    sget v1, Lorg/telegram/messenger/R$string;->FilterBots:I

    const-string v2, "FilterBots"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 148
    :pswitch_3
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v1, -0x7ffffffffffffffdL    # -1.5E-323

    .line 149
    iput-wide v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 150
    sget v1, Lorg/telegram/messenger/R$string;->FilterChannels:I

    const-string v2, "FilterChannels"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 143
    :pswitch_4
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v1, -0x7ffffffffffffffeL    # -1.0E-323

    .line 144
    iput-wide v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 145
    sget v1, Lorg/telegram/messenger/R$string;->FilterGroups:I

    const-string v2, "FilterGroups"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 138
    :pswitch_5
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 139
    iput-wide v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 140
    sget v1, Lorg/telegram/messenger/R$string;->FilterNonContacts:I

    const-string v2, "FilterNonContacts"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 133
    :pswitch_6
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide/high16 v1, -0x8000000000000000L

    .line 134
    iput-wide v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 135
    sget v1, Lorg/telegram/messenger/R$string;->FilterContacts:I

    const-string v2, "FilterContacts"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 174
    :cond_3
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_7

    .line 175
    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    .line 176
    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 177
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 178
    sget v1, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    const-string v2, "RepliesTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 179
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 180
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    :goto_4
    move-object v2, v15

    goto :goto_5

    .line 183
    :cond_4
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 184
    sget v1, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v2, "SavedMessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 185
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 186
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_4

    .line 190
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 191
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_6

    .line 194
    invoke-virtual {v2, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 196
    :cond_6
    invoke-static {v1, v6}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    move-object v15, v4

    move-object/from16 v24, v2

    move-object v2, v1

    move-object/from16 v1, v24

    :goto_5
    move-object/from16 v22, v2

    move-object/from16 v16, v15

    goto/16 :goto_7

    .line 199
    :cond_7
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_a

    .line 200
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 201
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/ChatObject;->isTemplatesChat(IJ)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 204
    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 205
    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_6

    .line 207
    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 208
    :goto_6
    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v4, v4

    iput-wide v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 209
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 210
    invoke-static {v1, v6}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    if-eqz v2, :cond_9

    .line 214
    sget v1, Lorg/telegram/messenger/R$string;->chat_templates:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_9
    move-object v2, v1

    move-object v1, v4

    move-object v15, v5

    goto :goto_5

    .line 219
    :cond_a
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    if-eqz v5, :cond_b

    .line 220
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    .line 221
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->iso2:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getLanguageFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 222
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    .line 223
    iget-object v5, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 224
    iget-object v5, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v6, 0x18

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 225
    iget-object v5, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-wide/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v21}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v5, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v6, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    const v6, 0x3f333333    # 0.7f

    invoke-static {v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    .line 227
    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iput-boolean v14, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->drawAvatarBackground:Z

    invoke-virtual {v4, v14}, Lorg/telegram/ui/Components/AvatarDrawable;->setDrawAvatarBackground(Z)V

    .line 228
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    move-object v1, v2

    goto/16 :goto_1

    .line 232
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-wide/16 v4, 0x0

    iget-object v6, v2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object v7, v2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v6, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 233
    iget v1, v2, Lorg/telegram/messenger/ContactsController$Contact;->contact_id:I

    int-to-long v4, v1

    iput-wide v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 234
    iget-object v1, v2, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->key:Ljava/lang/String;

    .line 235
    iget-object v1, v2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 236
    iget-object v1, v2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    goto/16 :goto_1

    .line 238
    :cond_c
    iget-object v1, v2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    goto/16 :goto_1

    .line 244
    :goto_7
    new-instance v2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v2}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/16 v4, 0x10

    .line 245
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 246
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 247
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-boolean v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->drawAvatarBackground:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_d

    move v4, v5

    goto :goto_8

    :cond_d
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    :goto_8
    const/16 v6, 0x1c

    if-eqz v3, :cond_e

    move v7, v6

    goto :goto_9

    :cond_e
    move v7, v13

    :goto_9
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    if-eqz v3, :cond_f

    move v11, v6

    goto :goto_a

    :cond_f
    move v11, v13

    :goto_a
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v2, v4, v5, v7, v11}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 250
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v3, :cond_10

    goto :goto_b

    :cond_10
    move v6, v13

    :goto_b
    rsub-int v2, v6, 0x212

    add-int/lit8 v2, v2, -0x12

    add-int/lit8 v2, v2, -0x72

    .line 251
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    div-int/2addr v2, v10

    goto :goto_d

    .line 253
    :cond_11
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eqz v3, :cond_12

    goto :goto_c

    :cond_12
    move v6, v13

    :goto_c
    add-int/lit8 v6, v6, 0x12

    add-int/lit8 v6, v6, 0x72

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v10

    .line 256
    :goto_d
    invoke-virtual {v1, v8, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 258
    sget-object v3, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1, v3, v4, v14}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 259
    sget-object v3, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    int-to-float v2, v2

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v3, v2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 260
    new-instance v1, Landroid/text/StaticLayout;

    sget-object v7, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    const/16 v8, 0x3e8

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->nameLayout:Landroid/text/StaticLayout;

    .line 261
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_13

    .line 262
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v14}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->textWidth:I

    .line 263
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v14}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v1

    neg-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->textX:F

    .line 265
    :cond_13
    iget-object v15, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x1

    const-string v17, "50_50"

    move-object/from16 v18, v1

    invoke-virtual/range {v15 .. v23}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/GroupCreateSpan;->updateColors()V

    .line 268
    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x664cc81e -> :sswitch_7
        -0x49c2262c -> :sswitch_6
        -0x4760427b -> :sswitch_5
        -0x21d29fad -> :sswitch_4
        0x2e3b8c -> :sswitch_3
        0x355996 -> :sswitch_2
        0x636f16b -> :sswitch_1
        0x556423d0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/ContactsController$Contact;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/messenger/ContactsController$Contact;)V

    return-void
.end method


# virtual methods
.method public cancelDeleteAnimation()V
    .locals 2

    .line 301
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->lastUpdateTime:J

    .line 306
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getContact()Lorg/telegram/messenger/ContactsController$Contact;
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->currentContact:Lorg/telegram/messenger/ContactsController$Contact;

    return-object v0
.end method

.method public getDialogId()J
    .locals 4

    .line 57
    iget-wide v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->encryptedChatId:J

    :cond_0
    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 310
    iget-wide v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    return-wide v0
.end method

.method public isDeleting()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 328
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_1

    :cond_0
    if-nez v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_6

    .line 329
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 330
    iget-wide v5, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->lastUpdateTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    const-wide/16 v5, 0x11

    if-ltz v0, :cond_2

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    :cond_2
    move-wide v3, v5

    .line 334
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    const/high16 v5, 0x42f00000    # 120.0f

    if-eqz v0, :cond_4

    .line 335
    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    long-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 337
    iput v1, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    goto :goto_0

    .line 340
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    long-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 342
    iput v2, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    .line 345
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 347
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 348
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget-boolean v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    const/16 v5, 0x20

    if-eqz v4, :cond_7

    const/16 v4, 0x1c

    goto :goto_1

    :cond_7
    move v4, v5

    :goto_1
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 349
    sget-object v0, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    const/4 v4, 0x6

    aget v6, v3, v4

    const/4 v7, 0x7

    aget v7, v3, v7

    aget v8, v3, v4

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    const/4 v7, 0x0

    aget v9, v3, v7

    const/4 v10, 0x1

    aget v10, v3, v10

    aget v7, v3, v7

    sub-int/2addr v10, v7

    int-to-float v7, v10

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v9, v7

    const/4 v7, 0x2

    aget v10, v3, v7

    const/4 v11, 0x3

    aget v11, v3, v11

    aget v7, v3, v7

    sub-int/2addr v11, v7

    int-to-float v7, v11

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v10, v7

    const/4 v7, 0x4

    aget v11, v3, v7

    const/4 v12, 0x5

    aget v12, v3, v12

    aget v3, v3, v7

    sub-int/2addr v12, v3

    int-to-float v3, v12

    mul-float/2addr v3, v8

    float-to-int v3, v3

    add-int/2addr v11, v3

    invoke-static {v6, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->rect:Landroid/graphics/RectF;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    const/16 v6, 0xe

    const/16 v7, 0x10

    if-eqz v3, :cond_8

    move v3, v6

    goto :goto_2

    :cond_8
    move v3, v7

    :goto_2
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-boolean v8, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    if-eqz v8, :cond_9

    move v8, v6

    goto :goto_3

    :cond_9
    move v8, v7

    :goto_3
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sget-object v9, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 351
    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 354
    :cond_a
    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    cmpl-float v0, v0, v2

    const/16 v2, 0x9

    if-eqz v0, :cond_12

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor()I

    move-result v0

    .line 356
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v3, v8

    .line 357
    sget-object v9, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    sget-object v0, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    iget v9, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    mul-float/2addr v9, v8

    mul-float/2addr v9, v3

    float-to-int v3, v9

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 359
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    if-eqz v0, :cond_b

    move v0, v6

    goto :goto_4

    :cond_b
    move v0, v7

    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget-boolean v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    if-eqz v3, :cond_c

    move v3, v6

    goto :goto_5

    :cond_c
    move v3, v7

    :goto_5
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-boolean v9, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    if-eqz v9, :cond_d

    goto :goto_6

    :cond_d
    move v6, v7

    :goto_6
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sget-object v9, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v6, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 360
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x42340000    # 45.0f

    .line 361
    iget v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v0, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 362
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    const/16 v3, 0xb

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_7

    :cond_e
    move v1, v3

    :goto_7
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget-boolean v6, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    if-eqz v6, :cond_f

    move v3, v2

    :cond_f
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget-boolean v6, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    const/16 v7, 0x13

    const/16 v9, 0x15

    if-eqz v6, :cond_10

    move v6, v7

    goto :goto_8

    :cond_10
    move v6, v9

    :goto_8
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iget-boolean v10, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    if-eqz v10, :cond_11

    goto :goto_9

    :cond_11
    move v7, v9

    :goto_9
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v0, v1, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    mul-float/2addr v1, v8

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 365
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 367
    :cond_12
    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->textX:F

    iget-boolean v1, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    if-eqz v1, :cond_13

    const/16 v5, 0x1a

    :cond_13
    add-int/2addr v5, v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    if-eqz v1, :cond_14

    goto :goto_a

    :cond_14
    const/16 v4, 0x8

    :goto_a
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 368
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanText:I

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 369
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 370
    sget-object v2, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    invoke-static {v0, v1, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 373
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 378
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 380
    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupCreateSpan;->isDeleting()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 381
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v1

    sget v2, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v3, "Delete"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 323
    iget-boolean p1, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    const/16 p2, 0x20

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    add-int/lit8 p1, p1, 0x19

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->textWidth:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    if-eqz v0, :cond_1

    const/16 p2, 0x1c

    :cond_1
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public startDeleteAnimation()V
    .locals 2

    .line 292
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->lastUpdateTime:J

    .line 297
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateColors()V
    .locals 6

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor()I

    move-result v0

    .line 273
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanBackground:I

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 274
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanDelete:I

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    .line 275
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 276
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 277
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    const/4 v5, 0x2

    aput v4, v3, v5

    .line 278
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    const/4 v5, 0x3

    aput v4, v3, v5

    .line 279
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/4 v5, 0x4

    aput v4, v3, v5

    .line 280
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/4 v5, 0x5

    aput v4, v3, v5

    .line 281
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    const/4 v5, 0x6

    aput v4, v3, v5

    .line 282
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/4 v4, 0x7

    aput v0, v3, v4

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 284
    sget-object v0, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
