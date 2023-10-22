.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda151;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>([IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda151;->f$0:[I

    iput-wide p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda151;->f$1:J

    return-void
.end method


# virtual methods
.method public final didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda151;->f$0:[I

    iget-wide v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda151;->f$1:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$gD0phbshVija9chWTyJbf8CwySk([IJLorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    return-void
.end method
