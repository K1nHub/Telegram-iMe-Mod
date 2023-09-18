package com.iMe.storage.domain.model.staking;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingOperationType.kt */
/* loaded from: classes4.dex */
public enum StakingOperationType {
    APPROVAL,
    DEPOSIT,
    WITHDRAWAL,
    CLAIM;
    
    public static final Companion Companion = new Companion(null);

    public static final StakingOperationType map(String str) {
        return Companion.map(str);
    }

    /* compiled from: StakingOperationType.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final StakingOperationType map(String type) {
            StakingOperationType stakingOperationType;
            Intrinsics.checkNotNullParameter(type, "type");
            StakingOperationType[] values = StakingOperationType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    stakingOperationType = null;
                    break;
                }
                stakingOperationType = values[i];
                if (Intrinsics.areEqual(stakingOperationType.name(), type)) {
                    break;
                }
                i++;
            }
            return stakingOperationType == null ? StakingOperationType.APPROVAL : stakingOperationType;
        }
    }
}
