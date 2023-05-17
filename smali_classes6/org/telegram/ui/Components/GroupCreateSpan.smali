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

.field private encryptedChatId:J

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private key:Ljava/lang/String;

.field private lastUpdateTime:J

.field private nameLayout:Landroid/text/StaticLayout;

.field private progress:F

.field private rect:Landroid/graphics/RectF;

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

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/messenger/ContactsController$Contact;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/messenger/ContactsController$Contact;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 90
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->rect:Landroid/graphics/RectF;

    const/16 v3, 0x8

    new-array v4, v3, [I

    .line 79
    iput-object v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    .line 92
    iput-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->currentContact:Lorg/telegram/messenger/ContactsController$Contact;

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->delete:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    sget-object v4, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    const/16 v5, 0xe

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 101
    new-instance v4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v5, 0x14

    .line 102
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 104
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/16 v5, 0xa

    const/16 v6, 0xc

    const/4 v7, 0x2

    const/4 v8, 0x0

    const v9, 0x3f4ccccd    # 0.8f

    const/4 v10, 0x0

    if-eqz v4, :cond_0

    .line 107
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 108
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 109
    check-cast v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 110
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->encryptedChatId:J

    .line 111
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object/from16 v16, v10

    goto/16 :goto_6

    .line 113
    :cond_0
    instance-of v4, v1, Ljava/lang/String;

    const/4 v11, 0x1

    if-eqz v4, :cond_2

    .line 116
    check-cast v1, Ljava/lang/String;

    .line 117
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    const/4 v2, -0x1

    .line 118
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v9, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "channels"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v11, 0x3

    goto :goto_2

    :sswitch_1
    const-string v4, "muted"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v11, v13

    goto :goto_2

    :sswitch_2
    const-string v4, "read"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v11, v12

    goto :goto_2

    :sswitch_3
    const-string v4, "bots"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v11, v14

    goto :goto_2

    :sswitch_4
    const-string v4, "contacts"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v11, v8

    goto :goto_2

    :sswitch_5
    const-string v4, "non_contacts"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :sswitch_6
    const-string v4, "groups"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v11, v7

    goto :goto_2

    :sswitch_7
    const-string v4, "archived"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v11, v9

    goto :goto_2

    :cond_1
    :goto_1
    move v11, v2

    :goto_2
    packed-switch v11, :pswitch_data_0

    .line 156
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v1, -0x7ffffffffffffff9L    # -3.5E-323

    .line 157
    iput-wide v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 158
    sget v1, Lorg/telegram/messenger/R$string;->FilterArchived:I

    const-string v2, "FilterArchived"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 150
    :pswitch_0
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v1, -0x7ffffffffffffffaL    # -3.0E-323

    .line 151
    iput-wide v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 152
    sget v1, Lorg/telegram/messenger/R$string;->FilterRead:I

    const-string v2, "FilterRead"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 145
    :pswitch_1
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v1, -0x7ffffffffffffffbL    # -2.5E-323

    .line 146
    iput-wide v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 147
    sget v1, Lorg/telegram/messenger/R$string;->FilterMuted:I

    const-string v2, "FilterMuted"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 140
    :pswitch_2
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v1, -0x7ffffffffffffffcL    # -2.0E-323

    .line 141
    iput-wide v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 142
    sget v1, Lorg/telegram/messenger/R$string;->FilterBots:I

    const-string v2, "FilterBots"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 135
    :pswitch_3
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v1, -0x7ffffffffffffffdL    # -1.5E-323

    .line 136
    iput-wide v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 137
    sget v1, Lorg/telegram/messenger/R$string;->FilterChannels:I

    const-string v2, "FilterChannels"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 130
    :pswitch_4
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v1, -0x7ffffffffffffffeL    # -1.0E-323

    .line 131
    iput-wide v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 132
    sget v1, Lorg/telegram/messenger/R$string;->FilterGroups:I

    const-string v2, "FilterGroups"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 125
    :pswitch_5
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 126
    iput-wide v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 127
    sget v1, Lorg/telegram/messenger/R$string;->FilterNonContacts:I

    const-string v2, "FilterNonContacts"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 120
    :pswitch_6
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v14}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide/high16 v1, -0x8000000000000000L

    .line 121
    iput-wide v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 122
    sget v1, Lorg/telegram/messenger/R$string;->FilterContacts:I

    const-string v2, "FilterContacts"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 161
    :cond_2
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_5

    .line 162
    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    .line 163
    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 164
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    sget v1, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    const-string v2, "RepliesTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 166
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 167
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    :goto_3
    move-object v2, v10

    goto :goto_4

    .line 170
    :cond_3
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 171
    sget v1, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v2, "SavedMessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 172
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 173
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_3

    .line 177
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 178
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-static {v1, v11}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    move-object v10, v3

    move-object/from16 v25, v2

    move-object v2, v1

    move-object/from16 v1, v25

    :goto_4
    move-object/from16 v16, v2

    goto :goto_6

    .line 182
    :cond_5
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_8

    .line 183
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 184
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/ChatObject;->isTemplatesChat(IJ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 187
    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 188
    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_5

    .line 190
    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 191
    :goto_5
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v3, v3

    iput-wide v3, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 192
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 193
    invoke-static {v1, v11}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    if-eqz v2, :cond_7

    .line 197
    sget v1, Lorg/telegram/messenger/R$string;->chat_templates:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    move-object v2, v1

    move-object v1, v3

    move-object v10, v4

    goto :goto_4

    .line 203
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-wide/16 v3, 0x0

    iget-object v9, v2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object v11, v2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v9, v11}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 204
    iget v1, v2, Lorg/telegram/messenger/ContactsController$Contact;->contact_id:I

    int-to-long v3, v1

    iput-wide v3, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    .line 205
    iget-object v1, v2, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->key:Ljava/lang/String;

    .line 206
    iget-object v1, v2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 207
    iget-object v1, v2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    goto/16 :goto_0

    .line 209
    :cond_9
    iget-object v1, v2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    goto/16 :goto_0

    .line 215
    :goto_6
    new-instance v2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v2}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/16 v3, 0x10

    .line 216
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 217
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 218
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/16 v3, 0x20

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    const/4 v11, 0x0

    invoke-virtual {v2, v11, v11, v4, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 221
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0x16e

    .line 222
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    div-int/2addr v2, v7

    goto :goto_7

    .line 224
    :cond_a
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v4, 0xa4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v2, v4

    div-int/2addr v2, v7

    .line 227
    :goto_7
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 229
    sget-object v3, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1, v3, v4, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 230
    sget-object v3, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    int-to-float v2, v2

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v3, v2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 231
    new-instance v1, Landroid/text/StaticLayout;

    sget-object v19, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    const/16 v20, 0x3e8

    sget-object v21, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->nameLayout:Landroid/text/StaticLayout;

    .line 232
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_b

    .line 233
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->textWidth:I

    .line 234
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v1

    neg-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->textX:F

    .line 236
    :cond_b
    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v12, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x1

    const-string v11, "50_50"

    invoke-virtual/range {v9 .. v17}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/GroupCreateSpan;->updateColors()V

    .line 239
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

    .line 86
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/messenger/ContactsController$Contact;)V

    return-void
.end method


# virtual methods
.method public cancelDeleteAnimation()V
    .locals 2

    .line 272
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 275
    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->lastUpdateTime:J

    .line 277
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getContact()Lorg/telegram/messenger/ContactsController$Contact;
    .locals 1

    .line 289
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

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 281
    iget-wide v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    return-wide v0
.end method

.method public isDeleting()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 299
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

    .line 300
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 301
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

    .line 305
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    const/high16 v5, 0x42f00000    # 120.0f

    if-eqz v0, :cond_4

    .line 306
    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    long-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 308
    iput v1, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    goto :goto_0

    .line 311
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    long-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 313
    iput v2, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    .line 316
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 318
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x20

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 320
    sget-object v0, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    const/4 v4, 0x6

    aget v5, v3, v4

    const/4 v6, 0x7

    aget v6, v3, v6

    aget v4, v3, v4

    sub-int/2addr v6, v4

    int-to-float v4, v6

    iget v6, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v5, v4

    const/4 v4, 0x0

    aget v7, v3, v4

    const/4 v8, 0x1

    aget v8, v3, v8

    aget v4, v3, v4

    sub-int/2addr v8, v4

    int-to-float v4, v8

    mul-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v7, v4

    const/4 v4, 0x2

    aget v8, v3, v4

    const/4 v9, 0x3

    aget v9, v3, v9

    aget v4, v3, v4

    sub-int/2addr v9, v4

    int-to-float v4, v9

    mul-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v8, v4

    const/4 v4, 0x4

    aget v9, v3, v4

    const/4 v10, 0x5

    aget v10, v3, v10

    aget v3, v3, v4

    sub-int/2addr v10, v3

    int-to-float v3, v10

    mul-float/2addr v3, v6

    float-to-int v3, v3

    add-int/2addr v9, v3

    invoke-static {v5, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->rect:Landroid/graphics/RectF;

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 322
    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 325
    :cond_7
    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_8

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor()I

    move-result v0

    .line 327
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v2, v4

    .line 328
    sget-object v5, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    sget-object v0, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    iget v5, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    mul-float/2addr v5, v4

    mul-float/2addr v5, v2

    float-to-int v2, v5

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 330
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 331
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x42340000    # 45.0f

    .line 332
    iget v2, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 333
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xb

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v3, 0x15

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v1, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 336
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 338
    :cond_8
    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->textX:F

    const/16 v1, 0x29

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 339
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 340
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 341
    sget-object v2, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    invoke-static {v0, v1, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 343
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 344
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 349
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 351
    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupCreateSpan;->isDeleting()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 352
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
    .locals 0

    const/16 p1, 0x39

    .line 294
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->textWidth:I

    add-int/2addr p1, p2

    const/16 p2, 0x20

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public startDeleteAnimation()V
    .locals 2

    .line 263
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->lastUpdateTime:J

    .line 268
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateColors()V
    .locals 6

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor()I

    move-result v0

    .line 244
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 245
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanDelete:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 246
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 247
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 248
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    const/4 v5, 0x2

    aput v4, v3, v5

    .line 249
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    const/4 v5, 0x3

    aput v4, v3, v5

    .line 250
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/4 v5, 0x4

    aput v4, v3, v5

    .line 251
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/4 v5, 0x5

    aput v4, v3, v5

    .line 252
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    const/4 v5, 0x6

    aput v4, v3, v5

    .line 253
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/4 v4, 0x7

    aput v0, v3, v4

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 255
    sget-object v0, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
