.class public final synthetic Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/NotificationsSettingsFacade;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/NotificationsSettingsFacade;JILorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/NotificationsSettingsFacade;

    iput-wide p2, p0, Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda1;->f$1:J

    iput p4, p0, Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda1;->f$2:I

    iput-object p5, p0, Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda1;->f$3:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/NotificationsSettingsFacade;

    iget-wide v1, p0, Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda1;->f$1:J

    iget v3, p0, Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda1;->f$2:I

    iget-object v4, p0, Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda1;->f$3:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/NotificationsSettingsFacade;->$r8$lambda$eyeQRAl4LpRS2PUwsewVxfMxooc(Lorg/telegram/messenger/NotificationsSettingsFacade;JILorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V

    return-void
.end method
