package com.smedialink.storage.data.mapper.crypto;

import com.smedialink.storage.data.network.model.response.crypto.airdrop.CheckAirdropPromotionStartResponse;
import com.smedialink.storage.domain.model.crypto.airdrop.AirdropInfo;
import com.smedialink.storage.domain.model.crypto.airdrop.AirdropStatus;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AirdropMapping.kt */
/* loaded from: classes3.dex */
public final class AirdropMappingKt {

    /* compiled from: AirdropMapping.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AirdropStatus.values().length];
            try {
                iArr[AirdropStatus.READY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AirdropStatus.UNKNOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AirdropStatus.FINISHED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AirdropStatus.NOT_READY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final AirdropInfo mapToDomain(CheckAirdropPromotionStartResponse checkAirdropPromotionStartResponse, String airdropRequestId) {
        Intrinsics.checkNotNullParameter(checkAirdropPromotionStartResponse, "<this>");
        Intrinsics.checkNotNullParameter(airdropRequestId, "airdropRequestId");
        int i = WhenMappings.$EnumSwitchMapping$0[AirdropStatus.Companion.map(checkAirdropPromotionStartResponse.getStatus()).ordinal()];
        if (i != 1) {
            if (i == 2 || i == 3 || i == 4) {
                return AirdropInfo.NotReady.INSTANCE;
            }
            throw new NoWhenBranchMatchedException();
        }
        String rightRequestId = checkAirdropPromotionStartResponse.getRightRequestId();
        if (rightRequestId != null) {
            airdropRequestId = rightRequestId;
        }
        Integer value = checkAirdropPromotionStartResponse.getValue();
        return new AirdropInfo.Ready(airdropRequestId, value != null ? value.intValue() : 0);
    }
}
