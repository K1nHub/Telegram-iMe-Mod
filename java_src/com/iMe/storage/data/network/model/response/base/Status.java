package com.iMe.storage.data.network.model.response.base;

import com.iMe.storage.R$string;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Status.kt */
/* loaded from: classes3.dex */
public enum Status {
    OK(R$string.status_ok),
    ERROR(R$string.status_error),
    PENDING(R$string.status_pending),
    CANCELLED(R$string.status_cancelled);
    
    public static final Companion Companion = new Companion(null);
    private final int title;

    Status(int i) {
        this.title = i;
    }

    public final int getTitle() {
        return this.title;
    }

    /* compiled from: Status.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Status map(String value) {
            Status status;
            Intrinsics.checkNotNullParameter(value, "value");
            Status[] values = Status.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    status = null;
                    break;
                }
                status = values[i];
                String name = status.name();
                Locale locale = Locale.ROOT;
                String lowerCase = name.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                String lowerCase2 = value.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                if (Intrinsics.areEqual(lowerCase, lowerCase2)) {
                    break;
                }
                i++;
            }
            return status == null ? Status.OK : status;
        }
    }
}
