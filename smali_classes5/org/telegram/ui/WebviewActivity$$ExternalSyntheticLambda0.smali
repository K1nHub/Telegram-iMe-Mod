.class public final synthetic Lorg/telegram/ui/WebviewActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/WebviewActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/WebviewActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/WebviewActivity$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/WebviewActivity;

    iput-object p2, p0, Lorg/telegram/ui/WebviewActivity$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/WebviewActivity;

    iget-object v1, p0, Lorg/telegram/ui/WebviewActivity$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v1}, Lorg/telegram/ui/WebviewActivity;->$r8$lambda$fj2g_zd-lmFb2c1sx_HpUVeMo_c(Lorg/telegram/ui/WebviewActivity;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method
