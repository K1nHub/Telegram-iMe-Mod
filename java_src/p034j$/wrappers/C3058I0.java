package p034j$.wrappers;

import java.util.Set;
import java.util.stream.Collector;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2690b;
import p034j$.util.function.InterfaceC2713y;
/* renamed from: j$.wrappers.I0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3058I0 {

    /* renamed from: a */
    final /* synthetic */ Collector f1146a;

    private /* synthetic */ C3058I0(Collector collector) {
        this.f1146a = collector;
    }

    /* renamed from: d */
    public static /* synthetic */ C3058I0 m211d(Collector collector) {
        if (collector == null) {
            return null;
        }
        return collector instanceof AbstractC3060J0 ? ((AbstractC3060J0) collector).f1148a : new C3058I0(collector);
    }

    /* renamed from: a */
    public BiConsumer m214a() {
        return C3113q.m107a(this.f1146a.accumulator());
    }

    /* renamed from: b */
    public Set m213b() {
        return this.f1146a.characteristics();
    }

    /* renamed from: c */
    public InterfaceC2690b m212c() {
        return C3121u.m98a(this.f1146a.combiner());
    }

    /* renamed from: e */
    public Function m210e() {
        return C3063L.m189a(this.f1146a.finisher());
    }

    /* renamed from: f */
    public InterfaceC2713y m209f() {
        return C3130y0.m89a(this.f1146a.supplier());
    }
}
