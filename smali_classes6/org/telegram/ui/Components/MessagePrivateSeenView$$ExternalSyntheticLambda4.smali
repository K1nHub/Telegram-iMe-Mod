.class public final synthetic Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$1:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/BottomSheet;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p2, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iput-object p3, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/ui/ActionBar/BottomSheet;

    iput-object p4, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda4;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda4;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->$r8$lambda$D7o9k_mg0bwHGZaf-2sGm0NX7-U(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V

    return-void
.end method
