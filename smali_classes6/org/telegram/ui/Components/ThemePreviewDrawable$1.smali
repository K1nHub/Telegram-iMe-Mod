.class Lorg/telegram/ui/Components/ThemePreviewDrawable$1;
.super Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
.source "ThemePreviewDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ThemePreviewDrawable;->createPreview(Ljava/io/File;Lorg/telegram/messenger/DocumentObject$ThemeDocument;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$colors:Ljava/util/HashMap;


# direct methods
.method constructor <init>(IZZLjava/util/HashMap;)V
    .locals 0

    .line 77
    iput-object p4, p0, Lorg/telegram/ui/Components/ThemePreviewDrawable$1;->val$colors:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZ)V

    return-void
.end method


# virtual methods
.method protected getColor(Ljava/lang/String;)I
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemePreviewDrawable$1;->val$colors:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 82
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected getCurrentColor(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemePreviewDrawable$1;->val$colors:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method
