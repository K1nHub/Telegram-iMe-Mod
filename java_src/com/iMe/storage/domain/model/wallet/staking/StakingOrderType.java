package com.iMe.storage.domain.model.wallet.staking;

import com.iMe.storage.R$string;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingOrderType.kt */
/* loaded from: classes3.dex */
public enum StakingOrderType {
    ALPHABET(R$string.choose_tokens_order_alphabet),
    INTEREST(R$string.choose_staking_order_interest_rate),
    DEFAULT(R$string.choose_tokens_order_default);
    
    public static final Companion Companion = new Companion(null);
    private final int title;

    StakingOrderType(int i) {
        this.title = i;
    }

    public final int getTitle() {
        return this.title;
    }

    /* compiled from: StakingOrderType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final StakingOrderType map(String value) {
            StakingOrderType stakingOrderType;
            Intrinsics.checkNotNullParameter(value, "value");
            StakingOrderType[] values = StakingOrderType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    stakingOrderType = null;
                    break;
                }
                stakingOrderType = values[i];
                if (Intrinsics.areEqual(stakingOrderType.name(), value)) {
                    break;
                }
                i++;
            }
            return stakingOrderType == null ? StakingOrderType.DEFAULT : stakingOrderType;
        }

        public final List<String> getTitles(ResourceManager resourceManager) {
            Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
            StakingOrderType[] values = StakingOrderType.values();
            ArrayList arrayList = new ArrayList(values.length);
            for (StakingOrderType stakingOrderType : values) {
                arrayList.add(resourceManager.getString(stakingOrderType.getTitle()));
            }
            return arrayList;
        }
    }
}
