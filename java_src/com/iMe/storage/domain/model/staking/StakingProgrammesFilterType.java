package com.iMe.storage.domain.model.staking;

import com.iMe.storage.R$string;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: StakingProgrammesFilterType.kt */
/* loaded from: classes3.dex */
public enum StakingProgrammesFilterType {
    RUNNING(R$string.staking_programmes_filter_active),
    FINISHED(R$string.staking_programmes_filter_completed),
    ARCHIVE(R$string.staking_programmes_filter_archive);
    
    public static final Companion Companion = new Companion(null);
    private final int titleResId;

    StakingProgrammesFilterType(int i) {
        this.titleResId = i;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    /* compiled from: StakingProgrammesFilterType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final StakingProgrammesFilterType mapByOrdinal(int i) {
            StakingProgrammesFilterType stakingProgrammesFilterType = (StakingProgrammesFilterType) ArraysKt.getOrNull(StakingProgrammesFilterType.values(), i);
            return stakingProgrammesFilterType == null ? StakingProgrammesFilterType.RUNNING : stakingProgrammesFilterType;
        }
    }
}
