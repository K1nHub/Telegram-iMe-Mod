package kotlinx.coroutines.flow;
/* compiled from: Emitters.kt */
/* loaded from: classes4.dex */
final /* synthetic */ class FlowKt__EmittersKt {
    public static final void ensureActive(FlowCollector<?> flowCollector) {
        if (flowCollector instanceof ThrowingCollector) {
            throw ((ThrowingCollector) flowCollector).f1223e;
        }
    }
}
