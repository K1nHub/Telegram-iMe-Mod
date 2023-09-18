package com.iMe.i_staking.request;

import com.iMe.storage.domain.model.wallet.staking.StakingOrderType;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingOrderStrategyRequest.kt */
/* loaded from: classes4.dex */
public final class StakingOrderStrategyRequest {
    public static final Companion Companion = new Companion(null);
    private final String criteria;

    public static /* synthetic */ StakingOrderStrategyRequest copy$default(StakingOrderStrategyRequest stakingOrderStrategyRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = stakingOrderStrategyRequest.criteria;
        }
        return stakingOrderStrategyRequest.copy(str);
    }

    public final String component1() {
        return this.criteria;
    }

    public final StakingOrderStrategyRequest copy(String criteria) {
        Intrinsics.checkNotNullParameter(criteria, "criteria");
        return new StakingOrderStrategyRequest(criteria);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof StakingOrderStrategyRequest) && Intrinsics.areEqual(this.criteria, ((StakingOrderStrategyRequest) obj).criteria);
    }

    public int hashCode() {
        return this.criteria.hashCode();
    }

    public String toString() {
        return "StakingOrderStrategyRequest(criteria=" + this.criteria + ')';
    }

    public StakingOrderStrategyRequest(String criteria) {
        Intrinsics.checkNotNullParameter(criteria, "criteria");
        this.criteria = criteria;
    }

    public final String getCriteria() {
        return this.criteria;
    }

    /* compiled from: StakingOrderStrategyRequest.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final StakingOrderStrategyRequest createFromOrderType(StakingOrderType orderType) {
            Intrinsics.checkNotNullParameter(orderType, "orderType");
            if (orderType == StakingOrderType.DEFAULT) {
                return null;
            }
            String lowerCase = orderType.name().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            return new StakingOrderStrategyRequest(lowerCase);
        }
    }
}
