.class public final synthetic Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/StickersActivity$ListAdapter;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/StickersActivity$ListAdapter;[ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iput-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda1;->f$1:[I

    iput-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda1;->f$1:[I

    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->$r8$lambda$M-tm84UjchjM5GxUIVBc0vE_uKU(Lorg/telegram/ui/StickersActivity$ListAdapter;[ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Landroid/content/DialogInterface;I)V

    return-void
.end method
