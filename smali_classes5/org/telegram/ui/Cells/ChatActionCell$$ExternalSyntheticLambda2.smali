.class public final synthetic Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Cells/ChatActionCell;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Cells/ChatActionCell;

    iput-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;

    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->$r8$lambda$7nPE1gVc3KYVfpoQrfh6V3hbySY(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;)V

    return-void
.end method
