.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda68;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda68;->f$0:Lorg/telegram/ui/ProfileActivity;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda68;->f$0:Lorg/telegram/ui/ProfileActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    invoke-static {v0, p1}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$o9HDDpS6joxEJMDAEifKwyVEB0k(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    return-void
.end method
