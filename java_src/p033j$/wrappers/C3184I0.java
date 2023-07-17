package p033j$.wrappers;

import java.util.Set;
import java.util.stream.Collector;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2839y;
/* renamed from: j$.wrappers.I0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3184I0 {

    /* renamed from: a */
    final /* synthetic */ Collector f1228a;

    private /* synthetic */ C3184I0(Collector collector) {
        this.f1228a = collector;
    }

    /* renamed from: d */
    public static /* synthetic */ C3184I0 m211d(Collector collector) {
        if (collector == null) {
            return null;
        }
        return collector instanceof AbstractC3186J0 ? ((AbstractC3186J0) collector).f1230a : new C3184I0(collector);
    }

    /* renamed from: a */
    public BiConsumer m214a() {
        return C3239q.m107a(this.f1228a.accumulator());
    }

    /* renamed from: b */
    public Set m213b() {
        return this.f1228a.characteristics();
    }

    /* renamed from: c */
    public InterfaceC2816b m212c() {
        return C3247u.m98a(this.f1228a.combiner());
    }

    /* renamed from: e */
    public Function m210e() {
        return C3189L.m189a(this.f1228a.finisher());
    }

    /* renamed from: f */
    public InterfaceC2839y m209f() {
        return C3256y0.m89a(this.f1228a.supplier());
    }
}
