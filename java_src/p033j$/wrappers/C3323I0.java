package p033j$.wrappers;

import java.util.Set;
import java.util.stream.Collector;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2955b;
import p033j$.util.function.InterfaceC2978y;
/* renamed from: j$.wrappers.I0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3323I0 {

    /* renamed from: a */
    final /* synthetic */ Collector f1241a;

    private /* synthetic */ C3323I0(Collector collector) {
        this.f1241a = collector;
    }

    /* renamed from: d */
    public static /* synthetic */ C3323I0 m229d(Collector collector) {
        if (collector == null) {
            return null;
        }
        return collector instanceof AbstractC3325J0 ? ((AbstractC3325J0) collector).f1243a : new C3323I0(collector);
    }

    /* renamed from: a */
    public BiConsumer m232a() {
        return C3378q.m125a(this.f1241a.accumulator());
    }

    /* renamed from: b */
    public Set m231b() {
        return this.f1241a.characteristics();
    }

    /* renamed from: c */
    public InterfaceC2955b m230c() {
        return C3386u.m116a(this.f1241a.combiner());
    }

    /* renamed from: e */
    public Function m228e() {
        return C3328L.m207a(this.f1241a.finisher());
    }

    /* renamed from: f */
    public InterfaceC2978y m227f() {
        return C3395y0.m107a(this.f1241a.supplier());
    }
}
