package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$ObjectRef;
/* compiled from: CoroutineContext.kt */
/* loaded from: classes4.dex */
final class CoroutineContextKt$foldCopies$folded$1 extends Lambda implements Function2<CoroutineContext, CoroutineContext.Element, CoroutineContext> {
    final /* synthetic */ boolean $isNewCoroutine;
    final /* synthetic */ Ref$ObjectRef<CoroutineContext> $leftoverContext;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineContextKt$foldCopies$folded$1(Ref$ObjectRef<CoroutineContext> ref$ObjectRef, boolean z) {
        super(2);
        this.$leftoverContext = ref$ObjectRef;
        this.$isNewCoroutine = z;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [T, kotlin.coroutines.CoroutineContext] */
    @Override // kotlin.jvm.functions.Function2
    public final CoroutineContext invoke(CoroutineContext coroutineContext, CoroutineContext.Element element) {
        if (element instanceof CopyableThreadContextElement) {
            CoroutineContext.Element element2 = this.$leftoverContext.element.get(element.getKey());
            if (element2 == null) {
                CopyableThreadContextElement copyableThreadContextElement = (CopyableThreadContextElement) element;
                if (this.$isNewCoroutine) {
                    copyableThreadContextElement = copyableThreadContextElement.copyForChild();
                }
                return coroutineContext.plus(copyableThreadContextElement);
            }
            Ref$ObjectRef<CoroutineContext> ref$ObjectRef = this.$leftoverContext;
            ref$ObjectRef.element = ref$ObjectRef.element.minusKey(element.getKey());
            return coroutineContext.plus(((CopyableThreadContextElement) element).mergeForChild(element2));
        }
        return coroutineContext.plus(element);
    }
}
