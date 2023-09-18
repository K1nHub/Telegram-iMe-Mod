.class public final synthetic Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/LocationController$SharingLocationInfo;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iput-wide p2, p0, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda17;->f$1:J

    return-void
.end method


# virtual methods
.method public final didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iget-wide v1, p0, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda17;->f$1:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/FragmentContextView;->$r8$lambda$5Y7LVb0Z0rfGYoyXrqMeBaVYRlw(Lorg/telegram/messenger/LocationController$SharingLocationInfo;JLorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    return-void
.end method
