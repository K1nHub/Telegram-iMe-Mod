.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda30;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda30;->f$0:Ljava/util/ArrayList;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0, p1}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$ZGcGtyjsK-yjljJNs2TeoKoiVSg(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method
