.class Lorg/telegram/ui/SessionsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SessionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SessionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/SessionsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/SessionsActivity;Landroid/content/Context;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 754
    iput-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 755
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 766
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1300(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 7

    .line 903
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$000(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    const/4 v1, 0x1

    .line 906
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    .line 908
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    .line 904
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-ne p1, v0, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v6, p1, v5

    aput-object v6, p1, v1

    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    :goto_0
    int-to-long v0, p1

    return-wide v0

    .line 905
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1600(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v6, p1, v5

    aput-object v2, p1, v1

    .line 906
    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 907
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1700(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v6, p1, v5

    aput-object v4, p1, v1

    .line 908
    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 909
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1800(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v6, p1, v5

    const/4 v0, 0x3

    .line 910
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 911
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1900(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v6, p1, v5

    const/4 v0, 0x4

    .line 912
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 913
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$2000(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v6, p1, v5

    const/4 v0, 0x5

    .line 914
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 915
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$2100(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v6, p1, v5

    const/4 v0, 0x6

    .line 916
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 917
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$2200(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v6, p1, v5

    const/4 v0, 0x7

    .line 918
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 919
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$2300(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v6, p1, v5

    const/16 v0, 0x8

    .line 920
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 921
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$2400(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_9

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v6, p1, v5

    const/16 v0, 0x9

    .line 922
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 923
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$2500(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_a

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v6, p1, v5

    const/16 v0, 0xa

    .line 924
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 925
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1100(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_b

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v6, p1, v5

    const/16 v0, 0xb

    .line 926
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 927
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$700(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-lt p1, v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$800(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ge p1, v0, :cond_d

    .line 928
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$200(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v4}, Lorg/telegram/ui/SessionsActivity;->access$700(Lorg/telegram/ui/SessionsActivity;)I

    move-result v4

    sub-int/2addr p1, v4

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    .line 929
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    if-eqz v0, :cond_c

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v5

    .line 930
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->hash:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 931
    :cond_c
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;

    if-eqz v0, :cond_11

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v5

    .line 932
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->hash:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 934
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$900(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-lt p1, v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1000(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ge p1, v0, :cond_f

    .line 935
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$300(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SessionsActivity;->access$900(Lorg/telegram/ui/SessionsActivity;)I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    .line 936
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    if-eqz v0, :cond_e

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v4, v0, v5

    .line 937
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->hash:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 938
    :cond_e
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;

    if-eqz v0, :cond_11

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v4, v0, v5

    .line 939
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->hash:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 941
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1500(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_10

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v6, p1, v5

    const/16 v0, 0xc

    .line 942
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    .line 943
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1200(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_11

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v6, p1, v5

    const/16 v0, 0xd

    .line 944
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0

    :cond_11
    new-array p1, v3, [Ljava/lang/Object;

    aput-object v6, p1, v5

    const/4 v0, -0x1

    .line 946
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto/16 :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 951
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$000(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 953
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1600(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1700(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1800(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1900(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$2000(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$2100(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_2

    .line 955
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$2200(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$2300(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$2400(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$2500(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 957
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1100(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$700(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$800(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-lt p1, v0, :cond_7

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$900(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-lt p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1000(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ge p1, v0, :cond_4

    goto :goto_0

    .line 959
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1500(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    const/4 p1, 0x5

    return p1

    .line 961
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1200(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    const/4 p1, 0x6

    return p1

    :cond_6
    return v1

    :cond_7
    :goto_0
    const/4 p1, 0x4

    return p1

    :cond_8
    :goto_1
    const/4 p1, 0x2

    return p1

    :cond_9
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 760
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 761
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$000(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$700(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$800(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-lt p1, v0, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$900(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1000(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-lt p1, v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1100(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1200(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 802
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    const/4 v3, -0x1

    if-eq v0, v1, :cond_f

    const/4 v4, 0x2

    if-eq v0, v4, :cond_a

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1b

    const/4 v4, 0x6

    if-eq v0, v4, :cond_7

    .line 885
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/SessionCell;

    .line 886
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1100(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 887
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->access$2700(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/tgnet/TLRPC$TL_authorization;

    move-result-object p2

    if-nez p2, :cond_0

    .line 888
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->access$2800(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/SessionCell;->showStub(Lorg/telegram/ui/Components/FlickerLoadingView;)V

    goto/16 :goto_6

    .line 890
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->access$2700(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/tgnet/TLRPC$TL_authorization;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$200(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$300(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1500(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/SessionCell;->setSession(Lorg/telegram/tgnet/TLObject;Z)V

    goto/16 :goto_6

    .line 892
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$700(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-lt p2, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$800(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 893
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$200(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v3}, Lorg/telegram/ui/SessionsActivity;->access$700(Lorg/telegram/ui/SessionsActivity;)I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v3}, Lorg/telegram/ui/SessionsActivity;->access$800(Lorg/telegram/ui/SessionsActivity;)I

    move-result v3

    sub-int/2addr v3, v1

    if-eq p2, v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/SessionCell;->setSession(Lorg/telegram/tgnet/TLObject;Z)V

    goto/16 :goto_6

    .line 894
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$900(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-lt p2, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1000(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ge p2, v0, :cond_1b

    .line 895
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$300(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v3}, Lorg/telegram/ui/SessionsActivity;->access$900(Lorg/telegram/ui/SessionsActivity;)I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v3}, Lorg/telegram/ui/SessionsActivity;->access$1000(Lorg/telegram/ui/SessionsActivity;)I

    move-result v3

    sub-int/2addr v3, v1

    if-eq p2, v3, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/SessionCell;->setSession(Lorg/telegram/tgnet/TLObject;Z)V

    goto/16 :goto_6

    .line 872
    :cond_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 874
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->access$2600(Lorg/telegram/ui/SessionsActivity;)I

    move-result p2

    const/16 v0, 0x1e

    if-le p2, v0, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->access$2600(Lorg/telegram/ui/SessionsActivity;)I

    move-result p2

    const/16 v3, 0xb7

    if-gt p2, v3, :cond_8

    .line 875
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->access$2600(Lorg/telegram/ui/SessionsActivity;)I

    move-result p2

    div-int/2addr p2, v0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Months"

    invoke-static {v3, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 876
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->access$2600(Lorg/telegram/ui/SessionsActivity;)I

    move-result p2

    const/16 v0, 0x16d

    if-ne p2, v0, :cond_9

    .line 877
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->access$2600(Lorg/telegram/ui/SessionsActivity;)I

    move-result p2

    div-int/2addr p2, v0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Years"

    invoke-static {v3, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 879
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->access$2600(Lorg/telegram/ui/SessionsActivity;)I

    move-result p2

    div-int/lit8 p2, p2, 0x7

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Weeks"

    invoke-static {v3, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 881
    :goto_3
    sget v0, Lorg/telegram/messenger/R$string;->IfInactiveFor:I

    const-string v3, "IfInactiveFor"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_6

    .line 854
    :cond_a
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 855
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$2200(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_b

    .line 856
    sget p2, Lorg/telegram/messenger/R$string;->CurrentSession:I

    const-string v0, "CurrentSession"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 857
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$2300(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_d

    .line 858
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->access$1400(Lorg/telegram/ui/SessionsActivity;)I

    move-result p2

    if-nez p2, :cond_c

    .line 859
    sget p2, Lorg/telegram/messenger/R$string;->OtherSessions:I

    const-string v0, "OtherSessions"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 861
    :cond_c
    sget p2, Lorg/telegram/messenger/R$string;->OtherWebSessions:I

    const-string v0, "OtherWebSessions"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 863
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$2400(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_e

    .line 864
    sget p2, Lorg/telegram/messenger/R$string;->LoginAttempts:I

    const-string v0, "LoginAttempts"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 865
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$2500(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1b

    .line 866
    sget p2, Lorg/telegram/messenger/R$string;->TerminateOldSessionHeader:I

    const-string v0, "TerminateOldSessionHeader"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 820
    :cond_f
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 821
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 822
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1600(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_11

    .line 823
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->access$1400(Lorg/telegram/ui/SessionsActivity;)I

    move-result p2

    if-nez p2, :cond_10

    .line 824
    sget p2, Lorg/telegram/messenger/R$string;->ClearOtherSessionsHelp:I

    const-string v0, "ClearOtherSessionsHelp"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 826
    :cond_10
    sget p2, Lorg/telegram/messenger/R$string;->ClearOtherWebSessionsHelp:I

    const-string v0, "ClearOtherWebSessionsHelp"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 828
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 829
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1700(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    const-string v1, ""

    if-ne p2, v0, :cond_14

    .line 830
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->access$1400(Lorg/telegram/ui/SessionsActivity;)I

    move-result p2

    if-nez p2, :cond_13

    .line 831
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->access$200(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 832
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 834
    :cond_12
    sget p2, Lorg/telegram/messenger/R$string;->SessionsListInfo:I

    const-string v0, "SessionsListInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 837
    :cond_13
    sget p2, Lorg/telegram/messenger/R$string;->TerminateWebSessionInfo:I

    const-string v0, "TerminateWebSessionInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 839
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 840
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1800(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_16

    .line 841
    sget p2, Lorg/telegram/messenger/R$string;->LoginAttemptsInfo:I

    const-string v0, "LoginAttemptsInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 842
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->access$1700(Lorg/telegram/ui/SessionsActivity;)I

    move-result p2

    if-ne p2, v3, :cond_15

    .line 843
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 845
    :cond_15
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 847
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1900(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p2, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$2000(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-eq p2, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$2100(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1b

    .line 848
    :cond_17
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 849
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xc

    .line 850
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_6

    .line 804
    :cond_18
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    .line 805
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$000(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1a

    .line 806
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 807
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 808
    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p2}, Lorg/telegram/ui/SessionsActivity;->access$1400(Lorg/telegram/ui/SessionsActivity;)I

    move-result p2

    if-nez p2, :cond_19

    .line 809
    sget p2, Lorg/telegram/messenger/R$string;->TerminateAllSessions:I

    const-string v0, "TerminateAllSessions"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto :goto_6

    .line 811
    :cond_19
    sget p2, Lorg/telegram/messenger/R$string;->TerminateAllWebSessions:I

    const-string v0, "TerminateAllWebSessions"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto :goto_6

    .line 813
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1500(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1b

    .line 814
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 815
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 816
    sget p2, Lorg/telegram/messenger/R$string;->AuthAnotherClient:I

    const-string v0, "AuthAnotherClient"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SessionsActivity;->access$200(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    :cond_1b
    :goto_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    .line 793
    new-instance p1, Lorg/telegram/ui/Cells/SessionCell;

    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$1400(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/SessionCell;-><init>(Landroid/content/Context;I)V

    .line 794
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 788
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 789
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 785
    :cond_1
    new-instance p1, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;

    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SessionsActivity;

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/SessionsActivity$ScanQRCodeView;-><init>(Lorg/telegram/ui/SessionsActivity;Landroid/content/Context;)V

    goto :goto_0

    .line 781
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 782
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 778
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 774
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/SessionsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 775
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 797
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
