package androidx.navigation;

import java.util.regex.Pattern;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NavDeepLink.kt */
/* loaded from: classes.dex */
public final class NavDeepLink$mimeTypePattern$2 extends Lambda implements Function0<Pattern> {
    final /* synthetic */ NavDeepLink this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavDeepLink$mimeTypePattern$2(NavDeepLink navDeepLink) {
        super(0);
        this.this$0 = navDeepLink;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Pattern invoke() {
        String str;
        str = this.this$0.mimeTypeFinalRegex;
        if (str != null) {
            return Pattern.compile(str);
        }
        return null;
    }
}
