package com.iMe.storage.domain.model.catalog;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CampaignStatus.kt */
/* loaded from: classes3.dex */
public enum CampaignStatus {
    NEW,
    ACTIVE,
    REJECTED,
    CANCELED,
    COMPLETED;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: CampaignStatus.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CampaignStatus getByName(String name) {
            CampaignStatus campaignStatus;
            Intrinsics.checkNotNullParameter(name, "name");
            CampaignStatus[] values = CampaignStatus.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    campaignStatus = null;
                    break;
                }
                campaignStatus = values[i];
                if (Intrinsics.areEqual(campaignStatus.name(), name)) {
                    break;
                }
                i++;
            }
            return campaignStatus == null ? CampaignStatus.COMPLETED : campaignStatus;
        }
    }
}
