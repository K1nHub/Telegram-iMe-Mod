package com.iMe.storage.domain.model.crypto.ton;

import com.iMe.storage.R$string;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentProductsSortingType.kt */
/* loaded from: classes3.dex */
public enum TonFragmentProductsSortingType {
    PRICE_DESCENDING("price_desc", R$string.fragment_usernames_sorting_price_descending),
    PRICE_ASCENDING("price_asc", R$string.fragment_usernames_sorting_price_ascending),
    RECENTLY_LISTED("listed", R$string.fragment_usernames_sorting_recently_listed),
    ENDING_SOON("ending", R$string.fragment_usernames_sorting_ending_soon);
    
    public static final Companion Companion = new Companion(null);
    private final String backendName;
    private final int textResId;

    TonFragmentProductsSortingType(String str, int i) {
        this.backendName = str;
        this.textResId = i;
    }

    public final String getBackendName() {
        return this.backendName;
    }

    public final int getTextResId() {
        return this.textResId;
    }

    /* compiled from: TonFragmentProductsSortingType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TonFragmentProductsSortingType map(String str) {
            TonFragmentProductsSortingType tonFragmentProductsSortingType;
            TonFragmentProductsSortingType[] values = TonFragmentProductsSortingType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    tonFragmentProductsSortingType = null;
                    break;
                }
                tonFragmentProductsSortingType = values[i];
                if (Intrinsics.areEqual(tonFragmentProductsSortingType.name(), str)) {
                    break;
                }
                i++;
            }
            return tonFragmentProductsSortingType == null ? TonFragmentProductsSortingType.PRICE_DESCENDING : tonFragmentProductsSortingType;
        }

        public final TonFragmentProductsSortingType mapByOrdinal(int i) {
            TonFragmentProductsSortingType tonFragmentProductsSortingType;
            TonFragmentProductsSortingType[] values = TonFragmentProductsSortingType.values();
            int length = values.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    tonFragmentProductsSortingType = null;
                    break;
                }
                tonFragmentProductsSortingType = values[i2];
                if (tonFragmentProductsSortingType.ordinal() == i) {
                    break;
                }
                i2++;
            }
            return tonFragmentProductsSortingType == null ? TonFragmentProductsSortingType.PRICE_DESCENDING : tonFragmentProductsSortingType;
        }
    }
}
