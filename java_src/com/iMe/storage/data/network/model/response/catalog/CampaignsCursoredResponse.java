package com.iMe.storage.data.network.model.response.catalog;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CampaignsCursoredResponse.kt */
/* loaded from: classes4.dex */
public final class CampaignsCursoredResponse {
    private final List<CampaignResponse> items;
    private final CursorMetaResponse meta;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CampaignsCursoredResponse copy$default(CampaignsCursoredResponse campaignsCursoredResponse, List list, CursorMetaResponse cursorMetaResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            list = campaignsCursoredResponse.items;
        }
        if ((i & 2) != 0) {
            cursorMetaResponse = campaignsCursoredResponse.meta;
        }
        return campaignsCursoredResponse.copy(list, cursorMetaResponse);
    }

    public final List<CampaignResponse> component1() {
        return this.items;
    }

    public final CursorMetaResponse component2() {
        return this.meta;
    }

    public final CampaignsCursoredResponse copy(List<CampaignResponse> items, CursorMetaResponse meta) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(meta, "meta");
        return new CampaignsCursoredResponse(items, meta);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CampaignsCursoredResponse) {
            CampaignsCursoredResponse campaignsCursoredResponse = (CampaignsCursoredResponse) obj;
            return Intrinsics.areEqual(this.items, campaignsCursoredResponse.items) && Intrinsics.areEqual(this.meta, campaignsCursoredResponse.meta);
        }
        return false;
    }

    public int hashCode() {
        return (this.items.hashCode() * 31) + this.meta.hashCode();
    }

    public String toString() {
        return "CampaignsCursoredResponse(items=" + this.items + ", meta=" + this.meta + ')';
    }

    public CampaignsCursoredResponse(List<CampaignResponse> items, CursorMetaResponse meta) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(meta, "meta");
        this.items = items;
        this.meta = meta;
    }

    public final List<CampaignResponse> getItems() {
        return this.items;
    }

    public final CursorMetaResponse getMeta() {
        return this.meta;
    }
}
