package com.smedialink.storage.domain.model.crypto.airdrop;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AirdropStep.kt */
/* loaded from: classes3.dex */
public enum AirdropStep {
    INTRO,
    CREATE_WALLET,
    CLAIM;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: AirdropStep.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AirdropStep map(String value) {
            AirdropStep airdropStep;
            Intrinsics.checkNotNullParameter(value, "value");
            AirdropStep[] values = AirdropStep.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    airdropStep = null;
                    break;
                }
                airdropStep = values[i];
                if (Intrinsics.areEqual(airdropStep.name(), value)) {
                    break;
                }
                i++;
            }
            return airdropStep == null ? AirdropStep.INTRO : airdropStep;
        }
    }
}
