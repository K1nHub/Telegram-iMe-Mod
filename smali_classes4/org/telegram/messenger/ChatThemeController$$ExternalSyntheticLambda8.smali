.class public final synthetic Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ChatThemeController;

.field public final synthetic f$1:Lorg/telegram/tgnet/ResultCallback;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/ResultCallback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/messenger/ChatThemeController;

    iput-object p2, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda8;->f$1:Lorg/telegram/tgnet/ResultCallback;

    iput-boolean p3, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda8;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/messenger/ChatThemeController;

    iget-object v1, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda8;->f$1:Lorg/telegram/tgnet/ResultCallback;

    iget-boolean v2, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda8;->f$2:Z

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/messenger/ChatThemeController;->$r8$lambda$wDZEW-mLKlZOV8TVXGBVQOwsIsI(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/ResultCallback;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
