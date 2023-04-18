package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
/* compiled from: CoroutineContext.kt */
/* loaded from: classes4.dex */
final class CoroutineContextKt$hasCopyableElements$1 extends Lambda implements Function2<Boolean, CoroutineContext.Element, Boolean> {
    public static final CoroutineContextKt$hasCopyableElements$1 INSTANCE = new CoroutineContextKt$hasCopyableElements$1();

    CoroutineContextKt$hasCopyableElements$1() {
        super(2);
    }

    public final Boolean invoke(boolean z, CoroutineContext.Element element) {
        return Boolean.valueOf(z || (element instanceof CopyableThreadContextElement));
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool, CoroutineContext.Element element) {
        return invoke(bool.booleanValue(), element);
    }
}
