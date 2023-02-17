.class public final Lcom/smedialink/domain/contacts/ContactSelectAction$OpenActionMode;
.super Lcom/smedialink/domain/contacts/ContactSelectAction;
.source "ContactSelectAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/domain/contacts/ContactSelectAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenActionMode"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/domain/contacts/ContactSelectAction$OpenActionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/domain/contacts/ContactSelectAction$OpenActionMode;

    invoke-direct {v0}, Lcom/smedialink/domain/contacts/ContactSelectAction$OpenActionMode;-><init>()V

    sput-object v0, Lcom/smedialink/domain/contacts/ContactSelectAction$OpenActionMode;->INSTANCE:Lcom/smedialink/domain/contacts/ContactSelectAction$OpenActionMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/smedialink/domain/contacts/ContactSelectAction;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
