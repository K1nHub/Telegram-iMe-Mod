package p035j$.wrappers;

import java.util.Set;
import java.util.stream.Collector;
import p035j$.util.function.BiConsumer;
import p035j$.util.function.Function;
import p035j$.util.function.InterfaceC2664b;
import p035j$.util.function.InterfaceC2687y;
/* renamed from: j$.wrappers.I0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3032I0 {

    /* renamed from: a */
    final /* synthetic */ Collector f1148a;

    private /* synthetic */ C3032I0(Collector collector) {
        this.f1148a = collector;
    }

    /* renamed from: d */
    public static /* synthetic */ C3032I0 m220d(Collector collector) {
        if (collector == null) {
            return null;
        }
        return collector instanceof AbstractC3034J0 ? ((AbstractC3034J0) collector).f1150a : new C3032I0(collector);
    }

    /* renamed from: a */
    public BiConsumer m223a() {
        return C3087q.m116a(this.f1148a.accumulator());
    }

    /* renamed from: b */
    public Set m222b() {
        return this.f1148a.characteristics();
    }

    /* renamed from: c */
    public InterfaceC2664b m221c() {
        return C3095u.m107a(this.f1148a.combiner());
    }

    /* renamed from: e */
    public Function m219e() {
        return C3037L.m198a(this.f1148a.finisher());
    }

    /* renamed from: f */
    public InterfaceC2687y m218f() {
        return C3104y0.m98a(this.f1148a.supplier());
    }
}
