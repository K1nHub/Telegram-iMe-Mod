package com.iMe.storage.domain.model.wallet.swap;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenApproveStatus.kt */
/* loaded from: classes4.dex */
public enum TokenApproveStatus {
    ALLOWED,
    ERROR,
    IN_PROGRESS,
    NOT_ALLOWED;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: TokenApproveStatus.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TokenApproveStatus map(String code) {
            TokenApproveStatus tokenApproveStatus;
            Intrinsics.checkNotNullParameter(code, "code");
            TokenApproveStatus[] values = TokenApproveStatus.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    tokenApproveStatus = null;
                    break;
                }
                tokenApproveStatus = values[i];
                if (Intrinsics.areEqual(tokenApproveStatus.name(), code)) {
                    break;
                }
                i++;
            }
            return tokenApproveStatus == null ? TokenApproveStatus.NOT_ALLOWED : tokenApproveStatus;
        }
    }
}
