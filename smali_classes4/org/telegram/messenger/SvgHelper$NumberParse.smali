.class Lorg/telegram/messenger/SvgHelper$NumberParse;
.super Ljava/lang/Object;
.source "SvgHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/SvgHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumberParse"
.end annotation


# instance fields
.field private nextCmd:I

.field private numbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;I)V"
        }
    .end annotation

    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    iput-object p1, p0, Lorg/telegram/messenger/SvgHelper$NumberParse;->numbers:Ljava/util/ArrayList;

    .line 992
    iput p2, p0, Lorg/telegram/messenger/SvgHelper$NumberParse;->nextCmd:I

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;
    .locals 0

    .line 986
    iget-object p0, p0, Lorg/telegram/messenger/SvgHelper$NumberParse;->numbers:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public getNextCmd()I
    .locals 1

    .line 996
    iget v0, p0, Lorg/telegram/messenger/SvgHelper$NumberParse;->nextCmd:I

    return v0
.end method

.method public getNumber(I)F
    .locals 1

    .line 1000
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method
