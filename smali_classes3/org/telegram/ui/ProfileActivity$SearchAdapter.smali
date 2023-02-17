.class Lorg/telegram/ui/ProfileActivity$SearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;
    }
.end annotation


# instance fields
.field private faqSearchArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessagesController$FaqSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private faqSearchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessagesController$FaqSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private faqWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

.field private lastSearchString:Ljava/lang/String;

.field private loadingFaqPage:Z

.field private mContext:Landroid/content/Context;

.field private recentSearches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private resultNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private searchArray:[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

.field private searchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private searchRunnable:Ljava/lang/Runnable;

.field private searchWas:Z

.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method public static synthetic $r8$lambda$-IokNI204AFQAH5eaK1kjDzHPuY(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$48()V

    return-void
.end method

.method public static synthetic $r8$lambda$0WGf6lMQjxRE09KPoSGDSpiY2O0(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$106()V

    return-void
.end method

.method public static synthetic $r8$lambda$0a5_HDOXsUQBF7LnNwbmRwO7obw(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$0wPSFFw40pz2XbdbeoseduvVVHQ(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$113()V

    return-void
.end method

.method public static synthetic $r8$lambda$2CmertC2e7YAXo5LeiBvymk4H7E(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$91()V

    return-void
.end method

.method public static synthetic $r8$lambda$2HRePCh7VFFLIr8An6sK3nkyusk(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$62()V

    return-void
.end method

.method public static synthetic $r8$lambda$2UGnNrM-ilck5zSpeSMSOmjwHUc(Lorg/telegram/ui/ProfileActivity$SearchAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$search$129(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2yYXNvpI8Wf9BvQST9t4IP7YzEY(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$104()V

    return-void
.end method

.method public static synthetic $r8$lambda$30rAu40QfkW8X8RrxYRvWoDiqMc(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$101()V

    return-void
.end method

.method public static synthetic $r8$lambda$3tJaX5Wd0cWxBluMvXozCSGFlKE(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$28()V

    return-void
.end method

.method public static synthetic $r8$lambda$4ZRgJ_H-4-31tMqXhTG_-apOIPY(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$83()V

    return-void
.end method

.method public static synthetic $r8$lambda$5M4owZoLUTiWFGUWm5kXYYFuAgo(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$58()V

    return-void
.end method

.method public static synthetic $r8$lambda$5NEcpngr4RAqCv6Br1b_eX2lyb8(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$112()V

    return-void
.end method

.method public static synthetic $r8$lambda$6BkYhYgkVqU54GIXGOM5V07IJD0(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$30()V

    return-void
.end method

.method public static synthetic $r8$lambda$6DjN_eBI86eEPb0lelj8ciCZS4E(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$110()V

    return-void
.end method

.method public static synthetic $r8$lambda$6tUOJvl-bjQYBD4TvzmMl41vYVo(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$74()V

    return-void
.end method

.method public static synthetic $r8$lambda$9Q5gPWbP500eSmptU3z0aDKobvg(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$57()V

    return-void
.end method

.method public static synthetic $r8$lambda$9qL0FLEBKBTfqXEDLtkRzoVWwFI(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$86()V

    return-void
.end method

.method public static synthetic $r8$lambda$Az2NQ6ysnpH2DTK-SuFGMY3yWWE(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$39()V

    return-void
.end method

.method public static synthetic $r8$lambda$BcPyasSRkpKnrL5wMrZ6504bHfk(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$BehZnlJ9sgGUsJbWCx-isdPBLEg(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$CUX3-vsEHXXhvaoYA_vx2wEUen8(Lorg/telegram/ui/ProfileActivity$SearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$search$128(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ChqShW5lLoG4xkeviacxEBFknx8(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$42()V

    return-void
.end method

.method public static synthetic $r8$lambda$CoiNTZnZW4arWJJGSov__mMaXyo(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$115()V

    return-void
.end method

.method public static synthetic $r8$lambda$DBLu8Kcjf3F1mtq6GcMck3BycZw(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$116()V

    return-void
.end method

.method public static synthetic $r8$lambda$DVnQa5x9NGcvpIl0WBL0eebfG0o(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$EvlyFISDq5Uy1U4dmRcLXIzLTm8(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$92()V

    return-void
.end method

.method public static synthetic $r8$lambda$FCh0vDIDqpDYpArlVhUBr8wEjnM(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$100()V

    return-void
.end method

.method public static synthetic $r8$lambda$FeruwdtrucMa4alPTjAwXqqKcJs(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$54()V

    return-void
.end method

.method public static synthetic $r8$lambda$FoR5NxjUg4UrOJwSoblXQ1-nRHo(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$73()V

    return-void
.end method

.method public static synthetic $r8$lambda$HIjihmI9B9Oas0x13w7tkDXsR-E(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$HZeZkYnNdXHDQf-Bxme4vLO-CCc(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$99()V

    return-void
.end method

.method public static synthetic $r8$lambda$IpTR2gHzldVWLE17p1pzkrwG-es(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$122()V

    return-void
.end method

.method public static synthetic $r8$lambda$IvYgclBMTSJCNa0FNzAsamv35hk(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$IyVkY5JDXzTZP-WVOdnHk75GyKs(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$40()V

    return-void
.end method

.method public static synthetic $r8$lambda$JEtXkeiy9Z7N9-Xo08Fa-xWGPiw(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$81()V

    return-void
.end method

.method public static synthetic $r8$lambda$JTAh10b49smk-YGeqOr3NLEQaVo(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$JjPyjlgNZmFPOprZguWDbXxWn8M(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$32()V

    return-void
.end method

.method public static synthetic $r8$lambda$KTlYehMLaeJFslHYvx9JFD6TiqQ(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$68()V

    return-void
.end method

.method public static synthetic $r8$lambda$LHd6qOPjZSFl_0nq6fzDXwcRKHE(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$79()V

    return-void
.end method

.method public static synthetic $r8$lambda$LuKjJFYJzXJu_7Jpt85MPyv4I04(Lorg/telegram/ui/ProfileActivity$SearchAdapter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$loadFaqWebPage$127(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MTKJBzb_ITvTZVgnjGVtH0Y2D6Q(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$MvaVLpbxY1UQxSSGGKI12VZ-hsQ(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$N6sJ6UlHkqm1AbXhUedi3mgdQcw(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$33()V

    return-void
.end method

.method public static synthetic $r8$lambda$N8Ma5fjK2tEiT-2uyI-SJIKvwCM(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$51()V

    return-void
.end method

.method public static synthetic $r8$lambda$NA7e0fBdDO7iolU-3LV8k5-asuE(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$34()V

    return-void
.end method

.method public static synthetic $r8$lambda$NswZWQvFcwMOqd-J-IgqNw8brg0(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$109()V

    return-void
.end method

.method public static synthetic $r8$lambda$NzoWaXcm2GSUFOEBoYiPoHB_LvE(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$93()V

    return-void
.end method

.method public static synthetic $r8$lambda$O87Bhnhzw-1q2yoPP_BQicjp_8A(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$ODEoMaRDQV4irjInDLS7naQWuvY(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$118()V

    return-void
.end method

.method public static synthetic $r8$lambda$PV0Cqr680j3NyE5ZNpEQwxFatxs(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$Q06EOjw-i_-75_9up1V-Ln4wEAo(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$64()V

    return-void
.end method

.method public static synthetic $r8$lambda$RnUAIHedOLNJPdpbpdgQ9nJHDEY(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$38()V

    return-void
.end method

.method public static synthetic $r8$lambda$S374TNDMaE_8WV0wXbKmVpbX2QE(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$TGc-McjLmFYNi-pSWLPejdnkXVs(Lorg/telegram/ui/ProfileActivity$SearchAdapter;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$updateSearchArray$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TTX410rXikJiVqXwctCZKOfiaRw(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$43()V

    return-void
.end method

.method public static synthetic $r8$lambda$Tgb03nw9vQkMRSAWngBW5YeD0Zc(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$80()V

    return-void
.end method

.method public static synthetic $r8$lambda$Tqg_Rv1z1ZNO8kyKU7Cyhyo4eOQ(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$60()V

    return-void
.end method

.method public static synthetic $r8$lambda$UygbpsIDahn0arsV0_4IA_S89oc(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$41()V

    return-void
.end method

.method public static synthetic $r8$lambda$VLOqj1nhRLa-DEqCG8Iv3ry2Seo(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$55()V

    return-void
.end method

.method public static synthetic $r8$lambda$XH1BeRxMzGJQhbc7LuToEPZxB80(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$XTQwZYzttfnQ9n1Q6WOa60mfidM(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$Xr8FLyUTtyoPioBfFh3-T7sfJzs(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$53()V

    return-void
.end method

.method public static synthetic $r8$lambda$YSjXicgaab2SoBIP8H9Bi3s3Ym4(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$65()V

    return-void
.end method

.method public static synthetic $r8$lambda$YqlV3nnipFwrZhKBII18KWL3wOY(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$102()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z1NSWC-aFNZhS2zuA7bpvmV_RlY(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$67()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z9D1oWh6lXz_nIz39B3WqIDtLrg(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$87()V

    return-void
.end method

.method public static synthetic $r8$lambda$_jXx3N6Zqt43NDsCHQVtBthRQcc(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$70()V

    return-void
.end method

.method public static synthetic $r8$lambda$aHpTvYniLVQwRDPQ4g5RRkXHlbw(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$50()V

    return-void
.end method

.method public static synthetic $r8$lambda$aoR2w3ea4nBSzy4l9uUeMaWXncU(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$56()V

    return-void
.end method

.method public static synthetic $r8$lambda$auPkjCnhm0GhNgUYuzofI4H9wTY(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$125()V

    return-void
.end method

.method public static synthetic $r8$lambda$dONs2h2NVi18K6AtCE4mqAyIGbs(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$121()V

    return-void
.end method

.method public static synthetic $r8$lambda$dTdIc3oYJPiKJhGmLSv0pL9KGwE(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$69()V

    return-void
.end method

.method public static synthetic $r8$lambda$dbJLdTzyU4h5J0K1ntShND2vBjE(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$eGN7fQ_nT8Nj_XI8exGm4DPKb-U(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$103()V

    return-void
.end method

.method public static synthetic $r8$lambda$eIpFhBXPvBvzt4ViXCMMe9O8jiU(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$35()V

    return-void
.end method

.method public static synthetic $r8$lambda$ebIlqJ3m7ciIgC_8XE5NU7YlEZ4(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$fGrJ_jGR13HJqY4Vd8mxEP_o2qc(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$45()V

    return-void
.end method

.method public static synthetic $r8$lambda$fQiezbcII1iUdf9dW2ZjgrBFEqg(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$94()V

    return-void
.end method

.method public static synthetic $r8$lambda$fQvS95KC3r-tV9IqhFpJeuUwuUM(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$85()V

    return-void
.end method

.method public static synthetic $r8$lambda$f_WrJSb6pt3TNCTcMu__E2I3mGs(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$44()V

    return-void
.end method

.method public static synthetic $r8$lambda$fnNUyG8E__xfPMJDR5ii-WnrIdo(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$46()V

    return-void
.end method

.method public static synthetic $r8$lambda$gBvvm0qJjqWzVC-FTYyI6Ri5T8Q(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$76()V

    return-void
.end method

.method public static synthetic $r8$lambda$gaxYOAaUytqbVikMyaNkxLPGdtc(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$119()V

    return-void
.end method

.method public static synthetic $r8$lambda$gtpXKg3JaNgfUME0p6_K5_R5r6c(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$47()V

    return-void
.end method

.method public static synthetic $r8$lambda$gv_cK3sH625_voEjgMutmzZNEXM(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$95()V

    return-void
.end method

.method public static synthetic $r8$lambda$him5TLwREE1ygHiOMCkj6qVO0Zw(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$105()V

    return-void
.end method

.method public static synthetic $r8$lambda$icE2juJ2_cqdbM8BXXlhVimr5yQ(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$89()V

    return-void
.end method

.method public static synthetic $r8$lambda$j6cGpGBEXxVmxu21iRPtiDSmIps(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$jNCyE78S1dM_34y3YnVnX-JbBqQ(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$72()V

    return-void
.end method

.method public static synthetic $r8$lambda$jSD9662pXtDKALOrE2kE5MScdMQ(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$84()V

    return-void
.end method

.method public static synthetic $r8$lambda$jcW5Y5T96ZGI4NQt6SE0HkyiO1I(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$66()V

    return-void
.end method

.method public static synthetic $r8$lambda$k2XVcQWEjhfYqnZObwzI9GDXJjQ(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$123()V

    return-void
.end method

.method public static synthetic $r8$lambda$kxYVEgNj2pmw54ui6ziNTOzustE(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$61()V

    return-void
.end method

.method public static synthetic $r8$lambda$l89X-ycBxBGfIiBS_C4oCDkealM(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$29()V

    return-void
.end method

.method public static synthetic $r8$lambda$lmyIoOyL38Jqp1iIl_CNuxpvJ0Y(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$98()V

    return-void
.end method

.method public static synthetic $r8$lambda$mPZLkBZsDGpV2ncpB3PgsWmduk0(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$96()V

    return-void
.end method

.method public static synthetic $r8$lambda$mW-j0LzxJC13dWBuZniPdKy3SvY(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$117()V

    return-void
.end method

.method public static synthetic $r8$lambda$mv97EFbRiBYuumQiVAVneMJ-q5o(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$59()V

    return-void
.end method

.method public static synthetic $r8$lambda$n-2J6EfowpHj33966K4-duP1j4s(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$77()V

    return-void
.end method

.method public static synthetic $r8$lambda$nzUDvM6T05xdDCwed32zNWUYTLs(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$oTKdjRlR-QbQ53eIE2l-yzsdeLc(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$97()V

    return-void
.end method

.method public static synthetic $r8$lambda$o_je1jeWf2Q-eKTtedbZawWa5gk(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$ofSyeBqUSjPpZoNd4bmhI0i6AhM(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$71()V

    return-void
.end method

.method public static synthetic $r8$lambda$onYQq4ewCLQ69awqnYLRpthi2l0(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$p5gmq9ihHkIFcjDewyI2zBr_578(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$78()V

    return-void
.end method

.method public static synthetic $r8$lambda$pTT4HyXoW9D9sjz8L_dPxrFf4-4(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$piQU5hCy4uh5YLZNr8Qy-Y9wsss(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$pmhLz9ui0K1c4AEP4ye69jrt88Q(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$31()V

    return-void
.end method

.method public static synthetic $r8$lambda$pmqV9HLtv2chb9gAdeWA_CJHGnQ(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$120()V

    return-void
.end method

.method public static synthetic $r8$lambda$q6IwDb1k8uWryGJxYt5N3I-U4o4(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$124()V

    return-void
.end method

.method public static synthetic $r8$lambda$qSI9e9RsstZHoDXfNVngMR0xDoU(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$r578ig_T--Zikq8QxNpvBlMXqDs(Lorg/telegram/ui/ProfileActivity$SearchAdapter;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$loadFaqWebPage$126(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sAyA7w38IXlc2X_34ImnE7_c_hQ(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$36()V

    return-void
.end method

.method public static synthetic $r8$lambda$sCtl2yxa91fPztqJ18LswqbaDMc(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$108()V

    return-void
.end method

.method public static synthetic $r8$lambda$su7yoWiDB9mpYvGGDQ22wWikzT0(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$107()V

    return-void
.end method

.method public static synthetic $r8$lambda$tGC8-AWGd0Vt8LlIPshnBPUYvQw(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$52()V

    return-void
.end method

.method public static synthetic $r8$lambda$tHTdN14ZH66UkyH15CA_BrbXvlI(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$63()V

    return-void
.end method

.method public static synthetic $r8$lambda$tTn1TZ50ehM6lc_OoQ-MXUvZmO0(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$114()V

    return-void
.end method

.method public static synthetic $r8$lambda$tadnxgv5Du3ilReeurWqbgP-9yw(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$111()V

    return-void
.end method

.method public static synthetic $r8$lambda$td5RX0_fef3pS8bWFcwMqmt9IC4(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$88()V

    return-void
.end method

.method public static synthetic $r8$lambda$tj5pXZfbH4oYJ5qMhzqt_NDm0hI(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$82()V

    return-void
.end method

.method public static synthetic $r8$lambda$vpuduLOXUv_0bsiQ0kWkRfrcyMI(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$37()V

    return-void
.end method

.method public static synthetic $r8$lambda$whNcePeTkicfRYL6vBt7cnj2zr0(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$75()V

    return-void
.end method

.method public static synthetic $r8$lambda$xMlW9O8E8kc6C_35mAVzqcNkRTE(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$90()V

    return-void
.end method

.method public static synthetic $r8$lambda$xovLYid0l4uNmwvRbgpEUcNKmFE(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$49()V

    return-void
.end method

.method public static synthetic $r8$lambda$y3Ll3_fn06Nz9v7ybsHXkk3KCRs(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$5(Lorg/telegram/ui/ProfileActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yl80Bb5_bPR6YTYItQ6xbqv4MVI(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$z53b_LEgD-DKt01pH1gi_0oZsts(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$zk6CS1WC6U6qsVhDhsqC5W0gyVI(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lambda$onCreateSearchArray$11()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 0

    .line 10224
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 10210
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->onCreateSearchArray()[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchArray:[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    .line 10211
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchArray:Ljava/util/ArrayList;

    .line 10214
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->resultNames:Ljava/util/ArrayList;

    .line 10215
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    .line 10216
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchResults:Ljava/util/ArrayList;

    .line 10217
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    .line 10225
    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->mContext:Landroid/content/Context;

    .line 10227
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->updateSearchArray()V

    return-void
.end method

.method static synthetic access$15100(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    .line 10149
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->loadFaqWebPage()V

    return-void
.end method

.method static synthetic access$20502(Lorg/telegram/ui/ProfileActivity$SearchAdapter;[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;)[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;
    .locals 0

    .line 10149
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchArray:[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    return-object p1
.end method

.method static synthetic access$20600(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;
    .locals 0

    .line 10149
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->onCreateSearchArray()[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$20700(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 10149
    iget-object p0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$20800(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V
    .locals 0

    .line 10149
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->updateSearchArray()V

    return-void
.end method

.method static synthetic access$20900(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)Ljava/lang/String;
    .locals 0

    .line 10149
    iget-object p0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lastSearchString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$32500(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)Z
    .locals 0

    .line 10149
    iget-boolean p0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchWas:Z

    return p0
.end method

.method static synthetic access$32600(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 10149
    iget-object p0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$32700(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 10149
    iget-object p0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchResults:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$32800(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 10149
    iget-object p0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$33000(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;
    .locals 0

    .line 10149
    iget-object p0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    return-object p0
.end method

.method private getNum(Ljava/lang/Object;)I
    .locals 1

    .line 10667
    instance-of v0, p1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    if-eqz v0, :cond_0

    .line 10668
    check-cast p1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->access$31700(Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;)I

    move-result p1

    return p1

    .line 10669
    :cond_0
    instance-of v0, p1, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    if-eqz v0, :cond_1

    .line 10670
    check-cast p1, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    iget p1, p1, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->num:I

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isPremiumFeatureAvailable(I)Z
    .locals 4

    .line 10450
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    return v0

    .line 10457
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->premiumFeaturesTypesToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private synthetic lambda$loadFaqWebPage$126(Ljava/util/ArrayList;)V
    .locals 1

    .line 10514
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10515
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iput-object p1, v0, Lorg/telegram/messenger/MessagesController;->faqSearchArray:Ljava/util/ArrayList;

    .line 10516
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object v0, p1, Lorg/telegram/messenger/MessagesController;->faqWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 10517
    iget-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchWas:Z

    if-nez p1, :cond_0

    .line 10518
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadFaqWebPage$127(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 13

    .line 10473
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$WebPage;

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 10474
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 10475
    check-cast p1, Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 10476
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v1, :cond_7

    .line 10477
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    .line 10478
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 10479
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 10482
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 10483
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    if-eqz v6, :cond_0

    .line 10484
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    .line 10485
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10488
    :cond_0
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    .line 10489
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_5

    .line 10490
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$PageListItem;

    .line 10491
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;

    if-eqz v8, :cond_3

    .line 10492
    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;

    .line 10493
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v8}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v8

    .line 10494
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v7}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 10495
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_3

    :cond_1
    const-string v9, "SettingsSearchFaq"

    const/4 v10, 0x1

    if-eqz v4, :cond_2

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    .line 10500
    sget v12, Lorg/telegram/messenger/R$string;->SettingsSearchFaq:I

    invoke-static {v9, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v11, v0

    aput-object v4, v11, v10

    goto :goto_2

    :cond_2
    new-array v11, v10, [Ljava/lang/String;

    .line 10502
    sget v10, Lorg/telegram/messenger/R$string;->SettingsSearchFaq:I

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v11, v0

    .line 10504
    :goto_2
    new-instance v9, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    invoke-direct {v9, v7, v11, v8}, Lorg/telegram/messenger/MessagesController$FaqSearchResult;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 10507
    :cond_4
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 10511
    :cond_6
    :goto_4
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 10513
    :cond_7
    new-instance p1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda126;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda126;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;Ljava/util/ArrayList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 10522
    :cond_8
    iput-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->loadingFaqPage:Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$1()V
    .locals 3

    .line 10285
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ChangeNameActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$5500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ChangeNameActivity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$10()V
    .locals 2

    .line 10310
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$100()V
    .locals 4

    .line 10416
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/StickersActivity;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$101()V
    .locals 4

    .line 10417
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/StickersActivity;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$102()V
    .locals 4

    .line 10418
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/StickersActivity;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$103()V
    .locals 2

    .line 10419
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    invoke-direct {v1}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$104()V
    .locals 2

    .line 10421
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/FiltersSetupActivity;

    invoke-direct {v1}, Lorg/telegram/ui/FiltersSetupActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$105()V
    .locals 2

    .line 10422
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/FiltersSetupActivity;

    invoke-direct {v1}, Lorg/telegram/ui/FiltersSetupActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$106()V
    .locals 3

    .line 10424
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v2, "settings"

    invoke-direct {v1, v2}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$107()V
    .locals 4

    .line 10425
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$108()V
    .locals 5

    .line 10426
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$109()V
    .locals 5

    .line 10427
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$11()V
    .locals 2

    .line 10311
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$110()V
    .locals 5

    .line 10428
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$111()V
    .locals 5

    .line 10429
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$112()V
    .locals 5

    .line 10430
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$113()V
    .locals 5

    .line 10431
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$114()V
    .locals 5

    .line 10432
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$115()V
    .locals 5

    .line 10433
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$116()V
    .locals 5

    .line 10434
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$117()V
    .locals 5

    .line 10435
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$118()V
    .locals 5

    .line 10436
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$119()V
    .locals 5

    .line 10437
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$12()V
    .locals 2

    .line 10312
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$120()V
    .locals 2

    .line 10439
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {v1}, Lorg/telegram/ui/LanguageSelectActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$121()V
    .locals 2

    .line 10440
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {v1}, Lorg/telegram/ui/LanguageSelectActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$122()V
    .locals 2

    .line 10441
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {v1}, Lorg/telegram/ui/LanguageSelectActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$123()V
    .locals 2

    .line 10443
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->createSupportAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$124()V
    .locals 3

    .line 10444
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->TelegramFaqUrl:I

    const-string v2, "TelegramFaqUrl"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$125()V
    .locals 3

    .line 10445
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->PrivacyPolicyUrl:I

    const-string v2, "PrivacyPolicyUrl"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$13()V
    .locals 2

    .line 10313
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$14()V
    .locals 2

    .line 10314
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$15()V
    .locals 2

    .line 10315
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$16()V
    .locals 2

    .line 10316
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$17()V
    .locals 2

    .line 10317
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$18()V
    .locals 2

    .line 10318
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$19()V
    .locals 2

    .line 10320
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$2()V
    .locals 3

    .line 10286
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ActionIntroActivity;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$20()V
    .locals 2

    .line 10321
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-direct {v1}, Lorg/telegram/ui/PrivacyUsersActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$21()V
    .locals 4

    .line 10322
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity;

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$22()V
    .locals 4

    .line 10323
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$23()V
    .locals 4

    .line 10324
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$24()V
    .locals 4

    .line 10325
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity;

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$25()V
    .locals 4

    .line 10326
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$26()V
    .locals 4

    .line 10327
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$27()V
    .locals 3

    .line 10328
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$28()V
    .locals 4

    .line 10330
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10332
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32200(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10334
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 10336
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BulletinFactory;->createRestrictVoiceMessagesPremiumBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 10339
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$29()V
    .locals 2

    .line 10341
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {}, Lorg/telegram/ui/PasscodeActivity;->determineOpenFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$3()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 10290
    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 10296
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v2, Lorg/telegram/ui/LoginActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/LoginActivity;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$30()V
    .locals 2

    .line 10342
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$31()V
    .locals 3

    .line 10343
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/SessionsActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/SessionsActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$32()V
    .locals 2

    .line 10344
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$33()V
    .locals 2

    .line 10345
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$34()V
    .locals 2

    .line 10346
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$35()V
    .locals 3

    .line 10347
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/SessionsActivity;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/telegram/ui/SessionsActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$36()V
    .locals 2

    .line 10348
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$37()V
    .locals 2

    .line 10349
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$38()V
    .locals 2

    .line 10350
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$39()V
    .locals 2

    .line 10351
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$4()V
    .locals 2

    .line 10300
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$6500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10301
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ChangeBioActivity;

    invoke-direct {v1}, Lorg/telegram/ui/ChangeBioActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$40()V
    .locals 2

    .line 10352
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$41()V
    .locals 3

    .line 10354
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/SessionsActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/SessionsActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$42()V
    .locals 3

    .line 10355
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/SessionsActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/SessionsActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$43()V
    .locals 3

    .line 10356
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/SessionsActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/SessionsActivity;-><init>(I)V

    invoke-virtual {v1}, Lorg/telegram/ui/SessionsActivity;->setHighlightLinkDesktopDevice()Lorg/telegram/ui/SessionsActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$44()V
    .locals 2

    .line 10358
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$45()V
    .locals 2

    .line 10359
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$46()V
    .locals 2

    .line 10360
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {v1}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$47()V
    .locals 2

    .line 10361
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {v1}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$48()V
    .locals 2

    .line 10362
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {v1}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$49()V
    .locals 2

    .line 10363
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {v1}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static synthetic lambda$onCreateSearchArray$5(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    .line 10304
    invoke-static {p0}, Lorg/telegram/ui/ProfileActivity;->access$7300(Lorg/telegram/ui/ProfileActivity;)V

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$50()V
    .locals 2

    .line 10364
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/DataUsage2Activity;

    invoke-direct {v1}, Lorg/telegram/ui/DataUsage2Activity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$51()V
    .locals 2

    .line 10365
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$52()V
    .locals 3

    .line 10366
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/DataAutoDownloadActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/DataAutoDownloadActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$53()V
    .locals 3

    .line 10367
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/DataAutoDownloadActivity;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/telegram/ui/DataAutoDownloadActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$54()V
    .locals 3

    .line 10368
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/DataAutoDownloadActivity;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/telegram/ui/DataAutoDownloadActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$55()V
    .locals 2

    .line 10369
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$56()V
    .locals 2

    .line 10370
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$57()V
    .locals 2

    .line 10371
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$58()V
    .locals 2

    .line 10372
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$59()V
    .locals 2

    .line 10373
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$6()V
    .locals 2

    .line 10306
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$60()V
    .locals 2

    .line 10374
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$61()V
    .locals 2

    .line 10375
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$62()V
    .locals 2

    .line 10376
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$63()V
    .locals 2

    .line 10377
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$64()V
    .locals 2

    .line 10378
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ProxyListActivity;

    invoke-direct {v1}, Lorg/telegram/ui/ProxyListActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$65()V
    .locals 2

    .line 10379
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ProxyListActivity;

    invoke-direct {v1}, Lorg/telegram/ui/ProxyListActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$66()V
    .locals 2

    .line 10380
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$67()V
    .locals 2

    .line 10381
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$68()V
    .locals 2

    .line 10382
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$69()V
    .locals 2

    .line 10383
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$7()V
    .locals 4

    .line 10307
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v3}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;-><init>(ILjava/util/ArrayList;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$70()V
    .locals 2

    .line 10384
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$71()V
    .locals 3

    .line 10386
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$72()V
    .locals 3

    .line 10387
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$73()V
    .locals 3

    .line 10388
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/WallpapersListActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/WallpapersListActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$74()V
    .locals 3

    .line 10389
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/WallpapersListActivity;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/telegram/ui/WallpapersListActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$75()V
    .locals 3

    .line 10390
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/WallpapersListActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/WallpapersListActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$76()V
    .locals 3

    .line 10391
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$77()V
    .locals 3

    .line 10392
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$78()V
    .locals 3

    .line 10393
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$79()V
    .locals 3

    .line 10394
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$8()V
    .locals 5

    .line 10308
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;-><init>(ILjava/util/ArrayList;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$80()V
    .locals 3

    .line 10395
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$81()V
    .locals 3

    .line 10396
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$82()V
    .locals 3

    .line 10397
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$83()V
    .locals 3

    .line 10398
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$84()V
    .locals 3

    .line 10399
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$85()V
    .locals 3

    .line 10400
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$86()V
    .locals 3

    .line 10401
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$87()V
    .locals 3

    .line 10402
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$88()V
    .locals 3

    .line 10403
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$89()V
    .locals 3

    .line 10404
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$9()V
    .locals 5

    .line 10309
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;-><init>(ILjava/util/ArrayList;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$90()V
    .locals 3

    .line 10405
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$91()V
    .locals 3

    .line 10406
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$92()V
    .locals 4

    .line 10408
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/StickersActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$93()V
    .locals 4

    .line 10409
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/StickersActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$94()V
    .locals 4

    .line 10410
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/StickersActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$95()V
    .locals 4

    .line 10411
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/StickersActivity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$96()V
    .locals 3

    .line 10412
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ArchivedStickersActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ArchivedStickersActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$97()V
    .locals 3

    .line 10413
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/ArchivedStickersActivity;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/telegram/ui/ArchivedStickersActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$98()V
    .locals 4

    .line 10414
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/StickersActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateSearchArray$99()V
    .locals 4

    .line 10415
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/StickersActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$search$128(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2

    .line 10777
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lastSearchString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 10780
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchWas:Z

    if-nez p1, :cond_1

    .line 10781
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$9000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    .line 10782
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$9000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->SettingsNoResults:I

    const-string v1, "SettingsNoResults"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p1, 0x1

    .line 10784
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchWas:Z

    .line 10785
    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    .line 10786
    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchResults:Ljava/util/ArrayList;

    .line 10787
    iput-object p4, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->resultNames:Ljava/util/ArrayList;

    .line 10788
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10789
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$9000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    return-void
.end method

.method private synthetic lambda$search$129(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v6, p0

    .line 10692
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10693
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 10694
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v0, " "

    move-object/from16 v2, p1

    .line 10695
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 10696
    array-length v7, v1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 10697
    :goto_0
    array-length v10, v1

    const/4 v11, 0x0

    if-ge v9, v10, :cond_1

    .line 10698
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    aget-object v12, v1, v9

    invoke-virtual {v10, v12}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 10699
    aget-object v10, v7, v9

    aget-object v12, v1, v9

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 10700
    aput-object v11, v7, v9

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 10704
    :goto_1
    iget-object v10, v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchArray:[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    array-length v12, v10

    const-string v14, "windowBackgroundWhiteBlueText4"

    if-ge v9, v12, :cond_b

    .line 10705
    aget-object v10, v10, v9

    if-nez v10, :cond_2

    goto/16 :goto_8

    .line 10709
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->access$32100(Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v11

    const/4 v15, 0x0

    .line 10711
    :goto_2
    array-length v8, v1

    if-ge v15, v8, :cond_a

    .line 10712
    aget-object v8, v1, v15

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5

    .line 10713
    aget-object v8, v1, v15

    .line 10714
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_3

    .line 10715
    aget-object v17, v7, v15

    if-eqz v17, :cond_3

    .line 10716
    aget-object v8, v7, v15

    .line 10717
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    :cond_3
    if-ltz v11, :cond_a

    if-nez v16, :cond_4

    .line 10721
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-static {v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->access$32100(Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    move-object/from16 v13, v16

    .line 10723
    :goto_3
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v18, v12

    iget-object v12, v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v12, v14}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v2, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v11

    const/16 v12, 0x21

    invoke-virtual {v13, v2, v11, v8, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_5
    move-object/from16 v18, v12

    move-object/from16 v13, v16

    :goto_4
    if-eqz v13, :cond_9

    .line 10728
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ne v15, v2, :cond_9

    .line 10729
    invoke-static {v10}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->access$31600(Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;)I

    move-result v2

    const/16 v8, 0x1f6

    if-ne v2, v8, :cond_8

    const/4 v2, -0x1

    const/4 v8, 0x0

    :goto_5
    const/4 v11, 0x5

    if-ge v8, v11, :cond_7

    .line 10732
    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v11

    if-nez v11, :cond_6

    move v2, v8

    goto :goto_6

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    if-gez v2, :cond_8

    goto :goto_7

    .line 10741
    :cond_8
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10742
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_7
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    move-object/from16 v16, v13

    move-object/from16 v12, v18

    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_a
    :goto_8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p1

    const/4 v11, 0x0

    goto/16 :goto_1

    .line 10746
    :cond_b
    iget-object v2, v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v2, :cond_11

    .line 10747
    iget-object v2, v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v2, :cond_11

    .line 10748
    iget-object v9, v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    .line 10749
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->title:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 10751
    :goto_a
    array-length v13, v1

    if-ge v11, v13, :cond_10

    .line 10752
    aget-object v13, v1, v11

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_e

    .line 10753
    aget-object v13, v1, v11

    .line 10754
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-gez v15, :cond_c

    .line 10755
    aget-object v16, v7, v11

    if-eqz v16, :cond_c

    .line 10756
    aget-object v13, v7, v11

    .line 10757
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    :cond_c
    if-ltz v15, :cond_10

    if-nez v12, :cond_d

    .line 10761
    new-instance v12, Landroid/text/SpannableStringBuilder;

    move-object/from16 v16, v0

    iget-object v0, v9, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->title:Ljava/lang/String;

    invoke-direct {v12, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_d
    move-object/from16 v16, v0

    .line 10763
    :goto_b
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    move/from16 v18, v2

    iget-object v2, v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2, v14}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v15

    const/16 v13, 0x21

    invoke-virtual {v12, v0, v15, v2, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_c

    :cond_e
    move-object/from16 v16, v0

    move/from16 v18, v2

    const/16 v13, 0x21

    :goto_c
    if-eqz v12, :cond_f

    .line 10768
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ne v11, v0, :cond_f

    .line 10769
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10770
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v16

    move/from16 v2, v18

    goto :goto_a

    :cond_10
    move-object/from16 v16, v0

    move/from16 v18, v2

    const/16 v13, 0x21

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v16

    move/from16 v2, v18

    goto/16 :goto_9

    .line 10776
    :cond_11
    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda125;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda125;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateSearchArray$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 10272
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->getNum(Ljava/lang/Object;)I

    move-result p1

    .line 10273
    invoke-direct {p0, p2}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->getNum(Ljava/lang/Object;)I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private loadFaqWebPage()V
    .locals 3

    .line 10461
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->faqWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    .line 10463
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->faqSearchArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10465
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->loadingFaqPage:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 10468
    iput-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->loadingFaqPage:Z

    .line 10469
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;-><init>()V

    .line 10470
    sget v1, Lorg/telegram/messenger/R$string;->TelegramFaqUrl:I

    const-string v2, "TelegramFaqUrl"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    const/4 v1, 0x0

    .line 10471
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->hash:I

    .line 10472
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda129;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda129;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private onCreateSearchArray()[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;
    .locals 25

    move-object/from16 v9, p0

    const/16 v0, 0x7d

    new-array v10, v0, [Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    .line 10284
    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->EditName:I

    const-string v1, "EditName"

    .line 10285
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda50;

    invoke-direct {v5, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0x1f4

    const/4 v4, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    const/4 v11, 0x0

    aput-object v6, v10, v11

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->ChangePhoneNumber:I

    const-string v1, "ChangePhoneNumber"

    .line 10286
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda96;

    invoke-direct {v5, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda96;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0x1f5

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    const/4 v12, 0x1

    aput-object v6, v10, v12

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->AddAnotherAccount:I

    const-string v1, "AddAnotherAccount"

    .line 10287
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda57;

    invoke-direct {v5, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0x1f6

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    const/4 v13, 0x2

    aput-object v6, v10, v13

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->UserBio:I

    const-string v1, "UserBio"

    .line 10299
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda45;

    invoke-direct {v5, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0x1f7

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    const/4 v14, 0x3

    aput-object v6, v10, v14

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->AddPhoto:I

    .line 10304
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v9, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v5, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda127;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda127;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    const/16 v2, 0x1f8

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    const/4 v15, 0x4

    aput-object v6, v10, v15

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v8, Lorg/telegram/messenger/R$string;->NotificationsAndSounds:I

    const-string v7, "NotificationsAndSounds"

    .line 10306
    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v16, Lorg/telegram/messenger/R$drawable;->msg_notifications:I

    new-instance v5, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda31;

    invoke-direct {v5, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/4 v2, 0x1

    move-object v0, v6

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    const/4 v5, 0x5

    aput-object v6, v10, v5

    new-instance v17, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->NotificationsPrivateChats:I

    const-string v1, "NotificationsPrivateChats"

    .line 10307
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda38;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/4 v2, 0x2

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/4 v6, 0x6

    aput-object v17, v10, v6

    new-instance v17, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->NotificationsGroups:I

    const-string v1, "NotificationsGroups"

    .line 10308
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda122;

    invoke-direct {v5, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda122;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/4 v2, 0x3

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v18, v5

    move/from16 v5, v16

    move-object/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/4 v6, 0x7

    aput-object v17, v10, v6

    new-instance v17, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->NotificationsChannels:I

    const-string v1, "NotificationsChannels"

    .line 10309
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v5, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/4 v2, 0x4

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v18, v5

    move/from16 v5, v16

    move-object/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/16 v6, 0x8

    aput-object v17, v10, v6

    new-instance v17, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->VoipNotificationSettings:I

    const-string v1, "VoipNotificationSettings"

    .line 10310
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda121;

    invoke-direct {v4, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda121;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/4 v2, 0x5

    const-string v18, "callsSectionRow"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    const/16 v15, 0x8

    move/from16 v6, v16

    move-object v14, v7

    move-object/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/16 v7, 0x9

    aput-object v17, v10, v7

    new-instance v17, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->BadgeNumber:I

    const-string v1, "BadgeNumber"

    .line 10311
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda123;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda123;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/4 v2, 0x6

    const-string v4, "badgeNumberSection"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v19, v6

    move/from16 v6, v16

    move-object/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/16 v7, 0xa

    aput-object v17, v10, v7

    new-instance v17, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->InAppNotifications:I

    const-string v1, "InAppNotifications"

    .line 10312
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda69;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda69;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/4 v2, 0x7

    const-string v4, "inappSectionRow"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v19, v6

    move/from16 v6, v16

    move-object/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/16 v7, 0xb

    aput-object v17, v10, v7

    new-instance v17, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->ContactJoined:I

    const-string v1, "ContactJoined"

    .line 10313
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda84;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda84;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0x8

    const-string v4, "contactJoinedRow"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v19, v6

    move/from16 v6, v16

    const/16 v15, 0xb

    move-object/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/16 v7, 0xc

    aput-object v17, v10, v7

    new-instance v17, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->PinnedMessages:I

    const-string v1, "PinnedMessages"

    .line 10314
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda47;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0x9

    const-string v4, "pinnedMessageRow"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v19, v6

    move/from16 v6, v16

    move-object/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/16 v0, 0xd

    aput-object v17, v10, v0

    new-instance v17, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->ResetAllNotifications:I

    const-string v1, "ResetAllNotifications"

    .line 10315
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda107;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda107;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0xa

    const-string v4, "resetNotificationsRow"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/16 v0, 0xe

    aput-object v17, v10, v0

    new-instance v17, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->NotificationsService:I

    .line 10316
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda103;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda103;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0xb

    const-string v4, "notificationsServiceRow"

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/16 v0, 0xf

    aput-object v17, v10, v0

    new-instance v17, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->NotificationsServiceConnection:I

    .line 10317
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda19;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0xc

    const-string v4, "notificationsServiceConnectionRow"

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/16 v0, 0x10

    aput-object v17, v10, v0

    new-instance v17, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->RepeatNotifications:I

    .line 10318
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda102;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda102;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0xd

    const-string v4, "repeatRow"

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/16 v0, 0x11

    aput-object v17, v10, v0

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v8, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    const-string v14, "PrivacySettings"

    .line 10320
    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v16, Lorg/telegram/messenger/R$drawable;->msg_secret:I

    new-instance v5, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda23;

    invoke-direct {v5, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0x64

    move-object v0, v6

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    const/16 v0, 0x12

    aput-object v6, v10, v0

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->BlockedUsers:I

    const-string v1, "BlockedUsers"

    .line 10321
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda39;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0x65

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/16 v0, 0x13

    aput-object v7, v10, v0

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->PrivacyPhone:I

    const-string v1, "PrivacyPhone"

    .line 10322
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda72;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda72;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0x69

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/16 v0, 0x14

    aput-object v7, v10, v0

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->PrivacyLastSeen:I

    const-string v1, "PrivacyLastSeen"

    .line 10323
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda56;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0x66

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/16 v0, 0x15

    aput-object v7, v10, v0

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->PrivacyProfilePhoto:I

    const-string v1, "PrivacyProfilePhoto"

    .line 10324
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda34;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0x67

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/16 v0, 0x16

    aput-object v7, v10, v0

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->PrivacyForwards:I

    const-string v1, "PrivacyForwards"

    .line 10325
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda98;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda98;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0x68

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/16 v0, 0x17

    aput-object v7, v10, v0

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->PrivacyP2P:I

    const-string v1, "PrivacyP2P"

    .line 10326
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda18;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0x7a

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/16 v0, 0x18

    aput-object v7, v10, v0

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v6, Lorg/telegram/messenger/R$string;->Calls:I

    const-string v5, "Calls"

    .line 10327
    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda28;

    invoke-direct {v2, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v17, 0x6a

    move-object v0, v7

    move-object/from16 v19, v2

    move/from16 v2, v17

    move-object v13, v5

    move/from16 v5, v16

    move v12, v6

    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/16 v0, 0x19

    aput-object v7, v10, v0

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->GroupsAndChannels:I

    const-string v1, "GroupsAndChannels"

    .line 10328
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda100;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda100;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0x6b

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/16 v0, 0x1a

    aput-object v7, v10, v0

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->PrivacyVoiceMessages:I

    const-string v1, "PrivacyVoiceMessages"

    .line 10329
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0x7b

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/16 v0, 0x1b

    aput-object v7, v10, v0

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->Passcode:I

    const-string v1, "Passcode"

    .line 10341
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda90;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda90;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0x6c

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/16 v0, 0x1c

    aput-object v7, v10, v0

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->TwoStepVerification:I

    const-string v1, "TwoStepVerification"

    .line 10342
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda12;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0x6d

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/16 v0, 0x1d

    aput-object v7, v10, v0

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    sget v0, Lorg/telegram/messenger/R$string;->SessionsTitle:I

    const-string v1, "SessionsTitle"

    .line 10343
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda104;

    invoke-direct {v5, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda104;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const/16 v2, 0x6e

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    const/16 v0, 0x1e

    aput-object v6, v10, v0

    .line 10344
    iget-object v0, v9, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->autoarchiveAvailable:Z

    const/16 v19, 0x0

    if-eqz v0, :cond_0

    new-instance v20, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x79

    sget v0, Lorg/telegram/messenger/R$string;->ArchiveAndMute:I

    const-string v1, "ArchiveAndMute"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda35;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "newChatsRow"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    move-object/from16 v20, v19

    :goto_0
    const/16 v0, 0x1f

    aput-object v20, v10, v0

    const/16 v20, 0x20

    new-instance v21, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x70

    sget v0, Lorg/telegram/messenger/R$string;->DeleteAccountIfAwayFor2:I

    const-string v1, "DeleteAccountIfAwayFor2"

    .line 10345
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda40;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "deleteAccountRow"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v21, v10, v20

    const/16 v20, 0x21

    new-instance v21, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x71

    sget v0, Lorg/telegram/messenger/R$string;->PrivacyPaymentsClear:I

    const-string v1, "PrivacyPaymentsClear"

    .line 10346
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda42;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "paymentsClearRow"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v21, v10, v20

    const/16 v7, 0x22

    new-instance v20, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x72

    sget v0, Lorg/telegram/messenger/R$string;->WebSessionsTitle:I

    const-string v1, "WebSessionsTitle"

    .line 10347
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda71;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda71;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v20, v10, v7

    const/16 v20, 0x23

    new-instance v21, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x73

    sget v0, Lorg/telegram/messenger/R$string;->SyncContactsDelete:I

    const-string v1, "SyncContactsDelete"

    .line 10348
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda108;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda108;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "contactsDeleteRow"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v21, v10, v20

    const/16 v20, 0x24

    new-instance v21, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x74

    sget v0, Lorg/telegram/messenger/R$string;->SyncContacts:I

    const-string v1, "SyncContacts"

    .line 10349
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda117;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda117;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "contactsSyncRow"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v21, v10, v20

    const/16 v20, 0x25

    new-instance v21, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x75

    sget v0, Lorg/telegram/messenger/R$string;->SuggestContacts:I

    const-string v1, "SuggestContacts"

    .line 10350
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda49;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "contactsSuggestRow"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v21, v10, v20

    const/16 v20, 0x26

    new-instance v21, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x76

    sget v0, Lorg/telegram/messenger/R$string;->MapPreviewProvider:I

    const-string v1, "MapPreviewProvider"

    .line 10351
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda17;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "secretMapRow"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v21, v10, v20

    const/16 v20, 0x27

    new-instance v21, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x77

    sget v0, Lorg/telegram/messenger/R$string;->SecretWebPage:I

    const-string v1, "SecretWebPage"

    .line 10352
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda32;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "secretWebpageRow"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v21, v10, v20

    const/16 v6, 0x28

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x78

    sget v8, Lorg/telegram/messenger/R$string;->Devices:I

    .line 10354
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v14, Lorg/telegram/messenger/R$drawable;->msg_devices:I

    new-instance v5, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda54;

    invoke-direct {v5, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v7

    move v4, v14

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    aput-object v7, v10, v6

    const/16 v16, 0x29

    new-instance v20, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x79

    sget v0, Lorg/telegram/messenger/R$string;->TerminateAllSessions:I

    .line 10355
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda20;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "terminateAllSessionsRow"

    move-object/from16 v0, v20

    move v6, v14

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v20, v10, v16

    const/16 v7, 0x2a

    new-instance v16, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x7a

    sget v0, Lorg/telegram/messenger/R$string;->LinkDesktopDevice:I

    .line 10356
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda51;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object/from16 v0, v16

    move v5, v14

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v16, v10, v7

    const/16 v6, 0x2b

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xc8

    sget v14, Lorg/telegram/messenger/R$string;->DataSettings:I

    const-string v8, "DataSettings"

    .line 10358
    invoke-static {v8, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v16, Lorg/telegram/messenger/R$drawable;->msg_data:I

    new-instance v5, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda76;

    invoke-direct {v5, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda76;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v7

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    aput-object v7, v10, v6

    const/16 v20, 0x2c

    new-instance v21, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xc9

    sget v0, Lorg/telegram/messenger/R$string;->DataUsage:I

    const-string v1, "DataUsage"

    .line 10359
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda73;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda73;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "usageSectionRow"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v21, v10, v20

    const/16 v7, 0x2d

    new-instance v20, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xca

    sget v6, Lorg/telegram/messenger/R$string;->StorageUsage:I

    const-string v5, "StorageUsage"

    .line 10360
    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda77;

    invoke-direct {v1, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda77;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object/from16 v0, v20

    move-object/from16 v21, v1

    move-object/from16 v1, p0

    move-object v15, v5

    move/from16 v5, v16

    move v11, v6

    move-object/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v20, v10, v7

    const/16 v20, 0x2e

    new-instance v21, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xcb

    sget v0, Lorg/telegram/messenger/R$string;->KeepMedia:I

    const-string v1, "KeepMedia"

    .line 10361
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda80;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda80;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "keepMediaRow"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v22, v7

    move/from16 v7, v16

    move/from16 v23, v12

    move-object v12, v8

    move-object/from16 v8, v22

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v21, v10, v20

    const/16 v20, 0x2f

    new-instance v21, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xcc

    sget v0, Lorg/telegram/messenger/R$string;->ClearMediaCache:I

    const-string v1, "ClearMediaCache"

    .line 10362
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v8, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "cacheRow"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v21, v10, v20

    const/16 v20, 0x30

    new-instance v21, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xcd

    sget v0, Lorg/telegram/messenger/R$string;->LocalDatabase:I

    const-string v1, "LocalDatabase"

    .line 10363
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda120;

    invoke-direct {v8, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda120;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "databaseRow"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v21, v10, v20

    const/16 v7, 0x31

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xce

    sget v0, Lorg/telegram/messenger/R$string;->NetworkUsage:I

    const-string v1, "NetworkUsage"

    .line 10364
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda64;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda64;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v8, v10, v7

    const/16 v8, 0x32

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xcf

    sget v0, Lorg/telegram/messenger/R$string;->AutomaticMediaDownload:I

    const-string v1, "AutomaticMediaDownload"

    .line 10365
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda41;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "mediaDownloadSectionRow"

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v11, v10, v8

    const/16 v7, 0x33

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xd0

    sget v0, Lorg/telegram/messenger/R$string;->WhenUsingMobileData:I

    const-string v1, "WhenUsingMobileData"

    .line 10366
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda111;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda111;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v8, v10, v7

    const/16 v7, 0x34

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xd1

    sget v0, Lorg/telegram/messenger/R$string;->WhenConnectedOnWiFi:I

    const-string v1, "WhenConnectedOnWiFi"

    .line 10367
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda58;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v8, v10, v7

    const/16 v7, 0x35

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xd2

    sget v0, Lorg/telegram/messenger/R$string;->WhenRoaming:I

    const-string v1, "WhenRoaming"

    .line 10368
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda26;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v8, v10, v7

    const/16 v8, 0x36

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xd3

    sget v0, Lorg/telegram/messenger/R$string;->ResetAutomaticMediaDownload:I

    const-string v1, "ResetAutomaticMediaDownload"

    .line 10369
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda55;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "resetDownloadRow"

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v11, v10, v8

    const/16 v8, 0x37

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xd4

    sget v0, Lorg/telegram/messenger/R$string;->AutoplayMedia:I

    const-string v1, "AutoplayMedia"

    .line 10370
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda65;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda65;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "autoplayHeaderRow"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v11, v10, v8

    const/16 v8, 0x38

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xd5

    sget v0, Lorg/telegram/messenger/R$string;->AutoplayGIF:I

    const-string v1, "AutoplayGIF"

    .line 10371
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda15;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "autoplayGifsRow"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v11, v10, v8

    const/16 v8, 0x39

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xd6

    sget v0, Lorg/telegram/messenger/R$string;->AutoplayVideo:I

    const-string v1, "AutoplayVideo"

    .line 10372
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda10;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "autoplayVideoRow"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v11, v10, v8

    const/16 v8, 0x3a

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xd7

    sget v0, Lorg/telegram/messenger/R$string;->Streaming:I

    const-string v1, "Streaming"

    .line 10373
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda94;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda94;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "streamSectionRow"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v11, v10, v8

    const/16 v8, 0x3b

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xd8

    sget v0, Lorg/telegram/messenger/R$string;->EnableStreaming:I

    const-string v1, "EnableStreaming"

    .line 10374
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda53;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "enableStreamRow"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v11, v10, v8

    const/16 v8, 0x3c

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xd9

    move/from16 v0, v23

    .line 10375
    invoke-static {v13, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda89;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda89;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "callsSectionRow"

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v11, v10, v8

    const/16 v8, 0x3d

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xda

    sget v0, Lorg/telegram/messenger/R$string;->VoipUseLessData:I

    const-string v1, "VoipUseLessData"

    .line 10376
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "useLessDataForCallsRow"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v11, v10, v8

    const/16 v8, 0x3e

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xdb

    sget v0, Lorg/telegram/messenger/R$string;->VoipQuickReplies:I

    const-string v1, "VoipQuickReplies"

    .line 10377
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda112;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda112;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "quickRepliesRow"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v11, v10, v8

    const/16 v7, 0x3f

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xdc

    sget v11, Lorg/telegram/messenger/R$string;->ProxySettings:I

    const-string v13, "ProxySettings"

    .line 10378
    invoke-static {v13, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda48;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v8, v10, v7

    const/16 v15, 0x40

    new-instance v20, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xdd

    sget v0, Lorg/telegram/messenger/R$string;->UseProxyForCalls:I

    const-string v1, "UseProxyForCalls"

    .line 10379
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda59;

    invoke-direct {v8, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda59;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "callsRow"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v7, v16

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v20, v10, v15

    const/16 v8, 0x41

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x6f

    sget v0, Lorg/telegram/messenger/R$string;->PrivacyDeleteCloudDrafts:I

    const-string v1, "PrivacyDeleteCloudDrafts"

    .line 10380
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda87;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda87;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "clearDraftsRow"

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v11, v10, v8

    const/16 v8, 0x42

    new-instance v11, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xde

    sget v12, Lorg/telegram/messenger/R$string;->SaveToGallery:I

    .line 10381
    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda61;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda61;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "saveToGallerySectionRow"

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v11, v10, v8

    const/16 v11, 0x43

    new-instance v13, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xdf

    sget v0, Lorg/telegram/messenger/R$string;->SaveToGalleryPrivate:I

    .line 10382
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda36;

    invoke-direct {v8, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "saveToGalleryPeerRow"

    move-object v0, v13

    move/from16 v7, v16

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v13, v10, v11

    const/16 v11, 0x44

    new-instance v13, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xe0

    sget v0, Lorg/telegram/messenger/R$string;->SaveToGalleryGroups:I

    .line 10383
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda68;

    invoke-direct {v8, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda68;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "saveToGalleryGroupsRow"

    move-object v0, v13

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v13, v10, v11

    const/16 v11, 0x45

    new-instance v13, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0xe1

    sget v0, Lorg/telegram/messenger/R$string;->SaveToGalleryChannels:I

    .line 10384
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda63;

    invoke-direct {v8, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda63;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "saveToGalleryChannelsRow"

    move-object v0, v13

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v13, v10, v11

    const/16 v6, 0x46

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x12c

    sget v11, Lorg/telegram/messenger/R$string;->ChatSettings:I

    const-string v12, "ChatSettings"

    .line 10386
    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_msgbubble3:I

    new-instance v5, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda99;

    invoke-direct {v5, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda99;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v7

    move v4, v13

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    aput-object v7, v10, v6

    const/16 v8, 0x47

    new-instance v14, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x12d

    sget v0, Lorg/telegram/messenger/R$string;->TextSizeHeader:I

    const-string v1, "TextSizeHeader"

    .line 10387
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda85;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda85;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "textSizeHeaderRow"

    move-object v0, v14

    move-object/from16 v1, p0

    move v6, v13

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v14, v10, v8

    const/16 v7, 0x48

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x12e

    sget v0, Lorg/telegram/messenger/R$string;->ChangeChatBackground:I

    .line 10388
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda27;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move v5, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v8, v10, v7

    const/16 v14, 0x49

    new-instance v15, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x12f

    sget v0, Lorg/telegram/messenger/R$string;->SetColor:I

    const-string v1, "SetColor"

    .line 10389
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v8, Lorg/telegram/messenger/R$string;->ChatBackground:I

    const-string v0, "ChatBackground"

    invoke-static {v0, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda14;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v16, v7

    move v7, v13

    move/from16 v24, v8

    move-object/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v15, v10, v14

    const/16 v14, 0x4a

    new-instance v15, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x130

    sget v0, Lorg/telegram/messenger/R$string;->ResetChatBackgrounds:I

    const-string v1, "ResetChatBackgrounds"

    .line 10390
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "ChatBackground"

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda118;

    invoke-direct {v8, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda118;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "resetRow"

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v15, v10, v14

    const/16 v8, 0x4b

    new-instance v14, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x132

    sget v0, Lorg/telegram/messenger/R$string;->ColorTheme:I

    const-string v1, "ColorTheme"

    .line 10391
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda78;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda78;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "themeHeaderRow"

    move-object v0, v14

    move-object/from16 v1, p0

    move v6, v13

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v14, v10, v8

    const/16 v8, 0x4c

    new-instance v14, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x13f

    sget v15, Lorg/telegram/messenger/R$string;->BrowseThemes:I

    .line 10392
    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda95;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda95;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v14

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v14, v10, v8

    const/16 v14, 0x4d

    new-instance v16, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x140

    sget v0, Lorg/telegram/messenger/R$string;->CreateNewTheme:I

    .line 10393
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda101;

    invoke-direct {v8, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda101;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "createNewThemeRow"

    move-object/from16 v0, v16

    move v7, v13

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v16, v10, v14

    const/16 v8, 0x4e

    new-instance v14, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x141

    sget v0, Lorg/telegram/messenger/R$string;->BubbleRadius:I

    .line 10394
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda37;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "bubbleRadiusHeaderRow"

    move-object v0, v14

    move v6, v13

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v14, v10, v8

    const/16 v8, 0x4f

    new-instance v14, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x142

    sget v0, Lorg/telegram/messenger/R$string;->ChatList:I

    .line 10395
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda52;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "chatListHeaderRow"

    move-object v0, v14

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v14, v10, v8

    const/16 v8, 0x50

    new-instance v14, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x143

    sget v0, Lorg/telegram/messenger/R$string;->ChatListSwipeGesture:I

    .line 10396
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda33;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "swipeGestureHeaderRow"

    move-object v0, v14

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v14, v10, v8

    const/16 v8, 0x51

    new-instance v14, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x144

    sget v0, Lorg/telegram/messenger/R$string;->AppIcon:I

    .line 10397
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda116;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda116;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "appIconHeaderRow"

    move-object v0, v14

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v14, v10, v8

    const/16 v7, 0x52

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x131

    sget v0, Lorg/telegram/messenger/R$string;->AutoNightTheme:I

    const-string v1, "AutoNightTheme"

    .line 10398
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move-object/from16 v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v8, v10, v7

    const/16 v8, 0x53

    new-instance v14, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x133

    sget v0, Lorg/telegram/messenger/R$string;->ChromeCustomTabs:I

    const-string v1, "ChromeCustomTabs"

    .line 10399
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda86;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda86;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "customTabsRow"

    move-object v0, v14

    move-object/from16 v1, p0

    move v6, v13

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v14, v10, v8

    const/16 v8, 0x54

    new-instance v14, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x134

    sget v0, Lorg/telegram/messenger/R$string;->DirectShare:I

    const-string v1, "DirectShare"

    .line 10400
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda75;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda75;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "directShareRow"

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v14, v10, v8

    const/16 v8, 0x55

    new-instance v14, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x135

    sget v0, Lorg/telegram/messenger/R$string;->EnableAnimations:I

    const-string v1, "EnableAnimations"

    .line 10401
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda16;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "enableAnimationsRow"

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v14, v10, v8

    const/16 v8, 0x56

    new-instance v14, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x136

    sget v0, Lorg/telegram/messenger/R$string;->RaiseToSpeak:I

    const-string v1, "RaiseToSpeak"

    .line 10402
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda62;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda62;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "raiseToSpeakRow"

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v14, v10, v8

    const/16 v8, 0x57

    new-instance v14, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x145

    sget v0, Lorg/telegram/messenger/R$string;->MicrophoneForVoiceMessages:I

    .line 10403
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda115;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda115;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "bluetoothScoRow"

    move-object v0, v14

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v14, v10, v8

    const/16 v8, 0x58

    new-instance v14, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x137

    sget v0, Lorg/telegram/messenger/R$string;->SendByEnter:I

    const-string v1, "SendByEnter"

    .line 10404
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda83;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda83;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "sendByEnterRow"

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v14, v10, v8

    const/16 v8, 0x59

    .line 10405
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->canBlurChat()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v14, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x146

    sget v0, Lorg/telegram/messenger/R$string;->BlurInChat:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda119;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda119;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "chatBlurRow"

    move-object v0, v14

    move-object/from16 v1, p0

    move v6, v13

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    move-object/from16 v14, v19

    :goto_1
    aput-object v14, v10, v8

    const/16 v8, 0x5a

    new-instance v14, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x13e

    sget v0, Lorg/telegram/messenger/R$string;->DistanceUnits:I

    const-string v1, "DistanceUnits"

    .line 10406
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "distanceRow"

    move-object v0, v14

    move-object/from16 v1, p0

    move v6, v13

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v14, v10, v8

    const/16 v6, 0x5b

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x258

    sget v11, Lorg/telegram/messenger/R$string;->StickersName:I

    .line 10408
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_sticker:I

    new-instance v5, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda24;

    invoke-direct {v5, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v7

    move v4, v12

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    aput-object v7, v10, v6

    const/16 v8, 0x5c

    new-instance v13, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x259

    sget v0, Lorg/telegram/messenger/R$string;->SuggestStickers:I

    const-string v1, "SuggestStickers"

    .line 10409
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda44;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "suggestRow"

    move-object v0, v13

    move-object/from16 v1, p0

    move v6, v12

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v13, v10, v8

    const/16 v8, 0x5d

    new-instance v13, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x25a

    sget v0, Lorg/telegram/messenger/R$string;->FeaturedStickers:I

    const-string v1, "FeaturedStickers"

    .line 10410
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda74;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda74;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "featuredStickersHeaderRow"

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v13, v10, v8

    const/16 v8, 0x5e

    new-instance v13, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x25b

    sget v0, Lorg/telegram/messenger/R$string;->Masks:I

    const-string v1, "Masks"

    .line 10411
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda81;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda81;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v13, v10, v8

    const/16 v8, 0x5f

    new-instance v13, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x25c

    sget v0, Lorg/telegram/messenger/R$string;->ArchivedStickers:I

    const-string v1, "ArchivedStickers"

    .line 10412
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda92;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda92;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v13, v10, v8

    const/16 v8, 0x60

    new-instance v13, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x25d

    sget v0, Lorg/telegram/messenger/R$string;->ArchivedMasks:I

    const-string v1, "ArchivedMasks"

    .line 10413
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda97;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda97;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v13, v10, v8

    const/16 v8, 0x61

    new-instance v13, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x25e

    sget v0, Lorg/telegram/messenger/R$string;->LargeEmoji:I

    .line 10414
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda91;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda91;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "largeEmojiRow"

    move-object v0, v13

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v13, v10, v8

    const/16 v8, 0x62

    new-instance v13, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x25f

    sget v0, Lorg/telegram/messenger/R$string;->LoopAnimatedStickers:I

    .line 10415
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda29;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "loopRow"

    move-object v0, v13

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v13, v10, v8

    const/16 v8, 0x63

    new-instance v13, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x260

    sget v14, Lorg/telegram/messenger/R$string;->Emoji:I

    .line 10416
    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v15, Lorg/telegram/messenger/R$drawable;->input_smile:I

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda25;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v13

    move v6, v15

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v13, v10, v8

    const/16 v13, 0x64

    new-instance v16, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x261

    sget v0, Lorg/telegram/messenger/R$string;->SuggestAnimatedEmoji:I

    .line 10417
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v8, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "suggestAnimatedEmojiRow"

    move-object/from16 v0, v16

    move v7, v15

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v16, v10, v13

    const/16 v13, 0x65

    new-instance v16, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x262

    sget v0, Lorg/telegram/messenger/R$string;->FeaturedEmojiPacks:I

    .line 10418
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda60;

    invoke-direct {v8, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda60;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "featuredStickersHeaderRow"

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v16, v10, v13

    const/16 v8, 0x66

    new-instance v13, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x263

    sget v0, Lorg/telegram/messenger/R$string;->DoubleTapSetting:I

    .line 10419
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda70;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda70;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v13

    move v6, v12

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v13, v10, v8

    const/16 v7, 0x67

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x2bc

    sget v11, Lorg/telegram/messenger/R$string;->Filters:I

    .line 10421
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_folder:I

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move v5, v12

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v8, v10, v7

    const/16 v8, 0x68

    new-instance v13, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x2bd

    sget v0, Lorg/telegram/messenger/R$string;->CreateNewFilter:I

    .line 10422
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda82;

    invoke-direct {v7, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda82;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    const-string v4, "createFilterRow"

    move-object v0, v13

    move v6, v12

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v13, v10, v8

    const/16 v6, 0x69

    const/4 v0, -0x1

    .line 10424
    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x320

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v5, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v5, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    move-object/from16 v7, v19

    :goto_2
    aput-object v7, v10, v6

    const/16 v7, 0x6a

    const/4 v0, 0x0

    .line 10425
    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x321

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewLimits:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda110;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda110;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_3

    :cond_3
    move-object/from16 v8, v19

    :goto_3
    aput-object v8, v10, v7

    const/16 v7, 0x6b

    const/16 v0, 0xb

    .line 10426
    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x322

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewEmoji:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda109;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda109;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_4

    :cond_4
    move-object/from16 v8, v19

    :goto_4
    aput-object v8, v10, v7

    const/16 v7, 0x6c

    const/4 v0, 0x1

    .line 10427
    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x323

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewUploads:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda43;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_5

    :cond_5
    move-object/from16 v8, v19

    :goto_5
    aput-object v8, v10, v7

    const/16 v7, 0x6d

    const/4 v0, 0x2

    .line 10428
    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x324

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewDownloadSpeed:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda13;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_6

    :cond_6
    move-object/from16 v8, v19

    :goto_6
    aput-object v8, v10, v7

    const/16 v7, 0x6e

    const/16 v0, 0x8

    .line 10429
    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x325

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewVoiceToText:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda114;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda114;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_7

    :cond_7
    move-object/from16 v8, v19

    :goto_7
    aput-object v8, v10, v7

    const/16 v7, 0x6f

    const/4 v0, 0x3

    .line 10430
    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x326

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewNoAds:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda11;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_8

    :cond_8
    move-object/from16 v8, v19

    :goto_8
    aput-object v8, v10, v7

    const/16 v7, 0x70

    const/4 v0, 0x4

    .line 10431
    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x327

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewReactions:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_9

    :cond_9
    move-object/from16 v8, v19

    :goto_9
    aput-object v8, v10, v7

    const/16 v7, 0x71

    const/4 v0, 0x5

    .line 10432
    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x328

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewStickers:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda113;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda113;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_a

    :cond_a
    move-object/from16 v8, v19

    :goto_a
    aput-object v8, v10, v7

    const/16 v7, 0x72

    const/16 v0, 0x9

    .line 10433
    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x329

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewAdvancedChatManagement:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda21;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_b

    :cond_b
    move-object/from16 v8, v19

    :goto_b
    aput-object v8, v10, v7

    const/16 v7, 0x73

    const/4 v0, 0x6

    .line 10434
    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x32a

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewProfileBadge:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda22;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_c

    :cond_c
    move-object/from16 v8, v19

    :goto_c
    aput-object v8, v10, v7

    const/16 v7, 0x74

    const/4 v0, 0x7

    .line 10435
    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x32b

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewAnimatedProfiles:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda93;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda93;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_d

    :cond_d
    move-object/from16 v8, v19

    :goto_d
    aput-object v8, v10, v7

    const/16 v7, 0x75

    const/16 v0, 0xa

    .line 10436
    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x32c

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewAppIcon:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda46;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_e

    :cond_e
    move-object/from16 v8, v19

    :goto_e
    aput-object v8, v10, v7

    const/16 v7, 0x76

    const/16 v0, 0xc

    .line 10437
    invoke-direct {v9, v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->isPremiumFeatureAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x32d

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewEmojiStatus:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda79;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda79;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_f

    :cond_f
    move-object/from16 v8, v19

    :goto_f
    aput-object v8, v10, v7

    const/16 v6, 0x77

    new-instance v7, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x190

    sget v8, Lorg/telegram/messenger/R$string;->Language:I

    const-string v0, "Language"

    .line 10439
    invoke-static {v0, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v11, Lorg/telegram/messenger/R$drawable;->msg_language:I

    new-instance v5, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda105;

    invoke-direct {v5, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda105;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v7

    move-object/from16 v1, p0

    move v4, v11

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;ILjava/lang/Runnable;)V

    aput-object v7, v10, v6

    const/16 v7, 0x78

    new-instance v12, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x195

    sget v0, Lorg/telegram/messenger/R$string;->ShowTranslateButton:I

    .line 10440
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda67;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda67;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v12

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v12, v10, v7

    const/16 v7, 0x79

    .line 10441
    iget-object v0, v9, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/TranslateController;->isContextTranslateEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v19, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x196

    sget v0, Lorg/telegram/messenger/R$string;->DoNotTranslate:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda30;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    :cond_10
    aput-object v19, v10, v7

    const/16 v7, 0x7a

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x192

    sget v0, Lorg/telegram/messenger/R$string;->AskAQuestion:I

    const-string v1, "AskAQuestion"

    .line 10443
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v11, Lorg/telegram/messenger/R$string;->SettingsHelp:I

    const-string v12, "SettingsHelp"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_help:I

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda88;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda88;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move-object/from16 v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v8, v10, v7

    const/16 v7, 0x7b

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x193

    sget v0, Lorg/telegram/messenger/R$string;->TelegramFAQ:I

    const-string v1, "TelegramFAQ"

    .line 10444
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda106;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda106;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v8, v10, v7

    const/16 v7, 0x7c

    new-instance v8, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    const/16 v2, 0x194

    sget v0, Lorg/telegram/messenger/R$string;->PrivacyPolicy:I

    const-string v1, "PrivacyPolicy"

    .line 10445
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda66;

    invoke-direct {v6, v9}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda66;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    aput-object v8, v10, v7

    return-object v10
.end method

.method private updateSearchArray()V
    .locals 11

    .line 10231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 10232
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchArray:[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 10233
    aget-object v4, v3, v2

    if-nez v4, :cond_0

    goto :goto_1

    .line 10236
    :cond_0
    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->access$31600(Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchArray:[Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    aget-object v4, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10238
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "settingsSearchRecent2"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 10240
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10242
    :try_start_0
    new-instance v5, Lorg/telegram/tgnet/SerializedData;

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 10243
    invoke-virtual {v5, v1}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v3

    .line 10244
    invoke-virtual {v5, v1}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v6

    if-nez v6, :cond_5

    .line 10246
    invoke-virtual {v5, v1}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v6

    .line 10247
    invoke-virtual {v5, v1}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v7

    if-lez v7, :cond_3

    .line 10250
    new-array v8, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v7, :cond_4

    .line 10252
    invoke-virtual {v5, v1}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    move-object v8, v4

    .line 10255
    :cond_4
    invoke-virtual {v5, v1}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v5

    .line 10256
    new-instance v7, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    invoke-direct {v7, v6, v8, v5}, Lorg/telegram/messenger/MessagesController$FaqSearchResult;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 10257
    iput v3, v7, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->num:I

    .line 10258
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 10260
    invoke-virtual {v5, v1}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    if-eqz v5, :cond_2

    .line 10262
    invoke-static {v5, v3}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->access$31702(Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;I)I

    .line 10263
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    .line 10271
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda128;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda128;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public addRecent(Ljava/lang/Object;)V
    .locals 4

    .line 10636
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 10638
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 10640
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 10641
    iget-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchWas:Z

    if-nez p1, :cond_1

    .line 10642
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10644
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_2

    .line 10645
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 10647
    :cond_2
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 10648
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 10649
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 10650
    instance-of v3, v2, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    if-eqz v3, :cond_3

    .line 10651
    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    invoke-static {v3, v1}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->access$31702(Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;I)I

    goto :goto_1

    .line 10652
    :cond_3
    instance-of v3, v2, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    if-eqz v3, :cond_4

    .line 10653
    move-object v3, v2

    check-cast v3, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    iput v1, v3, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->num:I

    .line 10655
    :cond_4
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10657
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "settingsSearchRecent2"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public clearRecent()V
    .locals 2

    .line 10661
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10662
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "settingsSearchRecent2"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 10663
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 3

    .line 10528
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchWas:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 10529
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 10531
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 10615
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchWas:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 10616
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    return v1

    .line 10618
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_4

    return v2

    :cond_1
    if-nez p1, :cond_3

    .line 10623
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    return v2

    .line 10628
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 10536
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSearchWas()Z
    .locals 1

    .line 10795
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchWas:Z

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 10541
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 p2, 0x2

    if-eq v0, p2, :cond_0

    goto/16 :goto_4

    .line 10587
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 10588
    sget p2, Lorg/telegram/messenger/R$string;->SettingsRecent:I

    const-string v0, "SettingsRecent"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 10582
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 10583
    sget p2, Lorg/telegram/messenger/R$string;->SettingsFaqSearchTitle:I

    const-string v0, "SettingsFaqSearchTitle"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 10543
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/SettingsSearchCell;

    .line 10544
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchWas:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 10545
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_6

    .line 10546
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    if-lez p2, :cond_3

    .line 10547
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 10549
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->access$31900(Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->access$31900(Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;)I

    move-result v4

    if-ne v3, v4, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    .line 10552
    :cond_4
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->access$31900(Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;)I

    move-result v3

    .line 10554
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->resultNames:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->access$32000(Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;)[Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    if-ge p2, v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1, v4, v0, v3, v1}, Lorg/telegram/ui/Cells/SettingsSearchCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;[Ljava/lang/String;IZ)V

    goto/16 :goto_4

    .line 10556
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 10557
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    .line 10558
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->resultNames:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->path:[Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge p2, v4, :cond_7

    const/4 v2, 0x1

    :cond_7
    invoke-virtual {p1, v3, v0, v1, v2}, Lorg/telegram/ui/Cells/SettingsSearchCell;->setTextAndValue(Ljava/lang/CharSequence;[Ljava/lang/String;ZZ)V

    goto :goto_4

    .line 10561
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    add-int/lit8 p2, p2, -0x1

    .line 10564
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_d

    .line 10565
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 10566
    instance-of v3, v0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    if-eqz v3, :cond_b

    .line 10567
    check-cast v0, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    .line 10568
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->access$32100(Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->access$32000(Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;)[Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge p2, v4, :cond_a

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1, v3, v0, v2, v1}, Lorg/telegram/ui/Cells/SettingsSearchCell;->setTextAndValue(Ljava/lang/CharSequence;[Ljava/lang/String;ZZ)V

    goto :goto_4

    .line 10569
    :cond_b
    instance-of v3, v0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    if-eqz v3, :cond_f

    .line 10570
    check-cast v0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    .line 10571
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->title:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->path:[Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge p2, v4, :cond_c

    const/4 v2, 0x1

    :cond_c
    invoke-virtual {p1, v3, v0, v1, v2}, Lorg/telegram/ui/Cells/SettingsSearchCell;->setTextAndValue(Ljava/lang/CharSequence;[Ljava/lang/String;ZZ)V

    goto :goto_4

    .line 10574
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 10575
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    .line 10576
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->title:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->path:[Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge p2, v4, :cond_e

    const/4 v2, 0x1

    :cond_e
    invoke-virtual {p1, v3, v0, v1, v2}, Lorg/telegram/ui/Cells/SettingsSearchCell;->setTextAndValue(Ljava/lang/CharSequence;[Ljava/lang/String;ZZ)V

    :cond_f
    :goto_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    .line 10606
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->mContext:Landroid/content/Context;

    const/16 v0, 0x10

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 10602
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 10599
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/SettingsSearchCell;

    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/SettingsSearchCell;-><init>(Landroid/content/Context;)V

    .line 10609
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10610
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public search(Ljava/lang/String;)V
    .locals 4

    .line 10676
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->lastSearchString:Ljava/lang/String;

    .line 10677
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 10678
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 10679
    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 10681
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 10682
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchWas:Z

    .line 10683
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 10684
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqSearchResults:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 10685
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->resultNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 10686
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$9000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    .line 10687
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$9000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->SettingsNoRecent:I

    const-string v1, "SettingsNoRecent"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10688
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 10691
    :cond_1
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda124;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$$ExternalSyntheticLambda124;-><init>(Lorg/telegram/ui/ProfileActivity$SearchAdapter;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method
