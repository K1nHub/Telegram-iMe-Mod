.class public final synthetic Lorg/telegram/ui/TopicsNotifySettingsFragments$2$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/TopicsNotifySettingsFragments$2$1;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/TopicsNotifySettingsFragments$2$1;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/TopicsNotifySettingsFragments$2$1;

    iput-object p2, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2$1$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/TopicsNotifySettingsFragments$2$1;

    iget-object v1, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2$1$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-static {v0, v1}, Lorg/telegram/ui/TopicsNotifySettingsFragments$2$1;->$r8$lambda$8xSBIXuopCN56H2zXFe7SliHsm4(Lorg/telegram/ui/TopicsNotifySettingsFragments$2$1;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    return-void
.end method
