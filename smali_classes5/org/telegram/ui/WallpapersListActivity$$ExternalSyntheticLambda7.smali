.class public final synthetic Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/WallpapersListActivity;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/WallpapersListActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/WallpapersListActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda7;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/WallpapersListActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda7;->f$1:Z

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/WallpapersListActivity;->$r8$lambda$ZW0sDZ7P7occjmvt3iXTmJJtas4(Lorg/telegram/ui/WallpapersListActivity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
