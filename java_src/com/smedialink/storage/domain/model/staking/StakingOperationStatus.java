package com.smedialink.storage.domain.model.staking;

import com.smedialink.storage.R$string;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingOperationStatus.kt */
/* loaded from: classes3.dex */
public enum StakingOperationStatus {
    PENDING(R$string.status_pending),
    CONFIRMED(R$string.status_ok),
    FAILED(R$string.status_error);
    
    public static final Companion Companion = new Companion(null);
    private final int titleResId;

    public static final StakingOperationStatus map(String str) {
        return Companion.map(str);
    }

    StakingOperationStatus(int i) {
        this.titleResId = i;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    /* compiled from: StakingOperationStatus.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final StakingOperationStatus map(String type) {
            StakingOperationStatus stakingOperationStatus;
            Intrinsics.checkNotNullParameter(type, "type");
            StakingOperationStatus[] values = StakingOperationStatus.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    stakingOperationStatus = null;
                    break;
                }
                stakingOperationStatus = values[i];
                if (Intrinsics.areEqual(stakingOperationStatus.name(), type)) {
                    break;
                }
                i++;
            }
            return stakingOperationStatus == null ? StakingOperationStatus.PENDING : stakingOperationStatus;
        }
    }
}
