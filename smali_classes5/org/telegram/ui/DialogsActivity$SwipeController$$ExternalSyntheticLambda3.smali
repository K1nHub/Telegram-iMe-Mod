.class public final synthetic Lorg/telegram/ui/DialogsActivity$SwipeController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity$SwipeController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Dialog;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity$SwipeController;Lorg/telegram/tgnet/TLRPC$Dialog;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/DialogsActivity$SwipeController;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/TLRPC$Dialog;

    iput p3, p0, Lorg/telegram/ui/DialogsActivity$SwipeController$$ExternalSyntheticLambda3;->f$2:I

    iput p4, p0, Lorg/telegram/ui/DialogsActivity$SwipeController$$ExternalSyntheticLambda3;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SwipeController$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/DialogsActivity$SwipeController;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$SwipeController$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget v2, p0, Lorg/telegram/ui/DialogsActivity$SwipeController$$ExternalSyntheticLambda3;->f$2:I

    iget v3, p0, Lorg/telegram/ui/DialogsActivity$SwipeController$$ExternalSyntheticLambda3;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/DialogsActivity$SwipeController;->$r8$lambda$YN1rNysZri5-Ghn1N-Hu2AXkNIo(Lorg/telegram/ui/DialogsActivity$SwipeController;Lorg/telegram/tgnet/TLRPC$Dialog;II)V

    return-void
.end method
