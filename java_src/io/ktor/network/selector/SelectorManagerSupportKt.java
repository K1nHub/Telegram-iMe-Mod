package io.ktor.network.selector;

import java.io.IOException;
/* compiled from: SelectorManagerSupport.kt */
/* loaded from: classes4.dex */
public final class SelectorManagerSupportKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Void selectableIsClosed() {
        throw new IOException("Selectable is already closed");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void selectableIsInvalid(int i, int i2) {
        throw new IllegalStateException(("Selectable is invalid state: " + i + ", " + i2).toString());
    }
}
