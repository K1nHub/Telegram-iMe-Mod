.class public Lorg/telegram/ui/Components/Paint/PaintTypeface;
.super Ljava/lang/Object;
.source "PaintTypeface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;,
        Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;,
        Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;
    }
.end annotation


# static fields
.field private static final BUILT_IN_FONTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Paint/PaintTypeface;",
            ">;"
        }
    .end annotation
.end field

.field public static final COURIER_NEW_BOLD:Lorg/telegram/ui/Components/Paint/PaintTypeface;

.field public static final MW_BOLD:Lorg/telegram/ui/Components/Paint/PaintTypeface;

.field public static final ROBOTO_ITALIC:Lorg/telegram/ui/Components/Paint/PaintTypeface;

.field public static final ROBOTO_MEDIUM:Lorg/telegram/ui/Components/Paint/PaintTypeface;

.field public static final ROBOTO_MONO:Lorg/telegram/ui/Components/Paint/PaintTypeface;

.field public static final ROBOTO_SERIF:Lorg/telegram/ui/Components/Paint/PaintTypeface;

.field private static final preferable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static typefaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Paint/PaintTypeface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final key:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final nameKey:Ljava/lang/String;

.field private final typeface:Landroid/graphics/Typeface;


# direct methods
.method public static synthetic $r8$lambda$oBva-KbQcQDz-GmgeQhjgQmPn6s(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->lambda$fetched$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 32
    new-instance v0, Lorg/telegram/ui/Components/Paint/PaintTypeface;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    const-string v2, "roboto"

    const-string v3, "PhotoEditorTypefaceRoboto"

    invoke-direct {v0, v2, v3, v1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V

    sput-object v0, Lorg/telegram/ui/Components/Paint/PaintTypeface;->ROBOTO_MEDIUM:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 33
    new-instance v1, Lorg/telegram/ui/Components/Paint/PaintTypeface;

    const-string v2, "fonts/rmediumitalic.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    const-string v3, "italic"

    const-string v4, "PhotoEditorTypefaceItalic"

    invoke-direct {v1, v3, v4, v2}, Lorg/telegram/ui/Components/Paint/PaintTypeface;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V

    sput-object v1, Lorg/telegram/ui/Components/Paint/PaintTypeface;->ROBOTO_ITALIC:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 34
    new-instance v2, Lorg/telegram/ui/Components/Paint/PaintTypeface;

    const-string v3, "serif"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    const-string v6, "PhotoEditorTypefaceSerif"

    invoke-direct {v2, v3, v6, v5}, Lorg/telegram/ui/Components/Paint/PaintTypeface;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V

    sput-object v2, Lorg/telegram/ui/Components/Paint/PaintTypeface;->ROBOTO_SERIF:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 35
    new-instance v3, Lorg/telegram/ui/Components/Paint/PaintTypeface;

    const-string v5, "fonts/rmono.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    const-string v6, "mono"

    const-string v7, "PhotoEditorTypefaceMono"

    invoke-direct {v3, v6, v7, v5}, Lorg/telegram/ui/Components/Paint/PaintTypeface;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V

    sput-object v3, Lorg/telegram/ui/Components/Paint/PaintTypeface;->ROBOTO_MONO:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 36
    new-instance v5, Lorg/telegram/ui/Components/Paint/PaintTypeface;

    const-string v6, "fonts/mw_bold.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    const-string v7, "mw_bold"

    const-string v8, "PhotoEditorTypefaceMerriweather"

    invoke-direct {v5, v7, v8, v6}, Lorg/telegram/ui/Components/Paint/PaintTypeface;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V

    sput-object v5, Lorg/telegram/ui/Components/Paint/PaintTypeface;->MW_BOLD:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 37
    new-instance v6, Lorg/telegram/ui/Components/Paint/PaintTypeface;

    const-string v7, "fonts/courier_new_bold.ttf"

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    const-string v8, "courier_new_bold"

    const-string v9, "PhotoEditorTypefaceCourierNew"

    invoke-direct {v6, v8, v9, v7}, Lorg/telegram/ui/Components/Paint/PaintTypeface;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V

    sput-object v6, Lorg/telegram/ui/Components/Paint/PaintTypeface;->COURIER_NEW_BOLD:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    const/4 v7, 0x6

    new-array v7, v7, [Lorg/telegram/ui/Components/Paint/PaintTypeface;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    aput-object v1, v7, v4

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v5, v7, v0

    const/4 v0, 0x5

    aput-object v6, v7, v0

    .line 39
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/Paint/PaintTypeface;->BUILT_IN_FONTS:Ljava/util/List;

    const-string v1, "Google Sans"

    const-string v2, "Dancing Script"

    const-string v3, "Carrois Gothic SC"

    const-string v4, "Cutive Mono"

    const-string v5, "Droid Sans Mono"

    const-string v6, "Coming Soon"

    .line 41
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/Paint/PaintTypeface;->preferable:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/graphics/fonts/Font;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface;->key:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface;->name:Ljava/lang/String;

    const/4 p2, 0x0

    .line 69
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface;->nameKey:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface;->typeface:Landroid/graphics/Typeface;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface;->key:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface;->nameKey:Ljava/lang/String;

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface;->name:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface;->typeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public static fetched(Ljava/lang/Runnable;)Z
    .locals 2

    .line 169
    sget-object v0, Lorg/telegram/ui/Components/Paint/PaintTypeface;->typefaces:Ljava/util/List;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/Paint/PaintTypeface$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/PaintTypeface$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static find(Ljava/lang/String;)Lorg/telegram/ui/Components/Paint/PaintTypeface;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 153
    :cond_0
    sget-object v1, Lorg/telegram/ui/Components/Paint/PaintTypeface;->typefaces:Ljava/util/List;

    if-nez v1, :cond_1

    .line 154
    invoke-static {}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->get()Ljava/util/List;

    .line 156
    :cond_1
    sget-object v1, Lorg/telegram/ui/Components/Paint/PaintTypeface;->typefaces:Ljava/util/List;

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const/4 v1, 0x0

    .line 159
    :goto_0
    sget-object v2, Lorg/telegram/ui/Components/Paint/PaintTypeface;->typefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 160
    sget-object v2, Lorg/telegram/ui/Components/Paint/PaintTypeface;->typefaces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Paint/PaintTypeface;

    if-eqz v2, :cond_3

    .line 161
    iget-object v3, v2, Lorg/telegram/ui/Components/Paint/PaintTypeface;->key:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static get()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Paint/PaintTypeface;",
            ">;"
        }
    .end annotation

    .line 107
    sget-object v0, Lorg/telegram/ui/Components/Paint/PaintTypeface;->typefaces:Ljava/util/List;

    if-nez v0, :cond_5

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/ui/Components/Paint/PaintTypeface;->BUILT_IN_FONTS:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/telegram/ui/Components/Paint/PaintTypeface;->typefaces:Ljava/util/List;

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_5

    .line 110
    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getAvailableFonts()Ljava/util/Set;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 113
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/fonts/Font;

    .line 115
    invoke-virtual {v2}, Landroid/graphics/fonts/Font;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Noto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->parseFont(Landroid/graphics/fonts/Font;)Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 119
    iget-object v3, v2, Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;->family:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;

    if-nez v3, :cond_2

    .line 121
    new-instance v3, Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;

    invoke-direct {v3}, Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;-><init>()V

    .line 122
    iget-object v4, v2, Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;->family:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_2
    iget-object v3, v3, Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_3
    sget-object v0, Lorg/telegram/ui/Components/Paint/PaintTypeface;->preferable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 137
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;

    if-eqz v2, :cond_4

    .line 139
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;->getRegular()Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;

    move-result-object v2

    .line 140
    sget-object v3, Lorg/telegram/ui/Components/Paint/PaintTypeface;->typefaces:Ljava/util/List;

    new-instance v4, Lorg/telegram/ui/Components/Paint/PaintTypeface;

    iget-object v5, v2, Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;->font:Landroid/graphics/fonts/Font;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lorg/telegram/ui/Components/Paint/PaintTypeface;-><init>(Landroid/graphics/fonts/Font;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    :cond_5
    sget-object v0, Lorg/telegram/ui/Components/Paint/PaintTypeface;->typefaces:Ljava/util/List;

    return-object v0
.end method

.method private static synthetic lambda$fetched$0(Ljava/lang/Runnable;)V
    .locals 0

    .line 173
    invoke-static {}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->get()Ljava/util/List;

    .line 174
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static parseFont(Landroid/graphics/fonts/Font;)Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 254
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 260
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/high16 v3, 0x10000

    if-eq v1, v3, :cond_2

    const v3, 0x4f54544f    # 3.56229504E9f

    if-eq v1, v3, :cond_2

    .line 296
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    .line 265
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v1

    const/4 v3, 0x6

    .line 266
    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_5

    .line 268
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    const/4 v6, 0x4

    .line 269
    invoke-virtual {v2, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 270
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    .line 271
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    const v7, 0x6e616d65

    if-ne v5, v7, :cond_4

    add-int/lit8 v1, v6, 0x2

    int-to-long v4, v1

    .line 274
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 275
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v1

    .line 276
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v4

    .line 278
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :goto_1
    if-ge v3, v1, :cond_3

    .line 280
    new-instance v7, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;

    invoke-direct {v7, v2}, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;-><init>(Ljava/io/RandomAccessFile;)V

    .line 281
    iget v8, v7, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;->nameID:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 284
    :cond_3
    new-instance v1, Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;-><init>()V

    .line 285
    iput-object p0, v1, Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;->font:Landroid/graphics/fonts/Font;

    add-int/2addr v6, v4

    const/4 p0, 0x1

    .line 286
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;

    invoke-static {v2, v6, p0}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->parseString(Ljava/io/RandomAccessFile;ILorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;->family:Ljava/lang/String;

    const/4 p0, 0x2

    .line 287
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;

    invoke-static {v2, v6, p0}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->parseString(Ljava/io/RandomAccessFile;ILorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;->subfamily:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 296
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_3
    move-exception p0

    move-object v2, v0

    .line 292
    :goto_3
    :try_start_6
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_6

    goto :goto_2

    :catch_4
    :cond_6
    :goto_4
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v2

    :goto_5
    if-eqz v0, :cond_7

    .line 296
    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 299
    :catch_5
    :cond_7
    throw p0
.end method

.method private static parseString(Ljava/io/RandomAccessFile;ILorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 246
    :cond_0
    invoke-virtual {p2, p0, p1}, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;->read(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface;->nameKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method
