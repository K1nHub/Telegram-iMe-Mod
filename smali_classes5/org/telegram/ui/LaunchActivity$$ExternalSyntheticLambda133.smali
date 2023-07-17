.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda133;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;


# instance fields
.field public final synthetic f$0:Ljava/util/HashMap;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda133;->f$0:Ljava/util/HashMap;

    iput p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda133;->f$1:I

    return-void
.end method


# virtual methods
.method public final didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda133;->f$0:Ljava/util/HashMap;

    iget v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda133;->f$1:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$uBMBtOVmWtHzJ0Wk1AXOXHbEI5g(Ljava/util/HashMap;ILorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    return-void
.end method
