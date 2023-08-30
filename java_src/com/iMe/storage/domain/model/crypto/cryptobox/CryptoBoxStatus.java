package com.iMe.storage.domain.model.crypto.cryptobox;

import com.iMe.storage.R$color;
import com.iMe.storage.R$string;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxStatus.kt */
/* loaded from: classes3.dex */
public enum CryptoBoxStatus {
    PENDING(R$string.cryptobox_status_pending_title, R$string.cryptobox_status_pending_description, R$color.cryptobox_status_pending),
    CREATED(R$string.cryptobox_status_created_title, R$string.cryptobox_status_created_description, R$color.cryptobox_status_created),
    ACTIVE(R$string.cryptobox_status_active_title, R$string.cryptobox_status_active_description, R$color.cryptobox_status_active),
    FINISHED(R$string.cryptobox_status_finished_title, R$string.cryptobox_status_finished_description, R$color.cryptobox_status_finished),
    STOPPED(R$string.cryptobox_status_stopped_title, R$string.cryptobox_status_stopped_description, R$color.cryptobox_status_stopped),
    FAILED(R$string.cryptobox_status_failed_title, R$string.cryptobox_status_failed_description, R$color.cryptobox_status_failed);
    
    public static final Companion Companion = new Companion(null);
    private final int colorResId;
    private final int descriptionResId;
    private final int titleResId;

    CryptoBoxStatus(int i, int i2, int i3) {
        this.titleResId = i;
        this.descriptionResId = i2;
        this.colorResId = i3;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    public final int getDescriptionResId() {
        return this.descriptionResId;
    }

    public final int getColorResId() {
        return this.colorResId;
    }

    /* compiled from: CryptoBoxStatus.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CryptoBoxStatus map(String value) {
            CryptoBoxStatus cryptoBoxStatus;
            Intrinsics.checkNotNullParameter(value, "value");
            CryptoBoxStatus[] values = CryptoBoxStatus.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    cryptoBoxStatus = null;
                    break;
                }
                cryptoBoxStatus = values[i];
                if (Intrinsics.areEqual(cryptoBoxStatus.name(), value)) {
                    break;
                }
                i++;
            }
            return cryptoBoxStatus == null ? CryptoBoxStatus.PENDING : cryptoBoxStatus;
        }
    }
}
