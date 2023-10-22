.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda33;->f$0:Lorg/telegram/ui/ProfileActivity;

    iput-wide p2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda33;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda33;->f$0:Lorg/telegram/ui/ProfileActivity;

    iget-wide v1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda33;->f$1:J

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$_Wuh7EUo2D6WKCtkmSqzPJ8O5iw(Lorg/telegram/ui/ProfileActivity;JLorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;)V

    return-void
.end method
