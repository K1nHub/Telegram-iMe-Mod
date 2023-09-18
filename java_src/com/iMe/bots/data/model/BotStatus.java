package com.iMe.bots.data.model;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BotStatus.kt */
/* loaded from: classes4.dex */
public enum BotStatus {
    AVAILABLE,
    PAID,
    UPDATE_AVAILABLE,
    DOWNLOADING,
    ENABLED,
    DISABLED;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: BotStatus.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BotStatus resolve(String name) {
            BotStatus botStatus;
            Intrinsics.checkNotNullParameter(name, "name");
            BotStatus[] values = BotStatus.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    botStatus = null;
                    break;
                }
                botStatus = values[i];
                if (Intrinsics.areEqual(botStatus.name(), name)) {
                    break;
                }
                i++;
            }
            return botStatus == null ? BotStatus.AVAILABLE : botStatus;
        }
    }
}
