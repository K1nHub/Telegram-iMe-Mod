.class public final synthetic Lorg/telegram/ui/ActionBar/Theme$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lorg/telegram/tgnet/TLRPC$Document;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;Ljava/io/File;IZZLorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$$ExternalSyntheticLambda6;->f$1:Ljava/io/File;

    iput p3, p0, Lorg/telegram/ui/ActionBar/Theme$$ExternalSyntheticLambda6;->f$2:I

    iput-boolean p4, p0, Lorg/telegram/ui/ActionBar/Theme$$ExternalSyntheticLambda6;->f$3:Z

    iput-boolean p5, p0, Lorg/telegram/ui/ActionBar/Theme$$ExternalSyntheticLambda6;->f$4:Z

    iput-object p6, p0, Lorg/telegram/ui/ActionBar/Theme$$ExternalSyntheticLambda6;->f$5:Lorg/telegram/tgnet/TLRPC$Document;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$$ExternalSyntheticLambda6;->f$1:Ljava/io/File;

    iget v2, p0, Lorg/telegram/ui/ActionBar/Theme$$ExternalSyntheticLambda6;->f$2:I

    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/Theme$$ExternalSyntheticLambda6;->f$3:Z

    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/Theme$$ExternalSyntheticLambda6;->f$4:Z

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/Theme$$ExternalSyntheticLambda6;->f$5:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/Theme;->$r8$lambda$qI4HVrywypVzDu-KVTACl1pBOUg(Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;Ljava/io/File;IZZLorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method
