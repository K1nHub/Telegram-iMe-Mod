.class public final synthetic Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;

    iput-object p2, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->$r8$lambda$DbrFQ7zYY3muPlpickD3CcTriLw(Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
