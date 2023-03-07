.class public final synthetic Lorg/telegram/ui/DialogsActivity$41$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity$41;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$Dialog;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity$41;ILorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$41$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/DialogsActivity$41;

    iput p2, p0, Lorg/telegram/ui/DialogsActivity$41$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$41$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/tgnet/TLRPC$Dialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$41$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/DialogsActivity$41;

    iget v1, p0, Lorg/telegram/ui/DialogsActivity$41$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$41$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/tgnet/TLRPC$Dialog;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/DialogsActivity$41;->$r8$lambda$uQbtmRJUWd1XVUG9H8nbe3WEklg(Lorg/telegram/ui/DialogsActivity$41;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    return-void
.end method
