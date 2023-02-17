.class public final synthetic Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$1:Lorg/telegram/tgnet/ResultCallback;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/tgnet/TLObject;

    iput-object p2, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/ResultCallback;

    iput-object p3, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-boolean p4, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda5;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/tgnet/TLObject;

    iget-object v1, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/ResultCallback;

    iget-object v2, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-boolean v3, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda5;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/ChatThemeController;->$r8$lambda$dTQBW7BW7EtxUYBozdH0Yob1pO0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V

    return-void
.end method
