.class public final Lcom/smedialink/domain/contacts/ContactSelectAction$CloseActionMode;
.super Lcom/smedialink/domain/contacts/ContactSelectAction;
.source "ContactSelectAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/domain/contacts/ContactSelectAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CloseActionMode"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/domain/contacts/ContactSelectAction$CloseActionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/domain/contacts/ContactSelectAction$CloseActionMode;

    invoke-direct {v0}, Lcom/smedialink/domain/contacts/ContactSelectAction$CloseActionMode;-><init>()V

    sput-object v0, Lcom/smedialink/domain/contacts/ContactSelectAction$CloseActionMode;->INSTANCE:Lcom/smedialink/domain/contacts/ContactSelectAction$CloseActionMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/smedialink/domain/contacts/ContactSelectAction;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
