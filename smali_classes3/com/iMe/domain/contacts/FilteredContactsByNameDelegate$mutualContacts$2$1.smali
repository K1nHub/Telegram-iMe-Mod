.class final Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$mutualContacts$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FilteredContactsByNameDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$mutualContacts$2;->invoke()Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/tgnet/TLRPC$TL_contact;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$mutualContacts$2$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$mutualContacts$2$1;

    invoke-direct {v0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$mutualContacts$2$1;-><init>()V

    sput-object v0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$mutualContacts$2$1;->INSTANCE:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$mutualContacts$2$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/telegram/tgnet/TLRPC$TL_contact;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contact;->mutual:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-virtual {p0, p1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$mutualContacts$2$1;->invoke(Lorg/telegram/tgnet/TLRPC$TL_contact;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
