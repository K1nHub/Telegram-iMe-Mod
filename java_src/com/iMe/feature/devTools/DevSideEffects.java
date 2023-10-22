package com.iMe.feature.devTools;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: DevSideEffects.kt */
/* loaded from: classes3.dex */
public abstract class DevSideEffects {
    public /* synthetic */ DevSideEffects(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* compiled from: DevSideEffects.kt */
    /* loaded from: classes3.dex */
    public static final class ShowError extends DevSideEffects {
        public static final ShowError INSTANCE = new ShowError();

        private ShowError() {
            super(null);
        }
    }

    private DevSideEffects() {
    }

    /* compiled from: DevSideEffects.kt */
    /* loaded from: classes3.dex */
    public static final class NavigateToChat extends DevSideEffects {
        public static final NavigateToChat INSTANCE = new NavigateToChat();

        private NavigateToChat() {
            super(null);
        }
    }
}
