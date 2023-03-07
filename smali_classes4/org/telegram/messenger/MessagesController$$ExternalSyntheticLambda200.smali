.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda200;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$WallPaper;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;

.field public final synthetic f$3:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

.field public final synthetic f$4:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda200;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda200;->f$1:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda200;->f$2:Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda200;->f$3:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda200;->f$4:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda200;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda200;->f$1:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda200;->f$2:Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda200;->f$3:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda200;->f$4:Ljava/io/File;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$P-LE1neioseP-zAwio639j0Cz50(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;Ljava/io/File;)V

    return-void
.end method
