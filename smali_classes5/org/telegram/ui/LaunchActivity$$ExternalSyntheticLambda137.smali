.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda137;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda137;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda137;->f$1:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda137;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda137;->f$1:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$VG4flyzLZCwfDncCb6bUCgNoCss(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
