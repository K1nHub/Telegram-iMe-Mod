.class public final synthetic Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ChatThemeController;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$UserFull;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ChatThemeController;JLorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/ChatThemeController;

    iput-wide p2, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda2;->f$1:J

    iput-object p4, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/tgnet/TLRPC$UserFull;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/ChatThemeController;

    iget-wide v1, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda2;->f$1:J

    iget-object v3, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/tgnet/TLRPC$UserFull;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/ChatThemeController;->$r8$lambda$W1tql313nKKINV91lDWrvlnR4Bw(Lorg/telegram/messenger/ChatThemeController;JLorg/telegram/tgnet/TLRPC$UserFull;)V

    return-void
.end method
