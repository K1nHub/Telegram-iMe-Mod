package org.solovyev.android.checkout;

import java.util.Arrays;
import java.util.List;
/* loaded from: classes4.dex */
public final class ProductTypes {
    public static final List<String> ALL = Arrays.asList("inapp", "subs");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkSupported(String str) {
        ALL.contains(str);
        StringBuilder sb = new StringBuilder();
        sb.append("Unsupported product: ");
        sb.append(str);
    }
}
